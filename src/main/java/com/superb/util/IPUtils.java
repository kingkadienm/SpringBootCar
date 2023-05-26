package com.superb.util;

import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.lionsoul.ip2region.DataBlock;
import org.lionsoul.ip2region.DbConfig;
import org.lionsoul.ip2region.DbSearcher;
import org.lionsoul.ip2region.Util;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @Author Superb
 * @Date: 2022/9/30 4:48 PM
 */

/**
 * IP城市定位
 *
 * @author
 * @Date 2021/1/1
 */
@Slf4j
public class IPUtils {

    private static final String DB_PATH = "/Users/devTools/JavaCode/workspace/SpringBootCar/ip2region.db";
    private static final String DB_PATH_LINUX = "/superb_application/car_home/ip2region.db";
    private static final String DEFAULT_CITY_NAME = "未知";
    private static final String DEFAULT_CHINA = "中国";

    /**
     * 获取城市信息
     *
     * @param ip        ip
     * @param algorithm 算法
     */
    public static String getIpAddress(String ip, int algorithm) {
        if (!Util.isIpAddress(ip)) {
            return DEFAULT_CITY_NAME;
        }
        if ("127.0.0.1".equals(ip) || StringUtils.startsWith(ip, "192.168")) {
            return "内网IP";
        }

        // 查询算法B-tree, Binary, Memory
        DbSearcher searcher = null;
        try {
            DbConfig config = new DbConfig();
            searcher = new DbSearcher(config, DB_PATH_LINUX);
            Method method;
            switch (algorithm) {
                case DbSearcher.BTREE_ALGORITHM:
                    method = searcher.getClass().getMethod("btreeSearch", String.class);
                    break;
                case DbSearcher.BINARY_ALGORITHM:
                    method = searcher.getClass().getMethod("binarySearch", String.class);
                    break;
                default:
                    method = searcher.getClass().getMethod("memorySearch", String.class);
            }
            DataBlock dataBlock = (DataBlock) method.invoke(searcher, ip);
            List<String> list = Arrays.stream(dataBlock.getRegion().split("\\|")).filter(s -> !"0".equals(s)).collect(Collectors.toList());
            if (list.size() >= 3) {
                return list.get(1) + ' ' + list.get(2);
            }
        } catch (Exception e) {
            log.error("获取城市信息失败：", e);
        } finally {
            try {
                if (searcher != null) {
                    searcher.close();
                }
            } catch (IOException ignored) {
            }
        }
        return DEFAULT_CHINA;
    }

    /**
     * 返回ip地址
     */
    public static String getIpAddr(HttpServletRequest request) {
        String ip = null;
        try {
            ip = request.getHeader("x-forwarded-for");
            if (StringUtils.isBlank(ip) || "unknown".equalsIgnoreCase(ip)) {
                ip = request.getHeader("Proxy-Client-IP");
            }
            if (StringUtils.isBlank(ip) || "unknown".equalsIgnoreCase(ip)) {
                ip = request.getHeader("WL-Proxy-Client-IP");
            }
            if (StringUtils.isBlank(ip) || "unknown".equalsIgnoreCase(ip)) {
                ip = request.getHeader("HTTP_CLIENT_IP");
            }
            if (StringUtils.isBlank(ip) || "unknown".equalsIgnoreCase(ip)) {
                ip = request.getHeader("HTTP_X_FORWARDED_FOR");
            }
            if (StringUtils.isBlank(ip) || "unknown".equalsIgnoreCase(ip)) {
                ip = request.getRemoteAddr();
            }
            if ("0:0:0:0:0:0:0:1".equals(ip)) {
                ip = "127.0.0.1";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        // 使用代理，则获取第一个IP地址
        if(StringUtils.isNotBlank(ip) && ip.indexOf(",") > 0) {
            ip = ip.substring(0, ip.indexOf(","));
        }
        return ip;
    }
}


package com.superb.util;

import com.aliyun.oss.ClientException;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.vod.model.v20170321.GetPlayInfoRequest;
import com.aliyuncs.vod.model.v20170321.GetPlayInfoResponse;
import com.superb.dto.RegisterLogin;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * @author Superb
 * @date 2021/1/13 - 13:25
 * @E_mail superb12580@163.com
 */
public class Utils {

    public static DefaultAcsClient initVodClient(String accessKeyId, String accessKeySecret) throws ClientException {
        String regionId = "cn-shanghai";  // 点播服务接入区域
        DefaultProfile profile = DefaultProfile.getProfile(regionId, accessKeyId, accessKeySecret);
        return new DefaultAcsClient(profile);
    }

    /**
     * 输入视频id返回播放地址
     * @param videoId
     * @return
     */
    public static String getUrlById(String videoId) {
        DefaultAcsClient client = Utils.initVodClient(ConstantProperties.ACCESS_KEY_ID, ConstantProperties.ACCESS_KEY_SECRET);
        GetPlayInfoResponse response;
        try {
            GetPlayInfoRequest request = new GetPlayInfoRequest();
            request.setVideoId(videoId);
            response = client.getAcsResponse(request);
            List<GetPlayInfoResponse.PlayInfo> playInfoList = response.getPlayInfoList();
            //播放地址
            for (GetPlayInfoResponse.PlayInfo playInfo : playInfoList) {
                return playInfo.getPlayURL().substring(0, playInfo.getPlayURL().indexOf('?'));
            }
            //Base信息
//            System.out.print("VideoBase.Title = " + response.getVideoBase().getTitle() + "\n");
        } catch (Exception e) {
            System.out.print("ErrorMessage = " + e.getLocalizedMessage());
        }
        return null;
    }


    private static final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");

    /**
     * 相除保留小数
     * @param v1
     * @param v2
     * @param scale
     * @return
     */
    public static double div(double v1, double v2, int scale) {
        if (scale < 0) {
            throw new IllegalArgumentException("The scale must be a positive integer or zero");
        }
        BigDecimal b1 = new BigDecimal(Double.toString(v1));
        BigDecimal b2 = new BigDecimal(Double.toString(v2));
        return b1.divide(b2, scale, RoundingMode.HALF_UP).doubleValue();
    }
    /**
     * 生成新的文件名
     * @param fileName 源文件名
     * @return
     */
    public static String getFileName(String fileName){
        if (fileName != null) {
            // 把文件按照日期进行分类
            // 获取当前日期
            String datePath = simpleDateFormat.format(new Date());
            String suffix = fileName.substring(fileName.lastIndexOf("."));
            return datePath + '/' + getUUID() + suffix;
        }
        return null;
    }

    public static String getUUID(){
        return UUID.randomUUID().toString().replace("-", "");
    }




    /**
     * 字符串转集合
     * 用于批量删除
     * @param str
     * @return
     */
    public static List<Integer> stringToInteger(String str){
        if (str == null || "".equals(str)){
            return null;
        }
        String[] split = str.split("-");
        List<Integer> list = new ArrayList<>();
        for (String s : split){
            list.add(Integer.parseInt(s));
        }
        return list;
    }

    public static Result codeTest(RegisterLogin login, RegisterLogin registerLogin) {
        if (registerLogin == null || registerLogin.getFlag() != 1) {
            return Result.fail(400);
        }
        if (login == null || login.getCode() == null) {
            return Result.fail(250);
        }
        if (login.getCode().equalsIgnoreCase(registerLogin.getCode())) {
            //标志量
            registerLogin.setFlag(2);
            return Result.success("校验成功", null);
        }
        return Result.fail("验证码错误");
    }
}

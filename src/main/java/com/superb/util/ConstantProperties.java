package com.superb.util;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

/**
 *  读取yml中阿里云常量值
 * @author Superb
 * @date 2021/4/1 - 15:12
 */
@Component
public class ConstantProperties implements InitializingBean {
    @Value("${aliyun.oss.file.endpoint}")
    private String endpoint;
    // 阿里云主账号AccessKey拥有所有API的访问权限，风险很高。强烈建议您创建并使用RAM账号进行API访问或日常运维，请登录RAM控制台创建RAM账号。
    @Value("${aliyun.oss.file.keyid}")
    private String accessKeyId;
    @Value("${aliyun.oss.file.keysecret}")
    private String accessKeySecret;
    @Value("${aliyun.oss.file.bucketname}")
    private String bucketName;

    public static String END_POINT;
    public static String ACCESS_KEY_ID;
    public static String ACCESS_KEY_SECRET;
    public static String BUCKET_NAME;


    @Override
    public void afterPropertiesSet() {
        END_POINT = endpoint;
        ACCESS_KEY_ID = accessKeyId;
        ACCESS_KEY_SECRET = accessKeySecret;
        BUCKET_NAME = bucketName;
    }
}

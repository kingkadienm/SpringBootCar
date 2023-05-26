package com.superb.util;

import cn.hutool.core.util.IdUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.io.File;
import java.util.UUID;

/**
 * 发送邮件工具类
 * @author Superb
 * @date 2020/11/12 - 16:45
 * @E_mail superb12580@163.com
 */
@Component
public class SendMail {
    @Autowired
    private JavaMailSender mailSender;

    private static final String subject = "来自汽车之家";
    private static final String url = "http://superb12580.github.io";
    private static final String imgUrl = "C:\\Users\\HP\\Desktop\\汽车之家\\ProjectCode\\SpringBootCar\\src\\main\\resources\\img\\Logo2.png";
    private static final String fromUrl = "superb12580@163.com";
    private static final String toUrl = "xxxxx@163.com";

    /**
     * 不带附件
     * @param toUrl
     * @return
     * @throws MessagingException
     */
    public String sendMail(String toUrl) throws MessagingException {
        MimeMessage mimeMessage = mailSender.createMimeMessage();
        MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage,true);
        mimeMessageHelper.setSubject(subject);
        //生成随机验证码
        String code = IdUtil.simpleUUID().substring(0, 6).toUpperCase();

        mimeMessageHelper.setText("【汽车之家】欢迎注册<a href=\""+url+"\">汽车之家</a>，您本次的验证码为<b style=\"color:red\">"+code+"</b>，五分钟内有效，感谢使用。",true);
        mimeMessageHelper.setTo(toUrl);
        mimeMessageHelper.setFrom(fromUrl);
        mailSender.send(mimeMessage);
        return code;
    }

    /**
     * 带附件
     * @param toUrl
     * @return
     * @throws MessagingException
     */
    public String sendMailHelper(String toUrl) throws MessagingException {

        MimeMessage mimeMessage = mailSender.createMimeMessage();
        MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage,true);
        mimeMessageHelper.setSubject(subject);

        //上传文件
        mimeMessageHelper.addAttachment("汽车之家",new File(imgUrl));

        //生成随机验证码
        String code = UUID.randomUUID().toString().substring(0,6).toUpperCase();
        mimeMessageHelper.setText("【汽车之家】欢迎注册<a href=\""+url+"\">汽车之家</a>，您本次的验证码为<b style=\"color:red\">"+code+"</b>，五分钟内有效，感谢使用。",true);
        mimeMessageHelper.setTo(toUrl);
        mimeMessageHelper.setFrom(fromUrl);


        mailSender.send(mimeMessage);

        return code;
    }

    /**
     * 系统用户访问提醒
     * @param ipAddr
     * @throws MessagingException
     */
    public void sendMailForIp(String ipAddr, String ipAddress) throws MessagingException {
        MimeMessage mimeMessage = mailSender.createMimeMessage();
        MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage,true);
        mimeMessageHelper.setSubject(subject);

        mimeMessageHelper.setText("【汽车之家】用户访问系统提醒，IP地址：" + ipAddr + "，IP属地：" + ipAddress,true);
        mimeMessageHelper.setTo(toUrl);
        mimeMessageHelper.setFrom(fromUrl);
        mailSender.send(mimeMessage);
    }

    /**
     * 系统后台用户访问提醒
     * @param ipAddr
     * @throws MessagingException
     */
    public void sendMailForIpAdmin(String ipAddr, String ipAddress) throws MessagingException {
        MimeMessage mimeMessage = mailSender.createMimeMessage();
        MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage,true);
        mimeMessageHelper.setSubject(subject);

        mimeMessageHelper.setText("【汽车之家后台管理】用户访问系统提醒，IP地址：" + ipAddr + "，IP属地：" + ipAddress,true);
        mimeMessageHelper.setTo(toUrl);
        mimeMessageHelper.setFrom(fromUrl);
        mailSender.send(mimeMessage);
    }
}

package com.superb.controller;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.crypto.SecureUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.superb.common.MapUtil;
import com.superb.dto.Item;
import com.superb.dto.RegisterLogin;
import com.superb.entity.Message;
import com.superb.entity.User;
import com.superb.service.MessageService;
import com.superb.service.RecordService;
import com.superb.service.UserService;
import com.superb.util.RedisUtils;
import com.superb.util.Result;
import com.superb.util.SendMail;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.mail.MessagingException;

/**
 * 注册
 *
 * @author Superb
 * @date 2020/11/17 - 14:35
 * @E_mail superb12580@163.com
 */
@RestController
@RequestMapping("/register")
public class RegisterController {

    @Autowired
    private RegisterLogin registerLogin;

    @Autowired
    private UserService userService;

    @Autowired
    private SendMail sendMail;

    @Autowired
    private RecordService recordService;

    @Autowired
    private MessageService messageService;

    @Autowired
    private RedisUtils redisUtils;

    /**
     * 传参邮箱
     *
     * @param register
     * @return
     */
    @PostMapping("/email")
    public Result email(@RequestBody RegisterLogin register) {

        //判断前端传参
        if (register == null || register.getEmail() == null) {
            return Result.fail(250);
        }

        User user = userService.getOne(new QueryWrapper<User>().eq("email", register.getEmail()));

        //判断该邮箱是否已注册
        if (user == null) {
            // ==================日志==================
            recordService.xr(register.getEmail(), "", MapUtil.ZCJCYZM);
            return Result.success("验证码已发送，请注意查收", null);
        }
        return Result.fail("该邮箱已注册，请返回登录");
    }

    /**
     * 传参邮箱（Redis）
     *
     * @param register
     * @return
     */
    @PostMapping("/emailRedis")
    public Result emailRedis(@RequestBody RegisterLogin register) {

        //判断前端传参
        if (register == null || register.getEmail() == null) {
            return Result.fail(250);
        }

        User user = userService.getOne(new QueryWrapper<User>().eq("email", register.getEmail()));


        //判断该邮箱是否已注册 验证码是否未失效
        if (user == null) {
            Object count = redisUtils.get(MapUtil.REGISTER_COUNT + register.getEmail());
            if (count != null && Integer.parseInt(count.toString()) >= 3) {
                return Result.fail("今日次数已用尽，明天再来吧");
            }
            long expire = redisUtils.getExpire(MapUtil.REGISTER_CODE + register.getEmail());
            if (expire > 0) {
                return Result.fail("请" + expire + "秒后再试");
            }
            // ==================日志==================
            recordService.xr(register.getEmail(), "", MapUtil.ZCJCYZM);
            return Result.success("验证码已发送，请注意查收", null);
        }
        return Result.fail("该邮箱已注册，请返回登录");
    }

    /**
     * 发送验证码
     *
     * @param
     */
    @PostMapping("/send")
    public void sendEmail(@RequestBody RegisterLogin register) {
        try {
            //发送验证码
            String code = sendMail.sendMail(register.getEmail());
            String email = register.getEmail();
            this.registerLogin.setCode(code);
            this.registerLogin.setEmail(email);
            //设置标志量为1，说明已执行此方法
            this.registerLogin.setFlag(1);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }

    /**
     * 发送验证码（redis缓存验证码）
     *
     * @param
     */
    @PostMapping("/sendRedis")
    public Result sendEmailRedis(@RequestBody RegisterLogin register) {
        try {
            //发送验证码
            String code = sendMail.sendMail(register.getEmail());
            String email = register.getEmail();
            redisUtils.set(MapUtil.REGISTER_CODE + email, code, MapUtil.REGISTER_CODE_YXQ);
            Object count = redisUtils.get(MapUtil.REGISTER_COUNT + register.getEmail());
            if (count != null) {
                redisUtils.set(MapUtil.REGISTER_COUNT + email, Integer.parseInt(count.toString()) + 1, MapUtil.REGISTER_COUNT_SXQ);
            } else {
                redisUtils.set(MapUtil.REGISTER_COUNT + email, 1, MapUtil.REGISTER_COUNT_SXQ);
            }
            //设置标志量为1，说明已执行此方法
            this.registerLogin.setFlag(1);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        return Result.success();
    }

    /**
     * @param register
     * @return
     */
    @PostMapping("/test")
    public Result test(@RequestBody RegisterLogin register) {
        if (this.registerLogin == null || this.registerLogin.getCode() == null || this.registerLogin.getEmail() == null) {
            return Result.fail(400);
        }
        if (register == null || register.getCode() == null || register.getUserName() == null || register.getPassword() == null) {
            return Result.fail(250);
        }
        if (!register.getCode().equalsIgnoreCase(this.registerLogin.getCode())) {
            return Result.fail("验证码错误");
        }
        User user = userService.getOne(new QueryWrapper<User>().eq("user_name", register.getUserName()));
        User admin = userService.getOne(new QueryWrapper<User>().eq("user_id", 1));
        if (user != null || admin.getUserName().equals(register.getUserName()) || admin.getEmail().equals(register.getUserName())) {
            return Result.fail("用户名已存在，请更换");
        }
        user = new User();
        //md5加密
        user.setPassword(SecureUtil.md5(register.getPassword()));
        user.setEmail(this.registerLogin.getEmail());
        user.setUserName(register.getUserName());
        userService.save(user);
        final User user_name = userService.getOne(new QueryWrapper<User>().eq("user_name", register.getUserName()));
        //置0
        this.registerLogin.setFlag(0);
        Item item = new Item();
        BeanUtil.copyProperties(user, item);
        // ==================日志==================
        recordService.xr(user.getEmail(), user.getUserName(), MapUtil.ZCCG);
        // 发送消息
        Message message = new Message();
        message.setMessageTitle(MapUtil.XTTZ);
        message.setThisId(user_name.getUserId());
        message.setMessageText(MapUtil.HYZCQCZJ);
        message.setThatId(MapUtil.GLYID);
        message.setMessageType(MapUtil.XXLX_XT);
        messageService.save(message);
        return Result.success("注册成功，请登录", item);
    }

    /**
     * redis验证码校验
     * @param register
     * @return
     */
    @PostMapping("/testRedis")
    public Result testRedis(@RequestBody RegisterLogin register) {
        if (register == null || StringUtils.isBlank(register.getEmail()) || StringUtils.isBlank(register.getCode()) || StringUtils.isBlank(register.getUserName()) || StringUtils.isBlank(register.getPassword())) {
            return Result.fail(250);
        }
        Object expire = redisUtils.get(MapUtil.REGISTER_CODE + register.getEmail());
        if (expire == null || !register.getCode().equalsIgnoreCase(expire.toString())) {
            return Result.fail("验证码错误");
        }
        User user = userService.getOne(new QueryWrapper<User>().eq("user_name", register.getUserName()));
        User admin = userService.getOne(new QueryWrapper<User>().eq("user_id", 1));
        if (user != null || admin.getUserName().equals(register.getUserName()) || admin.getEmail().equals(register.getUserName())) {
            return Result.fail("用户名已存在，请更换");
        }
        user = new User();
        //md5加密
        user.setPassword(SecureUtil.md5(register.getPassword()));
        user.setEmail(register.getEmail());
        user.setUserName(register.getUserName());
        userService.save(user);
        final User user_name = userService.getOne(new QueryWrapper<User>().eq("user_name", register.getUserName()));
        //置0
        this.registerLogin.setFlag(0);
        Item item = new Item();
        BeanUtil.copyProperties(user, item);
        // ==================日志==================
        recordService.xr(user.getEmail(), user.getUserName(), MapUtil.ZCCG);
        // 发送消息
        Message message = new Message();
        message.setMessageTitle(MapUtil.XTTZ);
        message.setThisId(user_name.getUserId());
        message.setMessageText(MapUtil.HYZCQCZJ);
        message.setThatId(MapUtil.GLYID);
        message.setMessageType(MapUtil.XXLX_XT);
        messageService.save(message);
        return Result.success("注册成功，请登录", item);
    }

//    /**
//     * 传参验证
//     * @param register
//     * @return
//     */
//    @PostMapping("/code")
//    public Result code(@RequestBody RegisterLogin register) {
//        if (this.registerLogin == null || this.registerLogin.getFlag() != 1) {
//            return Result.fail(400);
//        }
//        if (register == null || register.getCode() == null) {
//            return Result.fail(250);
//        }
//
//        if (register.getCode().equalsIgnoreCase(this.registerLogin.getCode())) {
//            //设置标志量为2，说明已执行此方法
//            this.registerLogin.setFlag(2);
//            return Result.success("校验成功", null);
//        }
//        return Result.fail("验证码错误");
//    }
//
//    @PostMapping("/name")
//    public Result name(@RequestBody RegisterLogin register) {
//        if (this.registerLogin == null || this.registerLogin.getFlag() != 2) {
//            return Result.fail(400);
//        }
//        //判断前端传参
//        if (register == null || register.getUserName() == null) {
//            return Result.fail(250);
//        }
//        User user = userService.getOne(new QueryWrapper<User>().eq("user_name", register.getUserName()));
//        if (user == null) {
//            this.registerLogin.setFlag(3);
//            return Result.success("用户名可用", null);
//        }
//        return Result.fail("用户名已存在，请更换");
//    }
//
//    /**
//     * 传参用户名密码、注册成功
//     *
//     * @param register
//     * @return
//     */
//    @PostMapping("/user")
//    public Result user(@RequestBody RegisterLogin register) {
//        if (this.registerLogin == null || this.registerLogin.getFlag() != 3) {
//            return Result.fail(400);
//        }
//        //判断前端传参
//        if (register == null || register.getUserName() == null || register.getPassword() == null) {
//            return Result.fail(250);
//        }
//
//        User user = new User();
//        //md5加密
//        user.setPassword(SecureUtil.md5(register.getPassword()));
//        user.setEmail(this.registerLogin.getEmail());
//        user.setUserName(register.getUserName());
//        boolean b = userService.save(user);
//        if (b) {
//            //置0
//            this.registerLogin.setFlag(0);
//            Item item = new Item();
//            BeanUtil.copyProperties(user, item);
//            return Result.success("注册成功，请登录", item);
//        }
//        return Result.fail(400);
//    }

}

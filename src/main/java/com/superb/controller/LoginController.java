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
import com.superb.util.IPUtils;
import com.superb.util.Result;
import com.superb.util.SendMail;
import com.superb.util.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;


/**
 * 登录
 *
 * @author Superb
 * @date 2020/11/17 - 14:00
 * @E_mail superb12580@163.com
 */
@RestController
@RequestMapping("/login")
public class LoginController {
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

    @PostMapping("/admin")
    public Result admin(@RequestBody RegisterLogin login) {
        User user = userService.getById(MapUtil.GLYID);
        if (user.getDlh().equals(login.getUserName()) && user.getPassword().equals(SecureUtil.md5(login.getPassword()))){
            return Result.success("欢迎：" + user.getUserName(), user);
        }
        return Result.fail("用户名或密码错误，请重试");
    }

    /**
     * 登录验证、传参用户名或邮箱和密码
     *
     * @param login
     * @return
     */
    @PostMapping("/test")
    public Result test(HttpServletRequest request, @RequestBody RegisterLogin login) {

        // 这里同时判断（用户名和邮箱不可能相同，所以查询结果仍唯一）
        User user = userService.getOne(new QueryWrapper<User>().eq("user_name", login.getUserName()).or().eq("email", login.getUserName()).or().eq("dlh", login.getUserName()));
        // 用户不存在
        if (user == null) {
            // ==================日志==================
            String ipAddress = IPUtils.getIpAddr(request);
            recordService.xr(ipAddress, "", MapUtil.YHBCZ);
            return Result.fail(150);
        }
        // 比对密码
        if (user.getPassword().equals(SecureUtil.md5(login.getPassword()))) {
            // 获取信息总条数
            int count = messageService.count(new QueryWrapper<Message>().eq("this_id", user.getUserId()));
            Item item = new Item();
            BeanUtil.copyProperties(user, item);
            item.setSxts(Math.max(count - item.getSxts(), 0));
            // 更新条数
            if (item.getSxts() > 0) {
                User user2 = new User();
                user2.setUserId(item.getUserId());
                user2.setSxts(count);
                userService.updateById(user2);
            }
            // ==================日志==================
            recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.DLCG);
            return Result.success("欢迎：" + user.getUserName(), item);
        }
        // ==================日志==================
        recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.MMCW);
        return Result.fail("密码错误，请重试");
    }

    /**
     * 注销 传id
     *
     * @param
     * @return
     */
    @PostMapping("/layout")
    public Result layout(@RequestBody User user) {
        //判断前端传参
        if (user == null || user.getUserId() == null) {
            return Result.fail(250);
        }
        // ==================日志==================
        recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.ZXCG);
        return Result.success("注销成功", null);
    }


    /****************************      忘记密码      ****************************/
    /**
     * 忘记密码、传参邮箱
     *
     * @param login
     * @return
     */
    @PostMapping("/forget")
    public Result forget(@RequestBody RegisterLogin login) {
        //判断前端传参
        if (login == null || login.getEmail() == null) {
            return Result.fail(250);
        }

        User user = userService.getOne(new QueryWrapper<User>().eq("email", login.getEmail()));
        //判断该邮箱是否存在
        if (user != null) {
            try {
                //发送验证码
                String code = sendMail.sendMail(login.getEmail());
                long userId = user.getUserId();
                this.registerLogin.setCode(code);
                this.registerLogin.setUserId(userId);
                this.registerLogin.setPassword(user.getPassword());
                //标志量
                this.registerLogin.setFlag(1);
                // ==================日志==================
                recordService.xr(login.getEmail(), "", MapUtil.ZCJCYZM);
                return Result.success("验证码已发送，请注意查收", null);
            } catch (MessagingException e) {
                e.printStackTrace();
                return Result.fail("发送失败");
            }
        }
        return Result.fail("该邮箱不存在，请重试");
    }

    /**
     * 比对验证码
     */
    @PostMapping("/code")
    public Result code(@RequestBody RegisterLogin login) {
        return Utils.codeTest(login, this.registerLogin);
    }

    /**
     * 修改密码
     *
     * @param login
     * @return
     */
    @PostMapping("/update")
    public Result update(@RequestBody RegisterLogin login) {
        if (this.registerLogin == null || this.registerLogin.getFlag() != 2) {
            return Result.fail(400);
        }
        //判断前端传参
        if (login == null || login.getPassword() == null) {
            return Result.fail(250);
        }
        if (this.registerLogin.getPassword().equals(SecureUtil.md5(login.getPassword()))) {
            return Result.fail("修改密码不能与之前相同");
        }
        this.registerLogin.setPassword(SecureUtil.md5(login.getPassword()));

        User user = new User();
        user.setUserId(this.registerLogin.getUserId());
        user.setPassword(this.registerLogin.getPassword());

        userService.updateById(user);
        //置0
        this.registerLogin.setFlag(0);
        // ==================日志==================
        recordService.xr(login.getEmail(), "", MapUtil.MMXGCG);
        return Result.success("修改成功，请登录");
    }
}

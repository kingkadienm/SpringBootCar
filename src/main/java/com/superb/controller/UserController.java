package com.superb.controller;


import cn.hutool.core.bean.BeanUtil;
import cn.hutool.crypto.SecureUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.common.MapUtil;
import com.superb.dto.Item;
import com.superb.dto.RegisterLogin;
import com.superb.entity.*;
import com.superb.service.*;
import com.superb.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * <p>
 * 前端控制器
 * </p>
 * <p>
 * 用户
 *
 * @author Superb
 * @since 2020-11-11
 */
@RestController
@RequestMapping("/user")
public class UserController {


    @Autowired
    private RegisterLogin registerLogin;

    @Autowired
    private UserService userService;

    @Autowired
    private SendMail sendMail;

    @Autowired
    private RecordService recordService;


    /**
     * 管理员查询所有用户
     * @param current
     * @param size
     * @return
     */
    @GetMapping("/adminList")
    public Result adminList(@RequestParam(defaultValue = "1", value = "current") Integer current,
                            @RequestParam(defaultValue = "8", value = "size") Integer size) {


        Page<User> page = new Page<>(current, size);
        IPage<User> list = userService.userListAdmin(page);
        return Result.success(list);
    }

    /**
     * 查询所有车家号
     * @param current
     * @param size
     * @return
     */
    @GetMapping("/adminListCjh")
    public Result adminListCjh(@RequestParam(defaultValue = "1", value = "current") Integer current,
                            @RequestParam(defaultValue = "8", value = "size") Integer size) {

        Page<User> page = new Page<>(current, size);
        IPage<User> list = userService.adminListCjh(page, MapUtil.YRZ);
        return Result.success(list);
    }
    @Autowired
    private RecordAdminService recordAdminService;

    /**
     * 添加认证
     * @param user
     * @return
     */
    @PostMapping("/rz")
    public Result rz (@RequestBody User user) {
        user.setSfrz(MapUtil.YRZ);
        // 管理员日志
        recordAdminService.xr("认证用户：" + user.getUserName() + "为车家号");
        userService.updateById(user);
        redisUtils.del(MapUtil.USER_KEY + user.getUserId());
        return Result.success("已认证");
    }

    /**
     * 取消认证
     * @param user
     * @return
     */
    @PostMapping("/qxrz")
    public Result qxrz (@RequestBody User user) {
        user.setSfrz(MapUtil.WRZ);
        // 管理员日志
        recordAdminService.xr("取消车家号：" + user.getUserName());
        userService.updateById(user);
        redisUtils.del(MapUtil.USER_KEY + user.getUserId());
        return Result.success("已取消");
    }


    /**
     * 模糊查询
     * @param text
     * @return
     */
    @GetMapping("/search")
    public Result search(@RequestParam(defaultValue = "", value = "text") String text,
                         @RequestParam(defaultValue = "1", name = "current") Integer current,
                         @RequestParam(defaultValue = "8", name = "size") Integer size){
        Page<User> page = new Page<>(current, size);
        IPage<User> search = userService.search(page, text);
        return Result.success(search);
    }


    /**
     * 模糊查询（管理员）
     */
    @GetMapping("/adminLike")
    public Result adminList(@RequestParam(defaultValue = "0", name = "flag") Integer flag,
                            @RequestParam(defaultValue = "", name = "str") String str,
                            @RequestParam(defaultValue = "1", value = "currentPage") Integer currentPage) {


        Page<User> page = new Page<>(currentPage, MapUtil.sizeB);
        //默认不显示已删除用户
        IPage<User> list = userService.page(page, new QueryWrapper<User>()
                .like("user_id", str).or()
                .like("user_name", str).or()
                .like("email", str).or()
                .like("sign", str).or()
                .like("gender", "男".equals(str) ? 1 : 2).or()
                .like("date_birth", str).or()
                .like("create_time", str).or()
                .like("update_time", str).or()
                .like("grade", str));
        //显示已删除
        if (flag == 1) {
            list = userService.adminLikeDeleted(page, str);
        }
        return Result.success(list);
    }

    /**
     * 修改用户信息（管理员）
     *
     * @param user
     * @return
     */
    @PostMapping("adminPut")
    public Result adminPut(@RequestBody User user) {

        //用户名邮箱已存在
        List<User> users = userService.getUserNotId(user.getUserId());
        for (User us : users) {
            if (us.getUserName().equals(user.getUserName())) {
                return Result.fail("用户名已存在");
            }
            if (us.getEmail().equals(user.getEmail())) {
                return Result.fail("邮箱已存在");
            }
        }

        // 日志
        recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.QCZJGLYXG,MapUtil.GLYID.toString(), MapUtil.QCZJGLY);
        userService.updateById(user);
        redisUtils.del(MapUtil.USER_KEY + user.getUserId());
        return Result.success("修改成功", null);
    }

    /**
     * 禁用用户（管理员）
     *
     * @param item
     * @return
     */
    @PostMapping("adminDelete")
    public Result adminDelete(@RequestBody Item item) {

        userService.removeById(item.getUserId());
        redisUtils.del(MapUtil.USER_KEY + item.getUserId());
        return Result.success("禁用成功");

    }

    /**
     * 批量禁用用户（管理员）
     *
     * @param userIds
     * @return
     */
    @PostMapping("adminDeletes")
    public Result adminDeletes(@RequestBody List<Integer> userIds) {


        userService.removeByIds(userIds);

        return Result.success("禁用成功");

    }

    /**
     * 添加用户（管理员）
     *
     * @param user
     * @return
     */
    @PostMapping("/adminAdd")
    public Result adminAdd(@RequestBody User user) {


        user.setPassword(SecureUtil.md5(user.getPassword()));
        userService.save(user);
        return Result.success("添加成功", null);

    }

    /****************************      以下是用户操作      ****************************/

    @Autowired
    private CollectionService collectionService;

    @Autowired
    private AttentionService attentionService;

    @Autowired
    private EssayService essayService;

    @Autowired
    private ForwardService forwardService;

    @Autowired
    private CommentService commentService;

    @Autowired
    private MessageService messageService;

    @Autowired
    private OssService ossService;

    @Autowired
    private NewsService newsService;

    @Autowired
    private RedisUtils redisUtils;

    /**
     * 访问系统邮箱通知
     * @param request
     * @throws MessagingException
     */
    @GetMapping("/ipToEmail")
    public Result ipToEmail(HttpServletRequest request) throws MessagingException {
        String ipAddr = IPUtils.getIpAddr(request);
        Object obj = redisUtils.get(MapUtil.USER_IP + ipAddr);
        if (obj == null) {
            String ipAddress = IPUtils.getIpAddress(ipAddr, 2);
            sendMail.sendMailForIp(ipAddr, ipAddress);
            // 每八小时更新
            redisUtils.set(MapUtil.USER_IP + ipAddr, ipAddr, MapUtil.USER_SXQ);
            return Result.success("Welcome To Car Home ｜ IP属地：" + ipAddress);
        }
        return Result.fail();
    }

    /**
     * 访问后台邮箱通知
     * @param request
     * @throws MessagingException
     */
    @GetMapping("/ipAdminToEmail")
    public Result ipAdminToEmail(HttpServletRequest request) throws MessagingException {
        String ipAddr = IPUtils.getIpAddr(request);
        Object obj = redisUtils.get(MapUtil.ADMIN_IP + ipAddr);
        if (obj == null) {
            String ipAddress = IPUtils.getIpAddress(ipAddr, 2);
            sendMail.sendMailForIpAdmin(ipAddr, ipAddress);
            // 每八小时更新
            redisUtils.set(MapUtil.ADMIN_IP + ipAddr, ipAddr, MapUtil.USER_SXQ);
            return Result.success("Welcome To Car Home Admin ｜ IP属地：" + ipAddress);
        }
        return Result.fail();
    }

    /**
     * 上传头像的方法
     * @param file
     * @return
     */
    @PostMapping("/upload")
    public Result uploadOssFile(MultipartFile file, User user) {
        final User byId = userService.getById(user.getUserId());
        if (byId.getPhoto() != null && !"".equals(byId.getPhoto())) {
            // 删除原先图片
            ossService.deleteFile(byId.getPhoto());
        }
        String url = ossService.uploadFile(file,MapUtil.USER);
        User user2 = new User();
        user2.setUserId(user.getUserId());
        user2.setPhoto(url);
        userService.updateById(user2);
        // 删除缓存
        redisUtils.del(MapUtil.USER_KEY + user.getUserId());
        // 修改后的信息更新到前端
        Item item = new Item();
        BeanUtil.copyProperties(byId, item);
        item.setPhoto(url);
        // 日志
        recordService.xr(byId.getUserId().toString(), byId.getUserName(), MapUtil.SCTX);
        return Result.success("上传成功", item);
    }

    //显示个人资料
    @GetMapping("/user")
    public Result user(@RequestParam("userId") Long userId) {

        // 保存收藏、关注、粉丝、动态、转发、评论、消息数
        int collectionCount = collectionService.count(new QueryWrapper<Collection>().eq("user_id", userId));
        int attentionCount = attentionService.count(new QueryWrapper<Attention>().eq("this_id", userId));
        int fansCount = attentionService.count(new QueryWrapper<Attention>().eq("that_id", userId));
        int messageCount = messageService.count(new QueryWrapper<Message>().eq("this_id", userId));

        User user;
        Object obj = redisUtils.get(MapUtil.USER_KEY + userId);
        if (obj != null) {
            user = (User) obj;
        } else {
            user = userService.getById(userId);
            redisUtils.set(MapUtil.USER_KEY + userId, user, MapUtil.USER_SXQ);
        }

        Item item = new Item();
        item.setAttentionCount(attentionCount);
        item.setCollectionCount(collectionCount);
        item.setFansCount(fansCount);
        item.setMessageCount(messageCount);
        BeanUtil.copyProperties(user, item);
        return Result.success(item);
    }

    @Autowired
    private VideoService videoService;

    /**
     *
     * @param userId 用户本人id
     * @param thatId 查看用户id
     * @return
     */
    @GetMapping("/item")// 默认0 未登录时使用
    public Result item(@RequestParam(defaultValue = "0L", name = "userId") Long userId, @RequestParam("thatId") Long thatId) {

        // 保存收藏、关注、粉丝、动态、转发、评论、消息数
        int collectionCount = collectionService.count(new QueryWrapper<Collection>().eq("user_id", thatId));
        int attentionCount = attentionService.count(new QueryWrapper<Attention>().eq("this_id", thatId));
        int fansCount = attentionService.count(new QueryWrapper<Attention>().eq("that_id", thatId));
        int essayCount = essayService.count(new QueryWrapper<Essay>().eq("user_id", thatId));
        int forwardCount = forwardService.count(new QueryWrapper<Forward>().eq("user_id", thatId));
        int commentCount = commentService.count(new QueryWrapper<Comment>().eq("user_id", thatId));
        int messageCount = messageService.count(new QueryWrapper<Message>().eq("this_id", thatId));
        int newsCount = newsService.count(new QueryWrapper<News>().eq("user_id", thatId).eq("zt", MapUtil.YFB));
        int videoCount = videoService.count(new QueryWrapper<Video>().eq("user_id", thatId).eq("zt", MapUtil.VIDEO_YFB));

        final Attention one = attentionService.getOne(new QueryWrapper<Attention>().eq("this_id", userId).eq("that_id", thatId));

        User user;
        Object obj = redisUtils.get(MapUtil.USER_KEY + thatId);
        if (obj != null) {
            user = (User) obj;
        } else {
            user = userService.getById(thatId);
            redisUtils.set(MapUtil.USER_KEY + thatId, user, MapUtil.USER_SXQ);
        }

        Item item = new Item();
        // 是否已关注
        item.setFlagAttention(one == null ? 0 : 1);
        item.setAttentionCount(attentionCount);
        item.setCollectionCount(collectionCount);
        item.setFansCount(fansCount);
        item.setEssayCount(essayCount);
        item.setForwardCount(forwardCount);
        item.setCommentCount(commentCount);
        item.setMessageCount(messageCount);
        item.setNewsCount(newsCount);
        item.setVideoCount(videoCount);
        BeanUtil.copyProperties(user, item);
        return Result.success(item);
    }

    private Integer count = 0;

    @GetMapping("/listCjh")
    public Result listCjh () {
        // 总条数 / 每页显示 = 完整页数  i!=0
        int i = userService.count(new QueryWrapper<User>().eq("sfrz", MapUtil.YRZ)) / MapUtil.sizeXS;
        Page<User> page = new Page<>((count++ % i) + 1, MapUtil.sizeXS);
        return Result.success(userService.page(page, new QueryWrapper<User>().eq("sfrz", MapUtil.YRZ)).getRecords());
    }



    /**
     * 签到
     * @param item
     * @return
     */
    @PostMapping("/grade")
    public Result grade(@RequestBody Item item) {

        User user = userService.getById(item.getUserId());
        user.setGrade(user.getGrade() + 10);
        // 签到标志
        user.setGraded(MapUtil.YQD);
        userService.updateById(user);
        // 删除缓存
        redisUtils.del(MapUtil.USER_KEY + item.getUserId());
        // 日志
        recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.ZXQD);
        return Result.success("签到成功，+10积分");
    }

    /**
     * 编辑资料(要有id)
     *
     * @param item
     * @return
     */
    @PostMapping("/put")
    public Result put(@RequestBody Item item) {


        //用户名已存在
        List<User> users = userService.getUserNotId(item.getUserId());
        for (User us : users) {
            if (us.getUserName().equals(item.getUserName())) {
                return Result.fail("用户名已存在");
            }
        }


        User user = new User();
        BeanUtil.copyProperties(item, user);
        userService.updateById(user);
        redisUtils.del(MapUtil.USER_KEY + item.getUserId());
        // 修改后的信息更新到前端
        final User byId = userService.getById(user.getUserId());
        Item item2 = new Item();
        BeanUtil.copyProperties(byId, item2);
        // 日志
        recordService.xr(byId.getUserId().toString(), byId.getUserName(), MapUtil.BJXX);
        return Result.success("修改成功", item2);
    }


    /**
     * 修改密码
     * 传入id、旧密码、新密码
     *
     * @param login
     * @return
     */
    @PostMapping("/password")
    public Result password(@RequestBody RegisterLogin login) {

        User user = userService.getById(login.getUserId());
        if (!user.getPassword().equals(SecureUtil.md5(login.getPassword()))) {
            return Result.fail("密码错误，请重试");
        }
        if (login.getPassword().equals(login.getNewPassword())) {
            return Result.fail("新密码与原密码不能相同");
        }
        user.setPassword(SecureUtil.md5(login.getNewPassword()));
        userService.updateById(user);
        redisUtils.del(MapUtil.USER_KEY + login.getUserId());
        // 日志
        recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.XGMM);
        return Result.success("修改成功");

    }


    /****************************      邮箱换绑      ****************************/

    /**
     * 旧邮箱(传id)
     * 保证id和邮箱匹配
     *
     * @param login
     * @return
     */
    @PostMapping("/oldTest")
    public Result oldTest(@RequestBody RegisterLogin login) {
        //判断前端传参
        if (login == null || login.getUserId() == null || login.getEmail() == null) {
            return Result.fail(250);
        }


        try {
            //发送验证码
            String code = sendMail.sendMail(login.getEmail());
            String email = login.getEmail();
            this.registerLogin.setCode(code);
            this.registerLogin.setEmail(email);
            this.registerLogin.setUserId(login.getUserId());
            //标志量
            this.registerLogin.setFlag(1);
            return Result.success("验证码已发送，请注意查收", null);
        } catch (MessagingException e) {
            e.printStackTrace();
            return Result.fail("发送失败");
        }
    }


    /**
     * 老验证码
     *
     * @param login
     * @return
     */
    @PostMapping("/oldCode")
    public Result oldCode(@RequestBody RegisterLogin login) {
        return Utils.codeTest(login, this.registerLogin);
    }


    /**
     * 新邮箱
     *
     * @param login
     * @return
     */
    @PostMapping("/newTest")
    public Result newTest(@RequestBody RegisterLogin login) {
        if (this.registerLogin == null || this.registerLogin.getFlag() != 2) {
            return Result.fail(400);
        }
        //判断前端传参
        if (login == null || login.getEmail() == null) {
            return Result.fail(250);
        }

        User user = userService.getOne(new QueryWrapper<User>().eq("email", login.getEmail()));
        //判断该邮箱是否已注册
        if (user == null) {
            try {
                //发送验证码
                String code = sendMail.sendMail(login.getEmail());
                String email = login.getEmail();
                this.registerLogin.setCode(code);
                this.registerLogin.setEmail(email);
                //标志量
                this.registerLogin.setFlag(3);
                return Result.success("验证码已发送至新邮箱，请注意查收", null);
            } catch (MessagingException e) {
                e.printStackTrace();
                return Result.fail("发送失败");
            }
        }
        return Result.fail("该邮箱已绑定，请重试");
    }

    /**
     * 新验证码并换绑
     *
     * @param login
     * @return
     */
    @PostMapping("/newCode")
    public Result newCode(@RequestBody RegisterLogin login) {
        if (this.registerLogin == null || this.registerLogin.getFlag() != 3) {
            return Result.fail(400);
        }
        if (login == null || login.getCode() == null) {
            return Result.fail(250);
        }
        if (login.getCode().equalsIgnoreCase(this.registerLogin.getCode())) {

            User user = new User();
            user.setEmail(this.registerLogin.getEmail());
            user.setUserId(this.registerLogin.getUserId());
            boolean b = userService.updateById(user);
            if (!b) {
                return Result.fail("修改失败，请稍后再试");
            }
            //置0
            this.registerLogin.setFlag(0);
            //换绑邮箱，把新邮箱传至前端，更新前端session
            return Result.success("验证成功，邮箱已换绑", user.getEmail());
        }
        return Result.fail("验证码错误");
    }
}

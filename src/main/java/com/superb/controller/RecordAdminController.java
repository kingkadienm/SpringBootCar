package com.superb.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.common.MapUtil;
import com.superb.entity.News;
import com.superb.entity.RecordAdmin;
import com.superb.entity.User;
import com.superb.entity.Video;
import com.superb.service.*;
import com.superb.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Superb
 * @since 2021-04-14
 */
@RestController
@RequestMapping("/record-admin")
public class RecordAdminController {

    @Autowired
    private RecordAdminService recordAdminService;

    /**
     * 工作日志
     * @param current
     * @param size
     * @return
     */
    @GetMapping("/list")
    public Result list (@RequestParam(defaultValue = "1", value = "current") Integer current,
                        @RequestParam(defaultValue = "6", name = "size") Integer size){
        Page<RecordAdmin> page = new Page<>(current, size);
        IPage<RecordAdmin> recordAdmin = recordAdminService.page(page, new QueryWrapper<RecordAdmin>().orderByDesc("create_time"));
        return Result.success(recordAdmin);
    }

    @Autowired
    private EssayService essayService;

    @Autowired
    private UserService userService;

    @Autowired
    private LabelService labelService;

    @Autowired
    private NewsService newsService;

    @Autowired
    private ForwardService forwardService;

    @Autowired
    private CommentService commentService;

    @Autowired
    private StyleService styleService;

    @Autowired
    private VideoService videoService;

    /**
     * 后台首页填充
     * @return
     */
    @GetMapping("/home")
    public Result home (){
        Map<String, Object> map = new HashMap<>();

        int yfbdt = essayService.adminCount(MapUtil.WSC);
        int yscdt = essayService.adminCount(MapUtil.YSC);
        // 已发布动态
        map.put("yfbdt", yfbdt);
        // 动态合格率
        map.put("dthgl", (int)((yfbdt /  (double)(yfbdt + yscdt)) * 100));

        int zcyh = userService.count();
        int cjh = userService.count(new QueryWrapper<User>().eq("sfrz", MapUtil.YRZ));
        // 注册用户
        map.put("zcyh", zcyh);
        int cjhzb = (int)((cjh /  (double)zcyh) * 100);
        // 车家号占比
        map.put("cjhzb", cjhzb);
        // 普通用户占比
        map.put("ptyhzb", 100 - cjhzb);


        // 已上线标签
        map.put("ysxbq", labelService.count());

        int yfbwz = newsService.count(new QueryWrapper<News>().eq("zt", MapUtil.YFB));
        int ybh = newsService.count(new QueryWrapper<News>().eq("zt", MapUtil.YBH));
        // 已发布文章
        map.put("yfbwz", yfbwz);
        // 文章审核通过率
        map.put("wzshtgl", (int)((yfbwz /  (double)(ybh + yfbwz)) * 100));

        // 待审核
        map.put("dsh", newsService.count(new QueryWrapper<News>().eq("zt", MapUtil.DSH)));


        int yfbzf = forwardService.adminCount(MapUtil.WSC);
        int ysczf = forwardService.adminCount(MapUtil.YSC);
        // 转发合格率
        map.put("zfhgl", (int)((yfbzf /  (double)(yfbzf + ysczf)) * 100));
        // 转发量
        map.put("zfl", yfbzf);


        int yfbpl = commentService.adminCount(MapUtil.WSC);
        int yscpl = commentService.adminCount(MapUtil.YSC);
        // 评论合格率
        map.put("plhgl", (int)((yfbpl /  (double)(yfbpl + yscpl)) * 100));
        // 评论数
        map.put("pls", yfbpl);

        // 已录入车型
        map.put("ylrcx", styleService.count());

        // 视频集
        map.put("spj", videoService.count(new QueryWrapper<Video>().eq("zt", MapUtil.VIDEO_YFB)));

        return Result.success(map);
    }

    @PostMapping("/deleteAdmin")
    public Result deleteAdmin(@RequestBody RecordAdmin recordAdmin) {
        recordAdminService.removeById(recordAdmin.getId());
        return Result.success("已删除");
    }

}

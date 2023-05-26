package com.superb.controller;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.common.MapUtil;
import com.superb.entity.Comment;
import com.superb.entity.Essay;
import com.superb.entity.Message;
import com.superb.entity.User;
import com.superb.service.*;
import com.superb.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
@RestController
@RequestMapping("/comment")
public class CommentController {

    @Autowired
    private CommentService commentService;

    @Autowired
    private RecordService recordService;

    @Autowired
    private EssayService essayService;

    @Autowired
    private UserService userService;

    @Autowired
    private MessageService messageService;

    /**
     * 返回一个用户的所有评论
     * 连接动态表
     * @param userId
     * @param current
     * @param size
     * @return
     */
    @GetMapping("item")
    public Result item(@RequestParam("userId") Long userId,
                       @RequestParam(defaultValue = "1",value = "current") Integer current,
                       @RequestParam(defaultValue = "5",name = "size") Integer size){

        Page<Map<String, Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> mapIPage = commentService.superbByUserId(page, userId);
        return Result.success(mapIPage);
    }

    /**
     * 查询所有未删除评论 附带essay
     * @param current
     * @param size
     * @return
     */
    @GetMapping("commentAdmin")
    public Result commentAdmin(@RequestParam(defaultValue = "1",value = "current") Integer current,
                       @RequestParam(defaultValue = "5",name = "size") Integer size){

        Page<Map<String, Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> mapIPage = commentService.superbListAdmin(page, MapUtil.WSC);
        return Result.success(mapIPage);
    }

    /**
     * 查询所有已删除删除评论 附带essay
     * @param current
     * @param size
     * @return
     */
    @GetMapping("commentAdminDelete")
    public Result commentAdminDelete(@RequestParam(defaultValue = "1",value = "current") Integer current,
                       @RequestParam(defaultValue = "5",name = "size") Integer size){

        Page<Map<String, Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> mapIPage = commentService.superbListAdmin(page, MapUtil.YSC);
        return Result.success(mapIPage);
    }

    /**
     * 返回一条动态的所有评论
     * 连接用户表
     * @param essayId
     * @param current
     * @param size
     * @return
     */
    @GetMapping("itemByEssayId")
    public Result itemByEssayId(@RequestParam("essayId") Long essayId,
                       @RequestParam(defaultValue = "1",value = "current") Integer current,
                       @RequestParam(defaultValue = "10",name = "size") Integer size){

        Page<Map<String, Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> mapIPage = commentService.superbCommentById(page, essayId);
        return Result.success(mapIPage);
    }

    /**
     * 添加评论
     * @param comment
     * @return
     */
    @PostMapping("/add")
    public Result add(@RequestBody Comment comment){

        // 相关动态
        Essay essay = essayService.getById(comment.getEssayId());
        // 评论用户
        User user = userService.getById(comment.getUserId());
        // ==================日志==================
        recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.PL + "：" + comment.getCommentText(), essay.getEssayId().toString(), essay.getEssayTitle());
        // 消息
        Message message = new Message();
        message.setMessageTitle(MapUtil.DTTZ);
        message.setMessageText(MapUtil.YHPLLNDDT);
        message.setThatId(MapUtil.GLYID);
        message.setUserId(user.getUserId());
        message.setThisId(essay.getUserId());
        message.setEssayId(essay.getEssayId());
        message.setMessageType(MapUtil.XXLX_DT);
        messageService.save(message);
        // 评论
        commentService.save(comment);
        return Result.success("已评论");
    }

    /**
     * 删除评论
     * @param comment
     * @return
     */
    @PostMapping("/delete")
    public Result delete(@RequestBody Comment comment){

        Essay essay = essayService.getById(comment.getEssayId());
        User user = userService.getById(comment.getUserId());
        // ==================日志==================
        recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.SCPL + "：" + comment.getCommentText(), essay.getEssayId().toString(), essay.getEssayTitle());
        commentService.removeById(comment.getId());
        return Result.success("评论已删除");
    }
    @Autowired
    private RecordAdminService recordAdminService;

    /**
     * 管理员  删除评论
     * @param comment
     * @return
     */
    @PostMapping("/deleteAdmin")
    public Result deleteAdmin(@RequestBody Comment comment){
        // 管理员日志
        recordAdminService.xr("删除评论：" + comment.getCommentText());
        commentService.removeById(comment.getId());
        return Result.success("已删除");
    }

    /**
     * 重新发布
     *  管理员
     * @param comment
     * @retur
     */
    @PostMapping("/fbAdmin")
    public Result fbAdmin(@RequestBody Comment comment) {
        // 管理员日志
        recordAdminService.xr("重新上线评论：" + comment.getCommentText());
        commentService.fbAdmin(MapUtil.WSC, comment.getId());
        return Result.success("已发布");
    }

}

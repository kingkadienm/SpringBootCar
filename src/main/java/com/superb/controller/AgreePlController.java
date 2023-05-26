package com.superb.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.superb.common.MapUtil;
import com.superb.entity.*;
import com.superb.service.*;
import com.superb.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Superb
 * @since 2021-03-30
 */
@RestController
@RequestMapping("/agree-pl")
public class AgreePlController {

    @Autowired
    private AgreePlService agreePlService;

    @Autowired
    private RecordService recordService;

    @Autowired
    private UserService userService;

    @Autowired
    private CommentService commentService;

    @Autowired
    private MessageService messageService;

    /**
     * 点赞或取消
     * @param agreePl
     * @return
     */
    @PostMapping("/addDelete")
    public Result addDelete(@RequestBody AgreePl agreePl){



        AgreePl agreePl2 = agreePlService.getOne(new QueryWrapper<AgreePl>().eq("comment_id", agreePl.getCommentId()).eq("user_id", agreePl.getUserId()));

        // 点赞评论的用户
        User user = userService.getById(agreePl.getUserId());
        // 评论
        Comment comment = commentService.getById(agreePl.getCommentId());
        //点赞
        if (agreePl2 == null) {
            // ==================日志==================
            recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.DZPL, comment.getId().toString(), comment.getCommentText());
            // 消息
            Message message = new Message();
            message.setMessageTitle(MapUtil.DTTZ);
            message.setMessageText(MapUtil.YHDZLNDPL);
            message.setThatId(MapUtil.GLYID);
            message.setUserId(user.getUserId());
            message.setThisId(comment.getUserId());
            message.setCommentId(comment.getId());
            message.setMessageType(MapUtil.XXLX_PL);
            messageService.save(message);
            // 点赞评论
            agreePlService.save(agreePl);
            return Result.success("已点赞");
        }
        // ==================日志==================
        recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.QXDZ, comment.getId().toString(), comment.getCommentText());
        //取消赞
        agreePlService.remove(new QueryWrapper<AgreePl>().eq("comment_id", agreePl.getCommentId()).eq("user_id", agreePl.getUserId()));
        return Result.success("已取消赞");
    }

}

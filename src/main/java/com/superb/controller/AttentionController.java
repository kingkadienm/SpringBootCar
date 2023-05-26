package com.superb.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.common.MapUtil;
import com.superb.dto.AttentionDto;
import com.superb.entity.Attention;
import com.superb.entity.Message;
import com.superb.entity.User;
import com.superb.service.AttentionService;
import com.superb.service.MessageService;
import com.superb.service.RecordService;
import com.superb.service.UserService;
import com.superb.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
@RestController
@RequestMapping("/attention")
public class AttentionController {
    @Autowired
    private AttentionService attentionService;

    @Autowired
    private RecordService recordService;

    @Autowired
    private UserService userService;

    @Autowired
    private MessageService messageService;

    /**
     * 查看我的关注
     * 连接用户表 预览用户id name photo
     * @param current
     * @param size
     * @param thisId
     * @return
     */
    @GetMapping("/item")
    public Result item(@RequestParam(defaultValue = "1", name = "current") Integer current,
                       @RequestParam(defaultValue = "12", name = "size") Integer size,
                       @RequestParam("thisId") Long thisId) {

        Page<AttentionDto> page = new Page<>(current, size);
        IPage<AttentionDto> attentionDtoIPage = attentionService.superbAttentionById(page, thisId);

        return Result.success(attentionDtoIPage);

    }

    /**
     * 查看我的粉丝
     * 连接用户表 预览用户id name photo
     * @param current
     * @param size
     * @param thatId
     * @return
     */
    @GetMapping("/itemFans")
    public Result itemFans(@RequestParam(defaultValue = "1", name = "current") Integer current,
                           @RequestParam(defaultValue = "12", name = "size") Integer size,
                           @RequestParam("thatId") Long thatId) {


        Page<AttentionDto> page = new Page<>(current, size);
        IPage<AttentionDto> attentionDtoIPage = attentionService.superbFansById(page, thatId);

        return Result.success(attentionDtoIPage);
    }

    /**
     * 关注用户 取消关注
     *
     * @param attention
     * @return
     */
    @PostMapping("/addDelete")
    public Result addDelete(@RequestBody Attention attention) {
        if (attention.getThatId().equals(attention.getThisId())) {
            return Result.fail("不可以关注自己");
        }
        Attention attention2 = attentionService.getOne(new QueryWrapper<Attention>().eq("this_id", attention.getThisId()).eq("that_id", attention.getThatId()));
        User user = userService.getById(attention.getThisId());
        // 查询被关注用户信息
        User user2 = userService.getById(attention.getThatId());
        if (attention2 == null) {
            // ==================日志==================
            recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.GZ, user2.getUserId().toString(), user2.getUserName());
            // 消息
            Message message = new Message();
            message.setMessageTitle(MapUtil.GZTZ);
            message.setMessageText(MapUtil.YHGZLN);
            message.setThatId(MapUtil.GLYID);
            message.setUserId(user.getUserId());
            message.setThisId(user2.getUserId());
            message.setMessageType(MapUtil.XXLX_DT);
            messageService.save(message);
            // 关注
            attentionService.save(attention);
            return Result.success("关注成功");
        }
        // ==================日志==================
        recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.QXGZ, user2.getUserId().toString(), user2.getUserName());
        // 取消关注
        attentionService.remove(new QueryWrapper<Attention>().eq("this_id", attention.getThisId()).eq("that_id", attention.getThatId()));
        return Result.success("已取消关注");
    }
}

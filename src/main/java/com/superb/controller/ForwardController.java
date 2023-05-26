package com.superb.controller;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.common.MapUtil;
import com.superb.entity.Essay;
import com.superb.entity.Forward;
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
@RequestMapping("/forward")
public class ForwardController {
    @Autowired
    private ForwardService forwardService;

    @Autowired
    private RecordService recordService;

    @Autowired
    private EssayService essayService;

    @Autowired
    private UserService userService;

    @Autowired
    private MessageService messageService;

    /**
     * 显示所有未删除转发
     * @param current
     * @param size
     * @return
     */
    @GetMapping("/list")
    public Result list(@RequestParam(defaultValue = "1",value = "current") Integer current,
                       @RequestParam(defaultValue = "5",name = "size") Integer size){
        Page<Map<String, Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> forwardDtoIPage = forwardService.superbAllForward(page, MapUtil.WSC);
        return Result.success(forwardDtoIPage);
    }

    /**
     * 显示所有已删除转发
     * @param current
     * @param size
     * @return
     */
    @GetMapping("/listAdmin")
    public Result listAdmin(@RequestParam(defaultValue = "1",value = "current") Integer current,
                       @RequestParam(defaultValue = "5",name = "size") Integer size){
        Page<Map<String, Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> forwardDtoIPage = forwardService.superbAllForward(page, MapUtil.YSC);
        return Result.success(forwardDtoIPage);
    }

    /**
     * 转发动态
     * @param forward
     * @return
     */
    @PostMapping("/add")
    public Result add(@RequestBody Forward forward){

        // 相关动态
        Essay essay = essayService.getById(forward.getEssayId());
        // 转发用户
        User user = userService.getById(forward.getUserId());
        // ==================日志==================
        recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.ZFDT, essay.getEssayId().toString(), essay.getEssayTitle());
        // 消息
        Message message = new Message();
        message.setMessageTitle(MapUtil.DTTZ);
        message.setMessageText(MapUtil.YHZFLNDDT);
        message.setThatId(MapUtil.GLYID);
        message.setUserId(user.getUserId());
        message.setThisId(essay.getUserId());
        message.setEssayId(essay.getEssayId());
        message.setMessageType(MapUtil.XXLX_DT);
        messageService.save(message);
        // 转发
        forwardService.save(forward);
        return Result.success("转发成功");

    }

    /**
     * 查看个人转发
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
        IPage<Map<String, Object>> forwardDtoIPage = forwardService.superbByUserId(page,userId);
        return Result.success(forwardDtoIPage);
    }

    /**
     * 删除转发
     * @param forward
     * @return
     */
    @PostMapping("/delete")
    public Result delete(@RequestBody Forward forward){

        Essay essay = essayService.getById(forward.getEssayId());
        User user = userService.getById(forward.getUserId());
        // ==================日志==================
        recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.SCZF, essay.getEssayId().toString(), essay.getEssayTitle());
        // 删除
        forwardService.removeById(forward.getId());
        return Result.success("删除成功");
    }

    @Autowired
    private RecordAdminService recordAdminService;

    /**
     * 删除转发 管理员
     * @param forward
     * @return
     */
    @PostMapping("/deleteAdmin")
    public Result deleteAdmin(@RequestBody Forward forward){
        // 管理员日志
        recordAdminService.xr("删除转发：" + forward.getForwardTitle());
        // 删除
        forwardService.removeById(forward.getId());
        return Result.success("已删除");
    }

    /**
     * 重新发布
     *  管理员
     * @param forward
     * @retur
     */
    @PostMapping("/fbAdmin")
    public Result fbAdmin(@RequestBody Forward forward) {
        // 管理员日志
        recordAdminService.xr("重新上线转发：" + forward.getForwardTitle());
        forwardService.fbAdmin(MapUtil.WSC, forward.getId());
        return Result.success("已发布");
    }
}

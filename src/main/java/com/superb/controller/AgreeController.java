package com.superb.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.superb.common.MapUtil;
import com.superb.entity.Agree;
import com.superb.entity.Essay;
import com.superb.entity.Message;
import com.superb.entity.User;
import com.superb.service.*;
import com.superb.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.List;
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
@RequestMapping("/agree")
public class AgreeController {
    @Autowired
    private AgreeService agreeService;

    @Autowired
    private RecordService recordService;

    @Autowired
    private EssayService essayService;

    @Autowired
    private UserService userService;

    @Autowired
    private MessageService messageService;

    /**
     * 返回一条动态的所有赞
     * 连接用户表，预览用户id name （photo） 即可
     * @param essayId
     * @return
     */
    @GetMapping("/item")
    public Result item(@RequestParam("essayId") Long essayId){

        List<Map<String, Object>> agreeMap = agreeService.superbAgreeById(essayId);
        return Result.success(agreeMap);
    }

    /**
     * 点赞或取消
     * @param agree
     * @return
     */
    @PostMapping("/addDelete")
    public Result addDelete(@RequestBody Agree agree){


        Agree agree2 = agreeService.getOne(new QueryWrapper<Agree>().eq("essay_id", agree.getEssayId()).eq("user_id", agree.getUserId()));
        // 根据id查出动态标题
        Essay essay = essayService.getById(agree.getEssayId());
        // 查出点赞用户
        User user = userService.getById(agree.getUserId());
        //点赞
        if (agree2 == null) {
            // ==================日志==================
            recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.DZDT, essay.getEssayId().toString(), essay.getEssayTitle());
            // 消息
            Message message = new Message();
            message.setMessageTitle(MapUtil.DTTZ);
            message.setMessageText(MapUtil.YHDZLNDDT);
            message.setThatId(MapUtil.GLYID);
            message.setUserId(user.getUserId());
            message.setThisId(essay.getUserId());
            message.setEssayId(essay.getEssayId());
            message.setMessageType(MapUtil.XXLX_DT);
            messageService.save(message);
            // 点赞
            agreeService.save(agree);
            return Result.success("已点赞");
        }
        // ==================日志==================
        recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.QXDZ, essay.getEssayId().toString(), essay.getEssayTitle());
        //取消赞
        agreeService.remove(new QueryWrapper<Agree>().eq("essay_id", agree.getEssayId()).eq("user_id", agree.getUserId()));
        return Result.success("已取消赞");
    }

}

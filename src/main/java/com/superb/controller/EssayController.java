package com.superb.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.common.MapUtil;
import com.superb.dto.EssayDto;
import com.superb.entity.Essay;
import com.superb.entity.User;
import com.superb.service.*;
import com.superb.util.Result;
import com.superb.util.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
@RestController
@RequestMapping("/essay")
public class EssayController {
    @Autowired
    private EssayService essayService;

    @Autowired
    private RecordService recordService;

    @Autowired
    private UserService userService;


    @Autowired
    private MessageService messageService;

    /**
     * 显示所有未删除动态
     *
     * @param current
     * @param size
     * @return
     */
    @GetMapping("/list")
    public Result list(@RequestParam(defaultValue = "1", value = "current") Integer current,
                       @RequestParam(defaultValue = "5", name = "size") Integer size) {
        Page<Map<String, Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> essayDtoIPage = essayService.superbAllEssay(page, MapUtil.WSC);
        return Result.success(essayDtoIPage);
    }

    /**
     * 显示所有已删除动态
     *
     * @param current
     * @param size
     * @return
     */
    @GetMapping("/listAdmin")
    public Result listAdmin(@RequestParam(defaultValue = "1", value = "current") Integer current,
                       @RequestParam(defaultValue = "5", name = "size") Integer size) {
        Page<Map<String, Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> essayDtoIPage = essayService.superbAllEssay(page, MapUtil.YSC);
        return Result.success(essayDtoIPage);
    }


    /**
     * 显示个人动态
     *
     * @param userId
     * @param current
     * @param size
     * @return
     */
    @GetMapping("/user")
    public Result item(@RequestParam("userId") Long userId,
                       @RequestParam(defaultValue = "1", name = "current") Integer current,
                       @RequestParam(defaultValue = "5", name = "size") Integer size) {

        Page<Map<String, Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> essayDtoIPage = essayService.superbEssayById(page, userId);
        return Result.success(essayDtoIPage);
    }

    /**
     * 显示一条动态  详细
     *
     * @param essayId
     * @return
     */
    @GetMapping("/item")
    public Result item(@RequestParam("essayId") Long essayId) {
        EssayDto essayDto = essayService.superbByEssayId(essayId);
        return Result.success(essayDto);
    }

    /**
     * 发表动态
     *
     * @param map
     * @return
     */
    @PostMapping("/add")
    public Result add(@RequestBody Map<String, Object> map) {
        Essay essay = new Essay();
        essay.setUserId(((Integer) map.get("userId")).longValue());
        essay.setEssayTitle(map.get("essayTitle").toString());
        essay.setEssayText(map.get("essayText").toString());
        StringBuilder sb = new StringBuilder();
        final List<Integer> list = (List<Integer>) map.get("essayLabel");
        for (Integer in : list) {
            sb.append(in.toString()).append(',');
        }
        sb.deleteCharAt(sb.length() - 1);
        essay.setEssayLabel(sb.toString());
        User user = userService.getById(essay.getUserId());
        // 保存 增加唯一标识字段 用于插入后立即查出
        String uuid = Utils.getUUID();
        essay.setWybs(uuid);
        essayService.save(essay);
        Essay wybs = essayService.getOne(new QueryWrapper<Essay>().eq("wybs", uuid));
        // 发送通知粉丝
        messageService.sendMessage(wybs);
        // ==================日志==================
        recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.FBDT, wybs.getEssayId().toString(), wybs.getEssayTitle());
        return Result.success("发表成功");
    }

    /**
     * 删除动态
     *
     * @param essay
     * @retur
     */
    @PostMapping("/delete")
    public Result delete(@RequestBody Essay essay) {

        User user = userService.getById(essay.getUserId());
        // ==================日志==================
        recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.SCDT, essay.getEssayId().toString(), essay.getEssayTitle());
        essayService.removeById(essay.getEssayId());
        return Result.success("删除成功");

    }

    @Autowired
    private RecordAdminService recordAdminService;

    /**
     * 下架动态
     *  管理员
     * @param essay
     * @retur
     */
    @PostMapping("/deleteAdmin")
    public Result deleteAdmin(@RequestBody Essay essay) {
        // 管理员日志
        recordAdminService.xr("下架动态：" + essay.getEssayTitle());
        essayService.removeById(essay.getEssayId());
        return Result.success("已下架");
    }

    /**
     * 重新发布
     *  管理员
     * @param essay
     * @retur
     */
    @PostMapping("/fbAdmin")
    public Result fbAdmin(@RequestBody Essay essay) {
        // 管理员日志
        recordAdminService.xr("重新上线动态：" + essay.getEssayTitle());
        essayService.fbAdmin(MapUtil.WSC, essay.getEssayId());
        return Result.success("已发布");
    }

    /**
     * 批量删除动态
     *
     * @param str
     * @param userId
     * @return
     */
    @PostMapping("/deletes")
    public Result deletes(@RequestParam("str") String str, @RequestParam("userId") Long userId) {

        List<Integer> list = Utils.stringToInteger(str);
        if (list == null || list.size() == 0) {
            return Result.fail(250);
        }
        User user = userService.getById(userId);
        // ==================日志==================
        recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.PLSCDT);
        essayService.removeByIds(list);
        return Result.success("批量删除成功");
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
        Page<Map<String, Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> search = essayService.search(page, text);
        return Result.success(search);
    }


}

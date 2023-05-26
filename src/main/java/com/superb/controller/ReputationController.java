package com.superb.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.superb.entity.Reputation;
import com.superb.entity.Style;
import com.superb.service.ReputationService;
import com.superb.service.StyleService;
import com.superb.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Superb
 * @since 2021-05-10
 */
@RestController
@RequestMapping("/reputation")
public class ReputationController {

    @Autowired
    private ReputationService reputationService;

    /**
     * 是否已评分
     * @param styleId
     * @param userId
     * @return
     */
    @GetMapping("item")
    public Result item(@RequestParam("styleId") Integer styleId, @RequestParam("userId") Long userId){
        Reputation one = reputationService.getOne(new QueryWrapper<Reputation>().eq("style_id", styleId).eq("user_id", userId));
        return Result.success(one);
    }

    @Autowired
    private StyleService styleService;

    /**
     * 是否已评分
     * @param styleId
     * @param userId
     * @return
     */
    @GetMapping("pf")
    public Result pf(@RequestParam("styleId") Integer styleId, @RequestParam("userId") Long userId, @RequestParam("value") Integer value){
        Reputation reputation = new Reputation();
        reputation.setFs(value);
        reputation.setStyleId(styleId);
        reputation.setUserId(userId);
        reputationService.save(reputation);
        Style byId = styleService.getById(styleId);
        Style style = new Style();
        style.setStyleId(byId.getStyleId());
        style.setZpf(byId.getZpf() + value);
        style.setPfrs(byId.getPfrs() + 1);
        styleService.updateById(style);
        return Result.success();
    }

}

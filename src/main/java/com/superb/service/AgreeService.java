package com.superb.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.superb.entity.Agree;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
public interface AgreeService extends IService<Agree> {

    /**
     * 查询一条动态的所有点赞 连接显示用户信息
     * @param essayId
     * @return
     */
    List<Map<String, Object>> superbAgreeById(Long essayId);

}

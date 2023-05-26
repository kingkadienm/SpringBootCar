package com.superb.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.superb.entity.Agree;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
public interface AgreeMapper extends BaseMapper<Agree> {

    /**
     * 查询一条动态的所有点赞
     * 连接显示用户信息
     * @param essayId
     * @return
     */
    List<Map<String, Object>> superbAgreeById(Long essayId);

    /**
     * 查询一个动态的点赞数量
     * @param essayId
     * @return
     */
    Integer agreeCountByEssayId(Long essayId);

}

package com.superb.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.entity.Forward;
import org.springframework.stereotype.Repository;

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
@Repository
public interface ForwardMapper extends BaseMapper<Forward> {


    /**
     * 查询一个用户的所有转发
     * @param userId
     * @return
     */
    IPage<Map<String, Object>> superbByUserId(Page<?> page, Long userId);

    /**
     * 查询一个动态的转发数量
     * @param essayId
     * @return
     */
    Integer forwardCountByEssayId(Long essayId);

    /**
     * 查询一条动态的所有转发
     * 连接显示用户信息
     * @param essayId
     * @return
     */
    List<Map<String, Object>> superbForwardById(Long essayId);


    /**
     * 查询所有转发动态
     * @param page
     * @return
     */
    IPage<Map<String, Object>> superbAllForward(Page<?> page, Integer deleted);



    /**
     * 重新发布
     * @param deleted
     * @param id
     */
    void fbAdmin (Integer deleted, Integer id);

    /**
     * 查询数量
     * @param deleted
     * @return
     */
    Integer adminCount(Integer deleted);
}

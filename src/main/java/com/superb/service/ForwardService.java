package com.superb.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.superb.entity.Forward;

import java.util.Map;


/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
public interface ForwardService extends IService<Forward> {

    /**
     * 查询一个用户的所有转发
     * @param userId
     * @return
     */
    IPage<Map<String, Object>> superbByUserId(Page<?> page, Long userId);

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

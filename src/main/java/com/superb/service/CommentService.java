package com.superb.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.superb.entity.Comment;

import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
public interface CommentService extends IService<Comment> {

    /**
     * 查询一个用户的所有评论
     * @param userId
     * @return
     */
    IPage<Map<String, Object>> superbByUserId(Page<?> page, Long userId);


    /**
     * 查询所有评论 附带动态 管理员
     * @param page
     * @param deleted
     * @return
     */
    IPage<Map<String, Object>> superbListAdmin(Page<?> page, Integer deleted);


    /**
     * 查询一条动态的所有评论 附带评论用户信息
     * @param essayId
     * @return
     */
    IPage<Map<String, Object>> superbCommentById(Page<?> page, Long essayId);


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

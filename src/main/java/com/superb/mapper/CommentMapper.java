package com.superb.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.entity.Comment;

import java.util.Map;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
public interface CommentMapper extends BaseMapper<Comment> {


    /**
     * 查询一个用户的所有评论 附带动态
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
     * 查询一个动态的评论数量
     * @param essayId
     * @return
     */
    Integer commentCountByEssayId(Long essayId);


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

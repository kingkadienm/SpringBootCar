package com.superb.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.dto.EssayDto;
import com.superb.entity.Essay;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
public interface EssayService extends IService<Essay> {

    /**
     * 显示单个动态
     * 连接用户表（预览发动态用户的id name photo）
     * 连接点赞表（显示此动态所有点赞，点赞表再连接用户表（预览发动态用户的id name photo））
     * 连接评论表（显示此动态所有评论，评论表再连接用户表（预览发动态用户的id name photo））
     * 连接转发表（显示此动态转发次数）
     * @param essayId
     * @return
     */
    EssayDto superbByEssayId(Long essayId);


    /**
     * 查询一个用户的所有动态 包含转发数点赞数评论数
     * @param page
     * @return
     */
    IPage<Map<String, Object>> superbEssayById(Page<?> page, Long userId);

    /**
     * 查询所有动态
     * @param page
     * @return
     */
    IPage<Map<String, Object>> superbAllEssay(Page<?> page, Integer deleted);

    /**
     * 搜索
     * @param text
     * @return
     */
    IPage<Map<String, Object>> search(Page<?> page, String text);


//    管理员
    /**
     * 重新发布
     * @param deleted
     * @param essayId
     */
    void fbAdmin (Integer deleted, Long essayId);

    /**
     * 查询数量
     * @param deleted
     * @return
     */
    Integer adminCount(Integer deleted);

}

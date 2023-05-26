package com.superb.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.entity.Video;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * Mapper 接口
 * </p>
 *
 * @author Superb
 * @since 2021-04-02
 */
public interface VideoMapper extends BaseMapper<Video> {

    /**
     * 查询所有news 附带user
     *
     * @return
     */
    IPage<Map<String, Object>> listVideo(Page<?> page, Integer zt);


    /**
     * 查询个人video附带user
     * @param page
     * @param userId
     * @return
     */
    IPage<Map<String, Object>> listByUserId(Page<?> page, Long userId);


    /**
     * 相关视频推荐
     * @param page
     * @param styleId
     * @return
     */
    IPage<Map<String, Object>> listByStyleId(Page<?> page, Integer styleId);


    /**
     * 视频排行
     * @param total
     * @return
     */
    List<Video> listPh (Integer total, Integer zt);

    /**
     * 视频详情 附带用户信息 粉丝数 视频数量 相关style信息
     * @param id
     * @return
     */
    Map<String, Object> videoById (Integer id);

    /**
     * 搜索
     * @param text
     * @return
     */
    IPage<Map<String, Object>> search(Page<?> page, String text);

    /**
     * id列表
     * @return
     */
    List<Integer> idList();
}

package com.superb.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.entity.News;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Superb
 * @since 2021-03-25
 */
public interface NewsService extends IService<News> {

    /**
     * 首页文章
     * @param total
     * @return
     */
    List<News> listWz (Integer total, Integer zt);

    /**
     * 相关文章推荐
     * @param page
     * @param styleId
     * @return
     */
    IPage<Map<String, Object>> listByStyleId(Page<?> page, Integer styleId);

    /**
     * 首页文章排行
     * @param total
     * @return
     */
    List<News> listPh (Integer total, Integer zt);

    /**
     * 文章详情 附带用户信息 粉丝数 文章数量 相关style信息 文章排行
     * @param id
     * @return
     */
    Map<String, Object> newsById (Integer id);

    /**
     * 查询所有带头图片的news 附带user
     * @return
     */
    IPage<Map<String ,Object>> listNews (Page<?> page, Integer zt);


    /**
     * 查询一个带头图片的news 附带user
     * @return
     */
    IPage<Map<String, Object>> itemNews (Page<?> page, Long userId, Integer zt);

    /**
     * 查询一条news 附带user 用户审核界面通过时展示
     * @param id
     * @return
     */
    Map<String, Object> itemById (Integer id);

    /**
     * 查询一个带头图片的news 附带user
     * @return
     */
    IPage<Map<String, Object>> itemNewsSy (Page<?> page, Long userId);


    /**
     * 搜索
     * @param text
     * @return
     */
    IPage<Map<String, Object>> search(Page<?> page, String text);

    List<Integer> idList();
}

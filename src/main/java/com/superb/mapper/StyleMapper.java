package com.superb.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.entity.Style;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Superb
 * @since 2021-03-25
 */
public interface StyleMapper extends BaseMapper<Style> {
    /**
     * 收藏排行连表查询
     * @param count
     * @return
     */
    List<Map<String, Object>> scPh(Integer count);

    /**
     * 评分排行
     * @param count
     * @return
     */
    List<Map<String, Object>> pfPh(Integer count);


    /**
     * 后台轮播图展示
     * @param page
     * @return
     */
    Page<Map<String, Object>> listAdminLbt(Page<?> page);

    /**
     * 上下架车型
     * @param style
     */
    void updateAdmin(Style style);

    /**
     * 管理员查询所有
     * @param page
     * @return
     */
    Page<Style> listAdmin(Page<?> page);

    /**
     * 修改style图片
     * @param style
     */
    void updateStylePhoto(Style style);

    /**
     * 修改style信息
     * @param style
     */
    void updateStyle(Style style);

    /**
     * 查询style管理员
     * @param styleId
     * @return
     */
    Style superbByIdAdmin(Integer styleId);

    /**
     * 搜索
     * @param text
     * @return
     */
    IPage<Style> search(Page<?> page, String text);


    /**
     * 选车
     * @return
     */
    List<Style> selectXc(Map<String, Object> map);

    /**
     * 车详情
     * @param styleId
     * @return
     */
    Map<String, Object> xq(Integer styleId);

}

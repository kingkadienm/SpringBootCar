package com.superb.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.entity.Style;
import com.superb.mapper.StyleMapper;
import com.superb.service.StyleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.superb.util.Utils;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Superb
 * @since 2021-03-25
 */
@Service
public class StyleServiceImpl extends ServiceImpl<StyleMapper, Style> implements StyleService {

    @Override
    public List<Map<String, Object>> scPh(Integer count) {
        return this.baseMapper.scPh(count);
    }

    @Override
    public List<Map<String, Object>> pfPh(Integer count) {
        return baseMapper.pfPh(count);
    }

    @Override
    public Page<Map<String, Object>> listAdminLbt(Page<?> page) {
        return baseMapper.listAdminLbt(page);
    }

    @Override
    public void updateAdmin(Style style) {
        baseMapper.updateAdmin(style);
    }

    @Override
    public Page<Style> listAdmin(Page<?> page) {
        return baseMapper.listAdmin(page);
    }

    @Override
    public void updateStylePhoto(Style style) {
        baseMapper.updateStylePhoto(style);
    }

    @Override
    public void updateStyle(Style style) {
        baseMapper.updateStyle(style);
    }

    @Override
    public Style superbByIdAdmin(Integer styleId) {
        return baseMapper.superbByIdAdmin(styleId);
    }

    @Override
    public IPage<Style> search(Page<?> page, String text) {
        return baseMapper.search(page, text);
    }

    @Override
    public List<Style> selectXc(Map<String, Object> map) {
        return baseMapper.selectXc(map);
    }

    @Override
    public Map<String, Object> xq(Integer styleId) {
        Map<String, Object> xq = baseMapper.xq(styleId);
        double pfrs = Double.parseDouble(xq.get("pfrs").toString());
        double div = 0D;
        if (pfrs > 0){
            div = Utils.div(Double.parseDouble(xq.get("zpf").toString()), pfrs, 1);
        }
        xq.put("kb", div);
        return xq;
    }

}

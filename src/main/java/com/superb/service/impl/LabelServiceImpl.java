package com.superb.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.superb.entity.Label;
import com.superb.handler.MyMetaObjectHandler;
import com.superb.mapper.LabelMapper;
import com.superb.service.LabelService;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
@Service
public class
LabelServiceImpl extends ServiceImpl<LabelMapper, Label> implements LabelService {
    @Override
    public List<Label> listLabel(List<String> labelId) {
        // 使用此会造成逻辑删除的无法回显
//        return baseMapper.selectList(new QueryWrapper<Label>().in("label_id", labelId));
        return baseMapper.listLabel(labelId);
    }

    @Override
    public IPage<List<Label>> listAdmin(Page<?> page) {
        return this.baseMapper.listAdmin(page);
    }

    @Override
    public void deleteAdmin(Integer labelId) {
        this.baseMapper.deleteAdmin(labelId);
    }

    @Override
    public void updateAdmin(Label label) {
        label.setUpdateTime(MyMetaObjectHandler.getDateString(new Date()));
        this.baseMapper.updateAdmin(label);
    }

    @Override
    public void jyAdmin(Label label) {
        label.setUpdateTime(MyMetaObjectHandler.getDateString(new Date()));
        this.baseMapper.jyAdmin(label);
    }
}

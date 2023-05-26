package com.superb.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.superb.entity.Forward;
import com.superb.entity.Label;
import com.superb.mapper.ForwardMapper;
import com.superb.service.ForwardService;
import com.superb.service.LabelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
@Service
public class ForwardServiceImpl extends ServiceImpl<ForwardMapper, Forward> implements ForwardService {

    @Autowired
    private LabelService labelService;

    @Override
    public IPage<Map<String, Object>> superbByUserId(Page<?> page, Long userId) {
        IPage<Map<String, Object>> mapIPage = baseMapper.superbByUserId(page, userId);
        // 处理多标签
        return getMapIPage(mapIPage);
    }

    private IPage<Map<String, Object>> getMapIPage(IPage<Map<String, Object>> mapIPage) {
        for (Map<String, Object> map : mapIPage.getRecords()) {
            Map<String, Object> map2 = ((Map<String, Object>) map.get("essay"));
            if (map2 != null && map2.get("essayLabel") instanceof String && map2.get("essayLabel") != null && !"".equals(map2.get("essayLabel"))) {
                String str = map2.get("essayLabel").toString();
                String[] split = str.split(",");
                List<Label> labels = labelService.listLabel(Arrays.asList(split));
                map2.put("essayLabel", labels);
            }
        }
        return mapIPage;
    }

    @Override
    public IPage<Map<String, Object>> superbAllForward(Page<?> page, Integer deleted) {
        IPage<Map<String, Object>> forward = baseMapper.superbAllForward(page, deleted);
        // 处理多标签
        return getMapIPage(forward);
    }

    @Override
    public void fbAdmin(Integer deleted, Integer id) {
        this.baseMapper.fbAdmin(deleted, id);
    }

    @Override
    public Integer adminCount(Integer deleted) {
        return this.baseMapper.adminCount(deleted);
    }


}

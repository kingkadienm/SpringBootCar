package com.superb.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.superb.dto.EssayDto;
import com.superb.entity.Essay;
import com.superb.entity.Label;
import com.superb.mapper.EssayMapper;
import com.superb.service.EssayService;
import com.superb.service.LabelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
@Service
public class
EssayServiceImpl extends ServiceImpl<EssayMapper, Essay> implements EssayService {

    @Autowired
    private LabelService labelService;


    @Override
    public EssayDto superbByEssayId(Long essayId) {
        EssayDto essayDto = baseMapper.superbByEssayId(essayId);
        // 处理多标签
        if (essayDto.getEssayLabel() != null && !"".equals(essayDto.getEssayLabel())) {
            String str = essayDto.getEssayLabel();
            String[] split = str.split(",");
            List<Label> labels = labelService.listLabel(Arrays.asList(split));
            essayDto.setLabel(labels);
        }
        return essayDto;
    }


    @Override
    public IPage<Map<String, Object>> superbEssayById(Page<?> page, Long userId) {
        IPage<Map<String, Object>> mapIPage = baseMapper.superbEssayById(page, userId);
        // 处理多标签
        getLabel(mapIPage);
        return mapIPage;
    }


    @Override
    public IPage<Map<String, Object>> superbAllEssay(Page<?> page, Integer deleted) {
        IPage<Map<String, Object>> mapIPage = baseMapper.superbAllEssay(page, deleted);
        // 处理多标签
        getLabel(mapIPage);
        return mapIPage;
    }

    @Override
    public IPage<Map<String, Object>> search(Page<?> page, String text) {
        IPage<Map<String, Object>> mapIPage = baseMapper.search(page, text);
        // 处理多标签
        getLabel(mapIPage);
        return mapIPage;
    }

    private void getLabel(IPage<Map<String, Object>> mapIPage) {
        for (Map<String, Object> map : mapIPage.getRecords()) {
            if (map.get("essayLabel") != null && !"".equals(map.get("essayLabel"))) {
                String str = map.get("essayLabel").toString();
                String[] split = str.split(",");
                List<Label> labels = labelService.listLabel(Arrays.asList(split));
                map.put("essayLabel", labels);
            }
        }
    }

    @Override
    public void fbAdmin(Integer deleted, Long essayId) {
        this.baseMapper.fbAdmin(deleted, essayId);
    }

    @Override
    public Integer adminCount(Integer deleted) {
        return this.baseMapper.adminCount(deleted);
    }
}

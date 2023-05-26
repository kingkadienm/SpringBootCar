package com.superb.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.entity.DataDictionary;
import com.superb.mapper.DataDictionaryMapper;
import com.superb.service.DataDictionaryService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Superb
 * @since 2021-04-19
 */
@Service
public class DataDictionaryServiceImpl extends ServiceImpl<DataDictionaryMapper, DataDictionary> implements DataDictionaryService {

    @Override
    public IPage<Map<String, Object>> listAdmin(Page<?> page) {
        return baseMapper.listAdmin(page);
    }

    @Override
    public List<Map<String, Object>> selectData(String typeName) {
        return baseMapper.selectData(typeName);
    }
}

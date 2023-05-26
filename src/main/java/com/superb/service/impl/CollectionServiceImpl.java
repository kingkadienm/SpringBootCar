package com.superb.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.superb.dto.CollectionDto;
import com.superb.entity.Collection;
import com.superb.mapper.CollectionMapper;
import com.superb.service.CollectionService;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
@Service
public class CollectionServiceImpl extends ServiceImpl<CollectionMapper, Collection> implements CollectionService {


    @Override
    public IPage<CollectionDto> superbCollectionById(Page<?> page, Long userId) {
        return baseMapper.superbCollectionById(page, userId);
    }
}

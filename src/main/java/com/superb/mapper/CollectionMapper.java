package com.superb.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.dto.CollectionDto;
import com.superb.entity.Collection;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
public interface CollectionMapper extends BaseMapper<Collection> {
    /**
     * 查询收藏
     * @param page
     * @param userId
     * @return
     */
    IPage<CollectionDto> superbCollectionById(Page<?> page, Long userId);

}

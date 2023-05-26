package com.superb.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.dto.CollectionDto;
import com.superb.entity.Collection;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
public interface CollectionService extends IService<Collection> {
    /**
     * 查询收藏
     * @param page
     * @param userId
     * @return
     */
    IPage<CollectionDto> superbCollectionById(Page<?> page, Long userId);

}

package com.superb.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.dto.AttentionDto;
import com.superb.entity.Attention;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
public interface AttentionService extends IService<Attention> {
    /**
     * 查询关注
     * @param page
     * @param thisId
     * @return
     */
    IPage<AttentionDto> superbAttentionById(Page<?> page, Long thisId);

    /**
     * 查询关注
     * @param thisId
     * @return
     */
    List<AttentionDto> superbById(Long thisId);

    /**
     * 查询粉丝
     * @param page
     * @param thatId
     * @return
     */
    IPage<AttentionDto> superbFansById(Page<?> page,Long thatId);
}

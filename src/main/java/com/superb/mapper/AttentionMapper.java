package com.superb.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.dto.AttentionDto;
import com.superb.entity.Attention;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
public interface AttentionMapper extends BaseMapper<Attention> {
    /**
     * 查询关注
     * @param page
     * @param thisId
     * @return
     */
    IPage<AttentionDto> superbAttentionById(Page<?> page,Long thisId);

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


    /**
     * 查询粉丝数量
     * @param userId
     * @return
     */
    Integer fansCountByUserId (Long userId);

}

package com.superb.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.superb.common.MapUtil;
import com.superb.dto.AttentionDto;
import com.superb.entity.Attention;
import com.superb.mapper.AttentionMapper;
import com.superb.service.AttentionService;
import org.springframework.stereotype.Service;

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
public class AttentionServiceImpl extends ServiceImpl<AttentionMapper, Attention> implements AttentionService {


    @Override
    public IPage<AttentionDto> superbAttentionById(Page<?> page, Long thisId) {
        IPage<AttentionDto> attentionDtoIPage = baseMapper.superbAttentionById(page, thisId);
        // 默认所有都是已关注（展示我的关注时，点击已关注取消关注，不进行刷新页面，而是显示关注按钮，这时需要一个标志量）
        // 来标志默认已关注 用于取消关注之后显示再次关注按钮
        for (AttentionDto attentionDto : attentionDtoIPage.getRecords()) {
            attentionDto.setFlagAttention(MapUtil.YGZ);
        }
        return attentionDtoIPage;
    }

    @Override
    public List<AttentionDto> superbById(Long thisId) {
        return baseMapper.superbById(thisId);
    }

    @Override
    public IPage<AttentionDto> superbFansById(Page<?> page, Long thatId) {
        // 我的关注 不分页
        List<AttentionDto> attentionDtos = baseMapper.superbById(thatId);
        // 我的粉丝
        IPage<AttentionDto> fansDtoIPage = baseMapper.superbFansById(page, thatId);
        // 判断是否相互关注
        for (AttentionDto fans : fansDtoIPage.getRecords()) {
            // 默认未关注
            fans.setFlagFans(MapUtil.WGZ);
            for (AttentionDto attentions : attentionDtos) {
                if (fans.getUser().getUserId().equals(attentions.getUser().getUserId())) {
                    fans.setFlagFans(MapUtil.HXGZ);
                    break;
                }
            }
        }
        return fansDtoIPage;
    }
}

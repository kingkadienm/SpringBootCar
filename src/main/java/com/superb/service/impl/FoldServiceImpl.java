package com.superb.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.entity.Fold;
import com.superb.mapper.FoldMapper;
import com.superb.service.FoldService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Superb
 * @since 2021-03-24
 */
@Service
public class FoldServiceImpl extends ServiceImpl<FoldMapper, Fold> implements FoldService {

    @Override
    public IPage<Map<String, Object>> foldListAdmin(Page<?> page) {
        return this.baseMapper.foldListAdmin(page);
    }
}

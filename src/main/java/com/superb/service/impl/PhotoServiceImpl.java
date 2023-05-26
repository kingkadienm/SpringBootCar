package com.superb.service.impl;

import com.superb.entity.Photo;
import com.superb.mapper.PhotoMapper;
import com.superb.service.PhotoService;
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
 * @since 2020-11-11
 */
@Service
public class PhotoServiceImpl extends ServiceImpl<PhotoMapper, Photo> implements PhotoService {

    @Override
    public List<Map<String, Object>> newsById(Integer newsId) {
        return baseMapper.newsById(newsId);
    }

    @Override
    public List<Map<String, Object>> essayById(Long essayId) {
        return baseMapper.essayById(essayId);
    }

    @Override
    public List<Map<String, Object>> styleById(Integer styleId) {
        return baseMapper.styleById(styleId);
    }
}

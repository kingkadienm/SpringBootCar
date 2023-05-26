package com.superb.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.entity.Video;
import com.superb.mapper.VideoMapper;
import com.superb.service.VideoService;
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
 * @since 2021-04-02
 */
@Service
public class VideoServiceImpl extends ServiceImpl<VideoMapper, Video> implements VideoService {

    @Override
    public IPage<Map<String, Object>> listVideo(Page<?> page, Integer zt) {
        return baseMapper.listVideo(page, zt);
    }

    @Override
    public IPage<Map<String, Object>> listByUserId(Page<?> page, Long userId) {
        return baseMapper.listByUserId(page, userId);
    }

    @Override
    public List<Video> listPh(Integer total, Integer zt) {
        return baseMapper.listPh(total, zt);
    }

    @Override
    public Map<String, Object> videoById(Integer id) {
        return baseMapper.videoById(id);
    }

    @Override
    public IPage<Map<String, Object>> listByStyleId(Page<?> page, Integer styleId) {
        return baseMapper.listByStyleId(page, styleId);
    }

    @Override
    public IPage<Map<String, Object>> search(Page<?> page, String text) {
        return baseMapper.search(page, text);
    }

    @Override
    public List<Integer> idList() {
        return baseMapper.idList();
    }
}

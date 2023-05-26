package com.superb.mapper;

import com.superb.entity.Photo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
public interface PhotoMapper extends BaseMapper<Photo> {

    /**
     * 文章相关图片
     * @return
     */
    List<Map<String, Object>> newsById (Integer newsId);
    /**
     * 动态相关图片
     * @return
     */
    List<Map<String, Object>> essayById (Long essayId);
    /**
     * 车型相关图片
     * @return
     */
    List<Map<String, Object>> styleById (Integer styleId);

}

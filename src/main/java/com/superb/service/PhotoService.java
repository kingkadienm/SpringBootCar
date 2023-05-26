package com.superb.service;

import com.superb.entity.Photo;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
public interface PhotoService extends IService<Photo> {

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

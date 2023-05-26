package com.superb.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.entity.Fold;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Superb
 * @since 2021-03-24
 */
public interface FoldService extends IService<Fold> {

    /**
     * 展示所有fold 连接style  管理员
     * @param page
     * @return
     */
    IPage<Map<String, Object>> foldListAdmin(Page<?> page);

}

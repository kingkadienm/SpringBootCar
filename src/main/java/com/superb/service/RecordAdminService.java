package com.superb.service;

import com.superb.entity.RecordAdmin;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Superb
 * @since 2021-04-14
 */
public interface RecordAdminService extends IService<RecordAdmin> {

    /**
     * 管理员操作记录
     * @param text
     */
    void xr(String text);

}

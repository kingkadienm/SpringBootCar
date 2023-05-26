package com.superb.service;

import com.superb.entity.Record;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Superb
 * @since 2021-03-17
 */
public interface RecordService extends IService<Record> {
    int xr(String userId, String userName, String nr, String objectId, String objectName);
    int xr(String userId, String userName, String nr);
}

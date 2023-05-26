package com.superb.service.impl;

import com.superb.entity.RecordAdmin;
import com.superb.mapper.RecordAdminMapper;
import com.superb.service.RecordAdminService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Superb
 * @since 2021-04-14
 */
@Service
public class RecordAdminServiceImpl extends ServiceImpl<RecordAdminMapper, RecordAdmin> implements RecordAdminService {

    @Override
    public void xr(String text) {
        RecordAdmin recordAdmin = new RecordAdmin();
        recordAdmin.setText(text);
        this.baseMapper.insert(recordAdmin);
    }
}

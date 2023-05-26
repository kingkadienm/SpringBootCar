package com.superb.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.superb.entity.User;
import com.superb.mapper.UserMapper;
import com.superb.service.UserService;
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
public class
UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {


    @Override
    public IPage<User> userListAdmin(Page<?> page) {
        return baseMapper.userListAdmin(page);
    }

    @Override
    public IPage<User> search(Page<?> page, String text) {
        return baseMapper.search(page, text);
    }

    @Override
    public IPage<User> adminListCjh(Page<?> page, Integer sfrz) {
        return baseMapper.adminListCjh(page, sfrz);
    }

    @Override
    public IPage<User> adminLikeDeleted(Page<?> page, String str) {
        return baseMapper.adminLikeDeleted(page,"%"+str+"%");
    }

    @Override
    public List<User> getUserNotId(Long userId) {
        return baseMapper.getUserNotId(userId);
    }
}

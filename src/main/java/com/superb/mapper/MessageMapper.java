package com.superb.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.entity.Message;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import java.util.Map;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
public interface MessageMapper extends BaseMapper<Message> {

    /**
     * 连表查询用户的消息
     * @param userId
     * @return
     */
    IPage<Map<String, Object>> superbMessageById(Page<?> page, Long userId, Integer messageType);

}

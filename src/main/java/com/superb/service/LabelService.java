package com.superb.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.superb.entity.Label;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
public interface LabelService extends IService<Label> {
    /**
     * 多标签查询
     * @param labelId
     * @return
     */
    List<Label> listLabel (List<String> labelId);

    /**
     * 查询所有标签  包括delete
     * @return
     */
    IPage<List<Label>> listAdmin(Page<?> page);

    /**
     * 彻底删除
     * @param labelId
     */
    void deleteAdmin (Integer labelId);

    /**
     * 修改
     * @param label
     */
    void updateAdmin (Label label);

    /**
     * 取消禁用
     * @param label
     */
    void jyAdmin (Label label);
}

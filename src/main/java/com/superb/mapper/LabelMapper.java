package com.superb.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.entity.Label;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
public interface LabelMapper extends BaseMapper<Label> {
    /**
     * 多标签查询
     * @param labelId
     * @return
     */
    List<Label> listLabel(List<String> labelId);


    /**************以下管理员****************/

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
     * 禁用取消禁用
     * @param label
     */
    void jyAdmin (Label label);
}

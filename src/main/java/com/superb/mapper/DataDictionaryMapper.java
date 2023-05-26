package com.superb.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.dto.EssayDto;
import com.superb.entity.DataDictionary;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Superb
 * @since 2021-04-19
 */
public interface DataDictionaryMapper extends BaseMapper<DataDictionary> {

    /**
     * 数据字典连表展示
     * @param page
     * @return
     */
    IPage<Map<String, Object>> listAdmin(Page<?> page);

    /**
     * 根据数据类型返回所有相关数据
     * @param typeName
     * @return
     */
    List<Map<String, Object>> selectData(String typeName);

}

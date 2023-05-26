package com.superb.controller;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.common.MapUtil;
import com.superb.entity.DataDictionary;
import com.superb.service.DataDictionaryService;
import com.superb.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Superb
 * @since 2021-04-19
 */
@RestController
@RequestMapping("/data-dictionary")
public class DataDictionaryController {

    @Autowired
    private DataDictionaryService dataDictionaryService;

    @GetMapping("/list")
    public Result list(@RequestParam(defaultValue = "1", value = "current") Integer current,
                       @RequestParam(defaultValue = "8", name = "size") Integer size){
        Page<DataDictionary> page = new Page<>(current, size);
        IPage<Map<String, Object>> mapIPage = dataDictionaryService.listAdmin(page);
        return Result.success(mapIPage);
    }


    /**
     * 根据数据类型返回厂商
     * @return
     */
    @GetMapping("/itemCs")
    public Result itemCs(){
        List<Map<String, Object>> list = dataDictionaryService.selectData(MapUtil.DATA_TYPE_CS);
        return Result.success(list);
    }


    /**
     * 根据数据类型返回级别
     * @return
     */
    @GetMapping("/itemJb")
    public Result itemJb(){
        List<Map<String, Object>> list = dataDictionaryService.selectData(MapUtil.DATA_TYPE_JB);
        return Result.success(list);
    }

    /**
     * 根据数据类型返回国别
     * @return
     */
    @GetMapping("/itemGb")
    public Result itemGb(){
        List<Map<String, Object>> list = dataDictionaryService.selectData(MapUtil.DATA_TYPE_GB);
        return Result.success(list);
    }

    /**
     * 根据数据类型返回环保标准
     * @return
     */
    @GetMapping("/itemHbbz")
    public Result itemHbbz(){
        List<Map<String, Object>> list = dataDictionaryService.selectData(MapUtil.DATA_TYPE_HBBZ);
        return Result.success(list);
    }

    /**
     * 根据数据类型返回能源类型
     * @return
     */
    @GetMapping("/itemNylx")
    public Result itemNylx(){
        List<Map<String, Object>> list = dataDictionaryService.selectData(MapUtil.DATA_TYPE_NYLX);
        return Result.success(list);
    }

    /**
     * 根据数据类型返回进气方式
     * @return
     */
    @GetMapping("/itemJqfs")
    public Result itemJqfs(){
        List<Map<String, Object>> list = dataDictionaryService.selectData(MapUtil.DATA_TYPE_JQFS);
        return Result.success(list);
    }

    /**
     * 根据数据类型返回驱动方式
     * @return
     */
    @GetMapping("/itemQdfs")
    public Result itemQdfs(){
        List<Map<String, Object>> list = dataDictionaryService.selectData(MapUtil.DATA_TYPE_QDFS);
        return Result.success(list);
    }

    /**
     * 根据数据类型返回驻车制动类型
     * @return
     */
    @GetMapping("/itemZdlx")
    public Result itemZdlx(){
        List<Map<String, Object>> list = dataDictionaryService.selectData(MapUtil.DATA_TYPE_ZDLX);
        return Result.success(list);
    }

    /**
     * 根据数据类型返回燃油标号
     * @return
     */
    @GetMapping("/itemRybh")
    public Result itemRybh(){
        List<Map<String, Object>> list = dataDictionaryService.selectData(MapUtil.DATA_TYPE_RYBH);
        return Result.success(list);
    }



}

package com.superb.controller;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.entity.DataType;
import com.superb.service.DataTypeService;
import com.superb.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Superb
 * @since 2021-04-19
 */
@RestController
@RequestMapping("/data-type")
public class DataTypeController {

    @Autowired
    private DataTypeService dataTypeService;

    @GetMapping("/list")
    public Result list(@RequestParam(defaultValue = "1", value = "current") Integer current,
                       @RequestParam(defaultValue = "8", name = "size") Integer size){
        Page<DataType> page = new Page<>(current, size);
        IPage<DataType> dataTypeIPage = dataTypeService.page(page);
        return Result.success(dataTypeIPage);
    }

}

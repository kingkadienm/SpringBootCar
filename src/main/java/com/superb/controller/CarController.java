package com.superb.controller;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.common.MapUtil;
import com.superb.entity.Car;
import com.superb.entity.Style;
import com.superb.handler.MyMetaObjectHandler;
import com.superb.service.CarService;
import com.superb.service.RecordAdminService;
import com.superb.service.StyleService;
import com.superb.util.RedisUtils;
import com.superb.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Superb
 * @since 2021-04-14
 */
@RestController
@RequestMapping("/car")
public class CarController {

    @Autowired
    private CarService carService;

    @Autowired
    private RecordAdminService recordAdminService;

    @Autowired
    private StyleService styleService;

    @Autowired
    private RedisUtils redisUtils;
    /**
     * 车详情
     * @param styleId
     * @return
     */
    @GetMapping("/xq")
    public Result xq(@RequestParam("styleId") Integer styleId) {
        Style byId = styleService.getById(styleId);
        Style style = new Style();
        style.setStyleId(byId.getStyleId());
        style.setDjl(byId.getDjl() + 1);
        styleService.updateById(style);
        redisUtils.del(MapUtil.CAR_DJL);
        List<Map<String, Object>> xq = carService.xq(styleId, false);
        return Result.success(xq);
    }

    /**
     * 高亮显示
     * @param styleId
     * @return
     */
    @GetMapping("/glxs")
    public Result glxs(@RequestParam("styleId") Integer styleId) {
        List<Map<String, Object>> xq = carService.xq(styleId, true);
        return Result.success(xq.get(0));
    }


    /**
     * 查询所有style_id 相关car
     * @return
     */
    @GetMapping("/listAdminByStyleId")
    public Result listAdminByStyleId(@RequestParam("styleId") Integer styleId){
        List<Car> cars = carService.selectAdmin(styleId);
        return Result.success(cars);
    }

    /**
     * 查询所有car
     * @return
     */
    @GetMapping("/listAdmin")
    public Result listAdmin(@RequestParam(defaultValue = "1", name = "current") Integer current,
                            @RequestParam(defaultValue = "8", name = "size") Integer size){
        Page<Car> page = new Page<>(current, size);
        IPage<Car> carIPage = carService.selectAdminList(page);
        return Result.success(carIPage);
    }

    /**
     * 下架
     * @param car
     * @return
     */
    @PostMapping("deleteAdmin")
    public Result deleteAdmin(@RequestBody Car car) {
        // 管理员日志
        recordAdminService.xr("下架Car：" + car.getCarName());
        carService.removeById(car.getCarId());
        return Result.success("已下架");
    }

    /**
     * 上架
     * @param car
     * @return
     */
    @PostMapping("/sjAdmin")
    public Result sjAdmin(@RequestBody Car car) {
        car.setDeleted(MapUtil.WSC);
        car.setUpdateTime(MyMetaObjectHandler.getDateString(new Date()));
        // 管理员日志
        recordAdminService.xr("上架Car：" + car.getCarName());
        carService.updateAdmin(car);
        return Result.success("已上架");
    }

    /**
     * 保存一条
     * @param car
     * @return
     */
    @PostMapping("saveAdmin")
    public Result saveAdmin(@RequestBody Car car) {
        if (car.getCarId() != null && !"".equals(car.getCarId().toString())) {
            car.setUpdateTime(MyMetaObjectHandler.getDateString(new Date()));
            // 管理员日志
            recordAdminService.xr("编辑Car：" + car.getCarName());
            carService.updateCar(car);
            return Result.success("已编辑");
        }
        carService.save(car);
        // 管理员日志
        recordAdminService.xr("添加Car：" + car.getCarName());
        carService.updateCar(car);
        return Result.success("已保存");
    }
}

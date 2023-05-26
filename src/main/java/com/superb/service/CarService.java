package com.superb.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.entity.Car;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Superb
 * @since 2021-04-14
 */
public interface CarService extends IService<Car> {

    /**
     * 根据style查询其下所有car
     * @param styleId
     * @return
     */
    List<Car> selectAdmin(Integer styleId);

    /**
     * 查询所有car
     * @param page
     * @return
     */
    IPage<Car> selectAdminList(Page<?> page);

    /**
     * 上下架
     * @param car
     */
    void updateAdmin(Car car);

    /**
     * 编辑保存
     * @param car
     */
    void updateCar(Car car);

    /**
     * 车详情
     * @param styleId
     * @return
     */
    List<Map<String, Object>> xq(Integer styleId, boolean flag);

}

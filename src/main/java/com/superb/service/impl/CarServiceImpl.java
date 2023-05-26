package com.superb.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.superb.entity.Car;
import com.superb.mapper.CarMapper;
import com.superb.service.CarService;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Superb
 * @since 2021-04-14
 */
@Service
public class CarServiceImpl extends ServiceImpl<CarMapper, Car> implements CarService {
    @Override
    public List<Car> selectAdmin(Integer styleId) {
        return baseMapper.selectAdmin(styleId);
    }

    @Override
    public IPage<Car> selectAdminList(Page<?> page) {
        return baseMapper.selectAdminList(page);
    }

    @Override
    public void updateAdmin(Car car) {
        baseMapper.updateAdmin(car);
    }

    @Override
    public void updateCar(Car car) {
        baseMapper.updateCar(car);
    }

    @Override
    public List<Map<String, Object>> xq(Integer styleId, boolean flag) {
        List<Map<String, Object>> xq = baseMapper.xq(styleId);
        // 如果需要高亮
        if (flag && xq.size() != 0) {
            Map<String, Object> flagMap = new HashMap<>();
            for (Map.Entry<String, Object> entry : xq.get(0).entrySet()){
                Map<String, Object> hashMap = new HashMap<>();
                for (Map<String, Object> map : xq) {
                    hashMap.put(map.get(entry.getKey()).toString(), entry.getKey());
                }
                flagMap.put(entry.getKey(), 0);
                if (hashMap.size() > 1){
                    flagMap.put(entry.getKey(), 1);
                }
            }
            xq.clear();
            xq.add(flagMap);
        }
        return xq;
    }
}

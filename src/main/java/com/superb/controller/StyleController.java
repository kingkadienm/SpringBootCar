package com.superb.controller;


import cn.hutool.json.JSONArray;
import cn.hutool.json.JSONUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.common.MapUtil;
import com.superb.entity.Photo;
import com.superb.entity.Style;
import com.superb.handler.MyMetaObjectHandler;
import com.superb.service.*;
import com.superb.util.RedisUtils;
import com.superb.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.*;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Superb
 * @since 2021-03-25
 */
@RestController
@RequestMapping("/style")
public class StyleController {

    @Autowired
    private StyleService styleService;

    @Autowired
    private OssService ossService;

    @Autowired
    private DataDictionaryService dataDictionaryService;

    @Autowired
    private RedisUtils redisUtils;

    private int count = 0;
    private int count2 = 0;


    /**
     * 车详情
     * @param styleId
     * @return
     */
    @GetMapping("/xq")
    public Result xq(@RequestParam("styleId") Integer styleId) {
        Map<String, Object> xq = styleService.xq(styleId);
        return Result.success(xq);
    }


    // 选车
    @PostMapping("/xc")
    public Result xc(@RequestBody Map<String, Object> map) {
        List<Style> styles = styleService.selectXc(map);
        Map<String, Object> objectMap = new HashMap<>();
        // 筛选条件回传
        objectMap.put("tj", map);
        objectMap.put("xr", styles);
        return Result.success(objectMap);
    }


    // 首页底部展示
    @GetMapping("/item")
    public Result item() {


        // 总条数 / 每页显示 = 完整页数  i!=0
        int i = styleService.count() / MapUtil.sizeA;

        Page<Style> page = new Page<>((++count % i) + 1, MapUtil.sizeA);

        return Result.success(styleService.page(page, new QueryWrapper<Style>().orderByDesc("create_time")).getRecords());

    }

    // 首页轮播图展示
    @GetMapping("/itemLbt")
    public Result itemLbt() {



        // 总条数 / 每页显示 = 完整页数  i!=0
        int i = styleService.count(new QueryWrapper<Style>().ne("img_lbt", "")) / MapUtil.sizeA;

        Page<Style> page = new Page<>((++count2 % i) + 1, MapUtil.sizeA);

        return Result.success(styleService.page(page, new QueryWrapper<Style>().ne("img_lbt", "").orderByDesc("create_time")).getRecords());

    }

    // 点击量前十
    @GetMapping("/itemDjl")
    public Result itemDjl() {
        Page<Style> page = new Page<>(MapUtil.MRYM, MapUtil.sizeC);
        IPage<Style> djl = styleService.page(page, new QueryWrapper<Style>().orderByDesc("djl"));
        return Result.success(djl.getRecords());
    }

    // 点击量前十(redis)
    @GetMapping("/itemDjlRedis")
    public Result itemDjlRedis() {
        Object o = redisUtils.get(MapUtil.CAR_DJL);
        if (o == null) {
            Page<Style> page = new Page<>(MapUtil.MRYM, MapUtil.sizeC);
            IPage<Style> djl = styleService.page(page, new QueryWrapper<Style>().orderByDesc("djl"));
            List<Style> styleList = djl.getRecords();
            String jsonStr = JSONUtil.toJsonStr(styleList);
            redisUtils.set(MapUtil.CAR_DJL, jsonStr);
            return Result.success(styleList);
        }
        JSONArray jsonArray = JSONUtil.parseArray(o.toString());
        return Result.success(jsonArray);
    }


    // 销量排行
    @GetMapping("/xlPh")
    public Result xlPh() {
        Page<Style> page = new Page<>(MapUtil.MRYM, MapUtil.sizeC);
        IPage<Style> styleIPage = styleService.page(page, new QueryWrapper<Style>().orderByDesc("xl"));
        return Result.success(styleIPage.getRecords());
    }

    // 评分排行
    @GetMapping("/pfPh")
    public Result pfPh() {
        List<Map<String, Object>> list = styleService.pfPh(MapUtil.sizeC);
        return Result.success(list);
    }

    // 点击量排行
    @GetMapping("/djlPh")
    public Result djlPh() {
        Page<Style> page = new Page<>(MapUtil.MRYM, MapUtil.sizeC);
        IPage<Style> styleIPage = styleService.page(page, new QueryWrapper<Style>().orderByDesc("djl"));
        return Result.success(styleIPage.getRecords());
    }

    // 收藏数排行
    @GetMapping("/scsPh")
    public Result scsPh() {
        List<Map<String, Object>> list = styleService.scPh(MapUtil.sizeC);
        return Result.success(list);
    }


    /**
     * 后台轮播图展示
     * @param current
     * @param size
     * @return
     */
    @GetMapping("/listAdminLbt")
    public Result listAdminLbt(@RequestParam(defaultValue = "1", value = "current") Integer current,
                       @RequestParam(defaultValue = "8", name = "size") Integer size) {
        Page<Map<String, Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> styleIPage = styleService.listAdminLbt(page);
        return Result.success(styleIPage);
    }

    /**
     * 移除轮播图
     * @param style
     * @return
     */
    @PostMapping("/deleteAdminLbt")
    public Result deleteAdminLbt(@RequestBody Style style) {
        Style byId = styleService.superbByIdAdmin(style.getStyleId());
        ossService.deleteFile(byId.getImgLbt());
        style.setImgLbt("");
        recordAdminService.xr("移除轮播图：" + byId.getStyleName());
        styleService.updateById(style);
        return Result.success();
    }

    /**
     * 模糊查询
     * @param text
     * @return
     */
    @GetMapping("/search")
    public Result search(@RequestParam(defaultValue = "", value = "text") String text,
                         @RequestParam(defaultValue = "1", name = "current") Integer current,
                         @RequestParam(defaultValue = "9", name = "size") Integer size){
        Page<Style> page = new Page<>(current, size);
        IPage<Style> search = styleService.search(page, text);
        return Result.success(search);
    }

    /**
     * 下架
     * @param style
     * @return
     */
    @PostMapping("deleteAdmin")
    public Result deleteAdmin(@RequestBody Style style) {
        // 管理员日志
        recordAdminService.xr("下架车型：" + style.getStyleName());
        styleService.removeById(style.getStyleId());
        return Result.success("已下架");
    }

    /**
     * 上架
     * @param style
     * @return
     */
    @PostMapping("/sjAdmin")
    public Result sjAdmin(@RequestBody Style style) {
        style.setDeleted(MapUtil.WSC);
        style.setUpdateTime(MyMetaObjectHandler.getDateString(new Date()));
        // 管理员日志
        recordAdminService.xr("上架车型：" + style.getStyleName());
        styleService.updateAdmin(style);
        return Result.success("已上架");
    }

    @GetMapping("/listAdmin")
    public Result listAdmin(@RequestParam(defaultValue = "1", value = "current") Integer current,
                            @RequestParam(defaultValue = "5", name = "size") Integer size) {
        Page<Style> page = new Page<>(current, size);
        Page<Style> stylePage = styleService.listAdmin(page);
        return Result.success(stylePage);
    }

    /**
     * 二级下拉框
     * @return
     */
    @GetMapping("/adminDjxl")
    public Result adminDjxl() {
        // 所有级别
        List<Map<String, Object>> listData = dataDictionaryService.selectData(MapUtil.DATA_TYPE_JB);
        // 所有车型
        List<Style> listStyle = styleService.list();
        // 组装最终list
        List<Map<String, Object>> list = new ArrayList<>();
        for (Map<String, Object> map : listData) {
            // 第一级map
            Map<String, Object> objectMap = new HashMap<>();
            // 第一级的label
            objectMap.put("label", map.get("data"));
            // 第一级的children 第二级
            List<Map<String, Object>> mapList = new ArrayList<>();
            for (Style style : listStyle) {
                // 已经添加过的排除
                if ((style.getImgLbt() == null || "".equals(style.getImgLbt())) && map.get("id").toString().equals(style.getJb().toString())) {
                    // 第二级的小项
                    Map<String, Object> stringObjectMap = new HashMap<>();
                    stringObjectMap.put("value", style.getStyleId());
                    stringObjectMap.put("label", style.getStyleName());
                    mapList.add(stringObjectMap);
                }
            }
            objectMap.put("children", mapList);
            list.add(objectMap);
        }
        return Result.success(list);
    }

    /**
     * 保存轮播图
     * @param file
     * @param style
     * @return
     */
    @PostMapping("/addLbt")
    public Result addLbt(MultipartFile file, Style style) {
        String url = ossService.uploadFile(file, MapUtil.STYLE_LBT);
        // 截掉第一位
        String substring = style.getStyleName().substring(1);
        Style style2 = new Style();
        style2.setImgLbt(url);
        style2.setStyleId(Integer.parseInt(substring));
        Style byId = styleService.getById(style2.getStyleId());
        // 管理员日志
        recordAdminService.xr("添加轮播图：" + byId.getStyleName());
        styleService.updateById(style2);
        return Result.success();
    }

    @Autowired
    private RecordAdminService recordAdminService;

    /**
     * 保存style
     * @param file
     * @param style
     * @return
     */
    @PostMapping("/addStyle")
    public Result addStyle(MultipartFile file, Style style) {
        String url = ossService.uploadFile(file, MapUtil.STYLE_TX);
        style.setStylePhoto(url);
        // 管理员日志
        recordAdminService.xr("添加新车型：" + style.getStyleName());
        styleService.save(style);
        return Result.success();
    }



    /**
     * 编辑style图片
     * @param file
     * @param style
     * @return
     */
    @PostMapping("/editStylePhoto")
    public Result editStylePhoto(MultipartFile file, Style style) {
        Style byId = styleService.superbByIdAdmin(style.getStyleId());
        // 删除原先照片
        ossService.deleteFile(byId.getStylePhoto());
        //返回上传到oss的路径
        String url = ossService.uploadFile(file, MapUtil.STYLE_TX);
        style = new Style();
        style.setStylePhoto(url);
        style.setStyleId(byId.getStyleId());
        style.setUpdateTime(MyMetaObjectHandler.getDateString(new Date()));
        // 管理员日志
        recordAdminService.xr("编辑车型图片：" + byId.getStyleName());
        styleService.updateStylePhoto(style);
        return Result.success("修改成功");
    }

    /**
     * 编辑style信息
     * @param style
     * @return
     */
    @PostMapping("/editStyle")
    public Result editStyle(@RequestBody Style style) {
        // 管理员日志
        recordAdminService.xr("编辑车型：" + style.getStyleName());
        style.setUpdateTime(MyMetaObjectHandler.getDateString(new Date()));
        styleService.updateStyle(style);
        return Result.success("修改成功");
    }

    @Autowired
    private PhotoService photoService;

    /**
     * 上传车型图集
     * @param file
     * @param style 传id传name
     * @return
     */
    @PostMapping("/uploadStyleTJ")
    public Result uploadStyleTJ(MultipartFile file, Style style) {
        String url = ossService.uploadFile(file, MapUtil.STYLE_TJ);
        Photo photo = new Photo();
        photo.setPhotoUrl(url);
        photo.setStyleId(style.getStyleId());
        photoService.save(photo);
        // 管理员日志
        recordAdminService.xr(style.getStyleName() + " 上传图集");
        return Result.success();
    }
}

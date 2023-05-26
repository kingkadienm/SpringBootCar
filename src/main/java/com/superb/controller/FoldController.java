package com.superb.controller;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.common.MapUtil;
import com.superb.entity.Fold;
import com.superb.service.FoldService;
import com.superb.service.OssService;
import com.superb.service.RecordAdminService;
import com.superb.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author Superb
 * @since 2021-03-24
 */
@RestController
@RequestMapping("/fold")
public class FoldController {

    @Autowired
    private FoldService foldService;

    private int count = 0;

    /**
     * 折叠项展示
     *
     * @return
     */
    @GetMapping("/item")
    public Result item() {
        List<Map<String, Object>> list = foldService.listMaps();
        return Result.success(list.get(++count % list.size()));
    }


    //***********************************后台***********************************//

    @Autowired
    private OssService ossService;

    @Autowired
    private RecordAdminService recordAdminService;


    /**
     * 编辑回显
     *
     * @param id
     * @return
     */
    @GetMapping("/itemAdmin")
    public Result item(@RequestParam("id") Integer id) {
        Fold fold = foldService.getById(id);
        return Result.success(fold);
    }

    /**
     * 查询所有折叠板
     *
     * @param current
     * @param size
     * @return
     */
    @GetMapping("/list")
    public Result item(@RequestParam(defaultValue = "1", value = "current") Integer current,
                       @RequestParam(defaultValue = "8", name = "size") Integer size) {
        Page<Map<String, Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> foldIPage = foldService.foldListAdmin(page);
        return Result.success(foldIPage);
    }

    /**
     * 添加折叠板
     *
     * @param file
     * @param fold
     * @return
     */
    @PostMapping("/addAdmin")
    public Result addAdmin(MultipartFile file, Fold fold) {
        //返回上传到oss的路径
        String url = ossService.uploadFile(file, MapUtil.FOLD);
        fold.setStylePhoto(url);
        // 管理员日志
        recordAdminService.xr("新增折叠板：" + fold.getTitle1());
        foldService.save(fold);
        return Result.success("添加成功");
    }

    /**
     * 修改照片
     * @param file
     * @param fold
     * @return
     */
    @PostMapping("/updatePhoto")
    public Result updatePhoto(MultipartFile file, Fold fold) {
        Fold byId = foldService.getById(fold.getId());
        // 删除原先照片
        ossService.deleteFile(byId.getStylePhoto());
        //返回上传到oss的路径
        String url = ossService.uploadFile(file, MapUtil.FOLD);
        fold = new Fold();
        fold.setStylePhoto(url);
        fold.setId(byId.getId());
        // 管理员日志
        recordAdminService.xr("编辑折叠板图片：" + byId.getTitle1());
        foldService.updateById(fold);
        return Result.success("修改成功");
    }

    /**
     * 修改信息
     * @param fold
     * @return
     */
    @PostMapping("/updateAdmin")
    public Result updateAdmin(@RequestBody Fold fold) {
        fold.setStylePhoto(null);
        // 管理员日志
        recordAdminService.xr("编辑折叠板：" + fold.getTitle1());
        foldService.updateById(fold);
        return Result.success("修改成功");
    }

    /**
     * 删除折叠板
     *
     * @param fold
     * @retur
     */
    @PostMapping("/delete")
    public Result delete(@RequestBody Fold fold) {
        Fold byId = foldService.getById(fold.getId());
        // 删除原先照片
        ossService.deleteFile(byId.getStylePhoto());
        // 管理员日志
        recordAdminService.xr("删除折叠板：" + fold.getTitle1());
        foldService.removeById(fold.getId());
        return Result.success("删除成功");
    }


}

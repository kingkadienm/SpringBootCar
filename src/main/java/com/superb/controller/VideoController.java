package com.superb.controller;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.common.MapUtil;
import com.superb.entity.Message;
import com.superb.entity.Video;
import com.superb.service.MessageService;
import com.superb.service.OssService;
import com.superb.service.RecordAdminService;
import com.superb.service.VideoService;
import com.superb.util.RedisUtils;
import com.superb.util.Result;
import com.superb.util.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Superb
 * @since 2021-04-02
 */
@RestController
@RequestMapping("/video")
public class VideoController {

    @Autowired
    private OssService ossService;

    @Autowired
    private VideoService videoService;

    @Autowired
    private RedisUtils redisUtils;


    /**
     * 视频列表 已发布
     * @param current
     * @param size
     * @return
     */
    @GetMapping("/list")
    public Result list(@RequestParam(defaultValue = "1", name = "current") Integer current,
                       @RequestParam(defaultValue = "10", name = "size") Integer size){
        Page<Map<String, Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> mapIPage = videoService.listVideo(page, MapUtil.VIDEO_YFB);
        return Result.success(mapIPage);
    }

    /**
     * 相关视频推荐列表 已发布
     * @param current
     * @param size
     * @return
     */
    @GetMapping("/listVideoByStyleId")
    public Result listVideoByStyleId(@RequestParam(defaultValue = "1", name = "current") Integer current,
                       @RequestParam(defaultValue = "5", name = "size") Integer size, @RequestParam("styleId")Integer styleId){
        Page<Map<String, Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> mapIPage = videoService.listByStyleId(page, styleId);
        return Result.success(mapIPage);
    }

    /**
     * 查询所有已驳回  video  附加user
     * @param current
     * @param size
     * @return
     */
    @GetMapping("/listAdminYbh")
    public Result listAdminYbh (@RequestParam(defaultValue = "1",value = "current") Integer current,
                                @RequestParam(defaultValue = "10",name = "size") Integer size) {
        Page<Map<String ,Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> list = videoService.listVideo(page, MapUtil.VIDEO_YBH);
        return Result.success(list);
    }

    /**
     * 查询所有待审核  video  附加user
     * @param current
     * @param size
     * @return
     */
    @GetMapping("/listAdminDsh")
    public Result listAdminDsh (@RequestParam(defaultValue = "1",value = "current") Integer current,
                                @RequestParam(defaultValue = "10",name = "size") Integer size) {
        Page<Map<String ,Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> list = videoService.listVideo(page, MapUtil.VIDEO_DSH);
        return Result.success(list);
    }

    /**
     * 视频排行
     * @return
     */
    @GetMapping("/itemPh")
    public Result itemPh () {
        return Result.success(videoService.listPh(MapUtil.PHTS, MapUtil.VIDEO_YFB));
    }

    /**
     * 视频详情
     * @param id
     * @return
     */
    @GetMapping("/itemXq")
    public Result itemXq (@RequestParam("id") Integer id) {
        Map<String, Object> map = videoService.videoById(id);
        map.put("count", (Long)map.get("count") + 1L);
        // 访问量+1
        Video video = new Video();
        video.setId(id);
        video.setCount((Long)map.get("count"));
        videoService.updateById(video);
        return Result.success(map);
    }

    /**
     * 视频详情(redis)
     * @param id
     * @return
     */
    @GetMapping("/itemXqRedis")
    public Result itemXqRedis (@RequestParam("id") Integer id) {
        Map<String, Object> map = videoService.videoById(id);
        Object o = redisUtils.get(MapUtil.VIDEO_COUNT + id);
        if (o == null) {
            map.put("count", (Long)map.get("count") + 1L);
            // 访问量+1
            Video video = new Video();
            video.setId(id);
            video.setCount((Long)map.get("count"));
            videoService.updateById(video);
            redisUtils.set(MapUtil.VIDEO_COUNT + id, map.get("count"));
        } else {
            redisUtils.incr(MapUtil.VIDEO_COUNT + id, 1L);
            map.put("count", (int)o + 1);
        }
        return Result.success(map);
    }

    /**
     * 个人视频
     * @param current
     * @param size
     * @return
     */
    @GetMapping("/listByUserId")
    public Result listByUserId(@RequestParam(defaultValue = "1", name = "current") Integer current,
                       @RequestParam(defaultValue = "8", name = "size") Integer size,
                       @RequestParam("userId") Long userId){
        Page<Map<String, Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> mapIPage = videoService.listByUserId(page, userId);
        return Result.success(mapIPage);
    }

    /**
     * 上传视频
     * @param file
     * @return
     */
    @PostMapping("/uploadAlyVideo")
    public Result uploadAlyVideo(MultipartFile file){
        String videoId = ossService.uploadVideoAly(file);
        return Result.success(videoId);
    }

    /**
     * 保存
     * @param video
     * @return
     */
    @PostMapping("/saveVideo")
    public Result saveVideo(@RequestBody Video video){
        video.setZt(MapUtil.VIDEO_DSH);
        // 获取视频url
        String urlById = Utils.getUrlById(video.getVideoId());
        video.setVideoUrl(urlById);
        videoService.save(video);
        return Result.success();
    }

    /**
     * 删除视频
     * @param video
     * @return
     */
    @PostMapping("/delete")
    public Result delete(@RequestBody Video video){
        ossService.removeMoreAlyVideo(video.getVideoId());
        return Result.success();
    }

    @Autowired
    private RecordAdminService recordAdminService;

    @Autowired
    private MessageService messageService;

    /**
     * 驳回视频
     * @param video
     * @return
     */
    @PostMapping("/bhAdmin")
    public Result bhAdmin (@RequestBody Video video) {
        video.setZt(MapUtil.VIDEO_YBH);
        videoService.updateById(video);
        // 发消息
        Message message = new Message();
        message.setMessageTitle(MapUtil.XTTZ);
        message.setMessageText("你的视频《" + video.getVideoTitle() + "》已被驳回");
        message.setMessageType(MapUtil.XXLX_XT);
        message.setThatId(MapUtil.GLYID);
        message.setThisId(video.getUserId());
        // 后台记录
        recordAdminService.xr("驳回视频：" + video.getVideoTitle());
        messageService.save(message);
        return Result.success("已驳回");
    }

    /**
     * 发布
     * @param video
     * @return
     */
    @PostMapping("/fbAdmin")
    public Result fbAdmin (@RequestBody Video video) {
        video.setZt(MapUtil.VIDEO_YFB);
        videoService.updateById(video);
        // 发消息
        Message message = new Message();
        message.setMessageTitle(MapUtil.XTTZ);
        message.setMessageText("你的视频《" + video.getVideoTitle() + "》已通过审核");
        message.setMessageType(MapUtil.XXLX_XT);
        message.setThatId(MapUtil.GLYID);
        message.setThisId(video.getUserId());
        // 后台记录
        recordAdminService.xr("审批通过：" + video.getVideoTitle());
        messageService.save(message);
        return Result.success("已发布");
    }

    /**
     * 模糊查询
     * @param text
     * @return
     */
    @GetMapping("/search")
    public Result search(@RequestParam(defaultValue = "", value = "text") String text,
                         @RequestParam(defaultValue = "1", name = "current") Integer current,
                         @RequestParam(defaultValue = "8", name = "size") Integer size){
        Page<Map<String, Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> search = videoService.search(page, text);
        return Result.success(search);
    }
}

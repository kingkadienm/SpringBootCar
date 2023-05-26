package com.superb.handler;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.superb.common.MapUtil;
import com.superb.entity.News;
import com.superb.entity.User;
import com.superb.entity.Video;
import com.superb.service.NewsService;
import com.superb.service.UserService;
import com.superb.service.VideoService;
import com.superb.util.RedisUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * 定时任务
 * @author Superb
 * @date 2021/3/18 - 14:36
 */
@Component
public class SchedulerTask {

    @Autowired
    private UserService userService;

    @Autowired
    private RedisUtils redisUtils;

    @Autowired
    private VideoService videoService;

    @Autowired
    private NewsService newsService;

    // 每天12点执行
    @Scheduled(cron="0 0 12 * * ?")
    private void process(){
        User user = new User();
        user.setGraded(MapUtil.WQD);
        userService.update(user, new QueryWrapper<User>().eq("graded", MapUtil.YQD));
    }

    @Scheduled(cron="0 0 12 * * ?")
    private void redisNewsToDataBase(){
        List<Integer> idNewsList = newsService.idList();
        for (Integer id : idNewsList) {
            Object o = redisUtils.get(MapUtil.NEWS_COUNT + id);
            if (o != null) {
                News news = new News();
                news.setId(id);
                news.setCount(new Long(o.toString()));
                newsService.updateById(news);
            }
        }
    }

    @Scheduled(cron="0 0 12 * * ?")
    private void redisVideoToDataBase(){
        List<Integer> idVideoList = videoService.idList();
        for (Integer id : idVideoList) {
            Object o = redisUtils.get(MapUtil.VIDEO_COUNT + id);
            if (o != null) {
                Video video = new Video();
                video.setId(id);
                video.setCount(new Long(o.toString()));
                videoService.updateById(video);
            }
        }
    }
}

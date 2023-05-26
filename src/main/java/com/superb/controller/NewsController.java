package com.superb.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.common.MapUtil;
import com.superb.entity.Message;
import com.superb.entity.News;
import com.superb.entity.Photo;
import com.superb.entity.User;
import com.superb.service.*;
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
 * @since 2021-03-25
 */
@RestController
@RequestMapping("/news")
public class NewsController {

    @Autowired
    private NewsService newsService;

    @Autowired
    private MessageService messageService;

    @Autowired
    private RedisUtils redisUtils;

    private int count = 0;

    /**
     * 查询所有已发布  news  附加user
     * @param current
     * @param size
     * @return
     */
    @GetMapping("/list")
    public Result list (@RequestParam(defaultValue = "1",value = "current") Integer current,
                        @RequestParam(defaultValue = "10",name = "size") Integer size) {
        Page<Map<String ,Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> list = newsService.listNews(page, MapUtil.YFB);
        return Result.success(list);
    }

    /**
     * 相关文章推荐列表 已发布
     * @param current
     * @param size
     * @return
     */
    @GetMapping("/listNewsByStyleId")
    public Result listNewsByStyleId(@RequestParam(defaultValue = "1", name = "current") Integer current,
                                     @RequestParam(defaultValue = "5", name = "size") Integer size, @RequestParam("styleId")Integer styleId){
        Page<Map<String, Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> mapIPage = newsService.listByStyleId(page, styleId);
        return Result.success(mapIPage);
    }


    /**
     * 查询所有已驳回  news  附加user
     * @param current
     * @param size
     * @return
     */
    @GetMapping("/listAdminYbh")
    public Result listAdminYbh (@RequestParam(defaultValue = "1",value = "current") Integer current,
                        @RequestParam(defaultValue = "10",name = "size") Integer size) {
        Page<Map<String ,Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> list = newsService.listNews(page, MapUtil.YBH);
        return Result.success(list);
    }

    /**
     * 查询所有待审核  news  附加user
     * @param current
     * @param size
     * @return
     */
    @GetMapping("/listAdminDsh")
    public Result listAdminDsh (@RequestParam(defaultValue = "1",value = "current") Integer current,
                        @RequestParam(defaultValue = "10",name = "size") Integer size) {
        Page<Map<String ,Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> list = newsService.listNews(page, MapUtil.DSH);
        return Result.success(list);
    }

    /**
     * 即将上市新闻
     * @param current
     * @param size
     * @return
     */
    @GetMapping("/listJjss")
    public Result listJjss(@RequestParam(defaultValue = "1",value = "current") Integer current,
                           @RequestParam(defaultValue = "6",name = "size") Integer size){
        Page<News> page = new Page<>(current, size);
        IPage<News> list = newsService.page(page, new QueryWrapper<News>().ne("sssj", "").ne("sscmc", "").orderByDesc("create_time"));
        return Result.success(list);
    }

    @Autowired
    private RecordAdminService recordAdminService;

    @PostMapping("/bhAdmin")
    public Result bhAdmin (@RequestBody News news) {
        news.setZt(MapUtil.YBH);
        newsService.updateById(news);
        // 发消息
        Message message = new Message();
        message.setMessageTitle(MapUtil.XTTZ);
        message.setMessageText("你的文章《" + news.getTitle() + "》已被驳回");
        message.setMessageType(MapUtil.XXLX_XT);
        message.setThatId(MapUtil.GLYID);
        message.setThisId(news.getUserId());
        // 后台记录
        recordAdminService.xr("驳回文章：" + news.getTitle());
        messageService.save(message);
        return Result.success("已驳回");
    }

    @PostMapping("/fbAdmin")
    public Result fbAdmin (@RequestBody News news) {
        news.setZt(MapUtil.YFB);
        newsService.updateById(news);
        // 发消息
        Message message = new Message();
        message.setMessageTitle(MapUtil.XTTZ);
        message.setMessageText("你的文章《" + news.getTitle() + "》已通过审核");
        message.setMessageType(MapUtil.XXLX_XT);
        message.setThatId(MapUtil.GLYID);
        message.setThisId(news.getUserId());
        // 后台记录
        recordAdminService.xr("审批通过：" + news.getTitle());
        messageService.save(message);
        return Result.success("已发布");
    }


    /**
     * 查询用户所有已审核news  附加user
     * @param current
     * @param size
     * @return
     */
    @GetMapping("/item")
    public Result item (@RequestParam(defaultValue = "1",value = "current") Integer current,
                        @RequestParam(defaultValue = "10",name = "size") Integer size,
                        @RequestParam("userId") Long userId) {
        Page<Map<String ,Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> list = newsService.itemNews(page, userId, MapUtil.YFB);
        return Result.success(list);
    }

    /**
     * 查询用户所有news  附加user
     * @param current
     * @param size
     * @return
     */
    @GetMapping("/itemNewsSy")
    public Result itemNewsSy (@RequestParam(defaultValue = "1",value = "current") Integer current,
                        @RequestParam(defaultValue = "5",name = "size") Integer size,
                        @RequestParam("userId") Long userId) {
        Page<Map<String ,Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> list = newsService.itemNewsSy(page, userId);
        return Result.success(list);
    }

    /**
     * news左侧轮播图
     * @return
     */
    @GetMapping("/itemLbt")
    public Result itemLbt () {
        // 总条数 / 每页显示 = 完整页数  i!=0
        int i = newsService.count(new QueryWrapper<News>().isNotNull("news_photo").eq("zt", MapUtil.YFB)) / MapUtil.sizeA;

        Page<News> page = new Page<>((++count % i) + 1, MapUtil.sizeA);

        return Result.success(newsService.page(page, new QueryWrapper<News>().isNotNull("news_photo").eq("zt", MapUtil.YFB).orderByDesc("create_time")).getRecords());
    }

    /**
     * news文章
     * @return
     */
    @GetMapping("/itemWz")
    public Result itemWz () {
        return Result.success(newsService.listWz(MapUtil.WZTS, MapUtil.YFB));
    }

    /**
     * news排行
     * @return
     */
    @GetMapping("/itemPh")
    public Result itemPh () {
        return Result.success(newsService.listPh(MapUtil.PHTS, MapUtil.YFB));
    }

    /**
     * 文章详情
     * @param id
     * @return
     */
    @GetMapping("/itemXq")
    public Result itemXq (@RequestParam("id") Integer id) {
        Map<String, Object> map = newsService.newsById(id);
        map.put("count", (Long)map.get("count") + 1L);
        // 访问量+1
        News news = new News();
        news.setId(id);
        news.setCount((Long)map.get("count"));
        newsService.updateById(news);
        return Result.success(map);
    }

    /**
     * 文章详情(redis存储访问量)
     * @param id
     * @return
     */
    @GetMapping("/itemXqRedis")
    public Result itemXqRedis (@RequestParam("id") Integer id) {
        Map<String, Object> map = newsService.newsById(id);

        Object o = redisUtils.get(MapUtil.NEWS_COUNT + id);
        if (o == null) {
            map.put("count", (Long)map.get("count") + 1L);
            // 访问量+1
            News news = new News();
            news.setId(id);
            news.setCount((Long)map.get("count"));
            newsService.updateById(news);
            redisUtils.set(MapUtil.NEWS_COUNT + id, map.get("count"));
        } else {
            redisUtils.incr(MapUtil.NEWS_COUNT + id, 1L);
            map.put("count", (int)o + 1);
        }
        return Result.success(map);
    }

    /**
     * 查询一条news 用户发布news第二步初始化
     * @param id
     * @return
     */
    @GetMapping("/itemById")
    public Result itemById (@RequestParam("id") Integer id) {
        Map<String, Object> map = newsService.itemById(id);
        return Result.success(map);
    }



    //***********************************后台***********************************//


    @Autowired
    private OssService ossService;

    @Autowired
    private RecordService recordService;

    @Autowired
    private UserService userService;

    @Autowired
    private PhotoService photoService;

    /**
     * 上传新闻图集
     * @param file
     * @param news 传id传标题
     * @return
     */
    @PostMapping("/uploadNewsTJ")
    public Result uploadNewsTJ(MultipartFile file, News news) {
        String url = ossService.uploadFile(file, MapUtil.NEWS_TJ);
        Photo photo = new Photo();
        photo.setPhotoUrl(url);
        photo.setNewsId(news.getId());
        photoService.save(photo);
        // 日志
        User byId = userService.getById(news.getUserId());
        recordService.xr(byId.getUserId().toString(), byId.getUserName(), MapUtil.SCTJ, news.getId().toString(), news.getTitle());
        return Result.success();
    }

    /**
     * 上传图集完成 修改状态
     * @param news
     * @return
     */
    @PostMapping("/tjwc")
    public Result tjwc(@RequestBody News news) {
        news.setZt(MapUtil.DSH);
        newsService.updateById(news);
        return Result.success(news);
    }

    /**
     * 发布有图文章
     * @param file
     * @param news
     * @return
     */
    @PostMapping("/fbytwz")
    public Result fbytwz(MultipartFile file, News news) {
        //返回上传到oss的路径
        String url = ossService.uploadFile(file, MapUtil.NEWS_TX);
        news.setNewsPhoto(url);
        news.setZt(MapUtil.YBJ);
        String uuid = Utils.getUUID();
        news.setWybs(uuid);
        newsService.save(news);
        // 日志
        News wybs = newsService.getOne(new QueryWrapper<News>().eq("wybs", uuid));
        User byId = userService.getById(wybs.getUserId());
        recordService.xr(byId.getUserId().toString(), byId.getUserName(), MapUtil.FBWZ, wybs.getId().toString(), wybs.getTitle());
        return Result.success(wybs);
    }

    /**
     * 发布无图文章
     * @param news
     * @return
     */
    @PostMapping("/fbwtwz")
    public Result fbwtwz(@RequestBody News news) {
        String uuid = Utils.getUUID();
        news.setWybs(uuid);
        news.setZt(MapUtil.YBJ);
        newsService.save(news);
        // 日志
        News wybs = newsService.getOne(new QueryWrapper<News>().eq("wybs", uuid));
        User byId = userService.getById(wybs.getUserId());
        recordService.xr(byId.getUserId().toString(), byId.getUserName(), MapUtil.FBWZ, wybs.getId().toString(), wybs.getTitle());
        return Result.success(wybs);
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
        IPage<Map<String, Object>> search = newsService.search(page, text);
        return Result.success(search);
    }

}

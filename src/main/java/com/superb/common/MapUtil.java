package com.superb.common;

/**
 * @author Superb
 * @date 2021/1/5 - 17:25
 * @E_mail superb12580@163.com
 */
public class MapUtil {
    //上传文件夹名称
    public static final String USER = "car-home/user";
    public static final String NEWS_TX = "car-home/news/tx";
    public static final String NEWS_TJ = "car-home/news/tj";
    public static final String STYLE_TX = "car-home/style/tx";
    public static final String STYLE_LBT = "car-home/style/lbt";
    public static final String STYLE_TJ = "car-home/style/tj";
    public static final String ESSAY = "car-home/essay";
    public static final String FOLD = "car-home/fold";

    //发布了文章
    public static final String FBWZ = "发布文章";
    public static final String SCTJ = "上传图集";

    // 文章审核发布 2已编辑 3待审核 4已发布 5已驳回
    public static final Integer YBJ = 2;
    public static final Integer DSH = 3;
    public static final Integer YFB = 4;
    public static final Integer YBH = 5;

    // 视频审核发布 1待审核 2通过 3已驳回
    public static final Integer VIDEO_DSH = 1;
    public static final Integer VIDEO_YFB = 2;
    public static final Integer VIDEO_YBH = 3;


    // 管理员Id
    public static final Long GLYID = 1L;
    public static final String QCZJGLY = "汽车之家管理员";
    public static final String QCZJGLYXG = "汽车之家管理员修改了用户个人信息";
    public static final String SCTX = "用户上传了头像";
    public static final String ZXQD = "用户进行了签到";
    public static final String BJXX = "用户修改了个人信息";
    public static final String XGMM = "用户修改了个人密码";


    public static final Integer YRZ = 1;
    public static final Integer WRZ = 0;

    // 文章默认条数
    public static final Integer WZTS = 9;
    // 文章视频排行条数
    public static final Integer PHTS = 10;

    public static final Integer YSC = 1;
    public static final Integer WSC = 0;


    // 签到标志量
    public static final Integer YQD = 1;
    public static final Integer WQD = 0;

    //
    public static final Integer YJY = 1;
    public static final Integer YKQ = 0;

    // 已关注
    public static final Integer YGZ = 1;
    // 互相关注
    public static final Integer HXGZ = 1;
    // 未关注
    public static final Integer WGZ = 0;

    // 日志使用
    public static final String ZCJCYZM = "注册接收验证码";
    public static final String ZCCG = "注册成功";
    public static final String DLCG = "登录成功";
    public static final String ZXCG = "注销成功";
    public static final String MMCW = "密码错误，登录失败";
    public static final String YHBCZ = "用户不存在，登录失败";
    public static final String MMXGCG = "密码修改成功";
    public static final String DZDT = "点赞动态";
    public static final String DZPL = "点赞评论";
    public static final String QXDZ = "取消点赞";
    public static final String GZ = "关注";
    public static final String QXGZ = "取消关注";
    public static final String SC = "收藏";
    public static final String QXSC = "取消收藏";
    public static final String PL = "评论";
    public static final String SCPL = "删除评论";
    public static final String FBDT = "发表动态";
    public static final String SCDT = "删除动态";
    public static final String PLSCDT = "批量删除动态";
    public static final String ZFDT = "转发动态";
    public static final String SCZF = "删除转发";
    public static final String FSXX = "发送消息";
    public static final String SCXX = "删除消息";

    // 通知

    public static final String XTTZ = "系统通知";
    public static final String GZTZ = "关注通知";
    public static final String DTTZ = "动态通知";
    public static final String GXTZ = "更新通知";

    //通知内容
    public static final String HYZCQCZJ = "欢迎注册汽车之家";
    public static final String YHDZLNDDT = "用户点赞了你的动态";
    public static final String YHDZLNDPL = "用户点赞了你的评论";
    public static final String YHGZLN = "用户关注了你";
    public static final String YHPLLNDDT = "用户评论了你的动态";
    public static final String YHZFLNDDT = "用户转发了你的动态";
    public static final String NDGZGXLDT = "你的关注更新了动态";

    // 消息类型
    public static final Integer XXLX_XT = 0;
    public static final Integer XXLX_DT = 1;
    public static final Integer XXLX_SX = 2;
    public static final Integer XXLX_PL = 3;

    // 一次显示
    public static final Integer sizeXS = 5;


    // 数据类型表
    public static final String DATA_TYPE_JB = "级别";
    public static final String DATA_TYPE_CS = "厂商";
    public static final String DATA_TYPE_HBBZ = "环保标准";
    public static final String DATA_TYPE_NYLX = "能源类型";
    public static final String DATA_TYPE_JQFS = "进气方式";
    public static final String DATA_TYPE_QDFS = "驱动方式";
    public static final String DATA_TYPE_ZDLX = "制动类型";
    public static final String DATA_TYPE_RYBH = "燃油标号";
    public static final String DATA_TYPE_GB = "国别";


    // 默认页码
    public static final Integer MRYM = 1;
    public static final Integer sizeA = 4;
    public static final Integer sizeB = 8;
    public static final Integer sizeC = 10;

    /*******************     Redis开始     **********************/

    // 验证码key
    public static final String REGISTER_CODE = "register:code:";
    // 限制24小时内发送3次
    public static final String REGISTER_COUNT = "register:count:";
    // 验证码有效期
    public static final Integer REGISTER_CODE_YXQ = 60 * 5;
    // 次数限制时长
    public static final Integer REGISTER_COUNT_SXQ = 60 * 60 * 24;

    public static final String USER_KEY = "user:";

    public static final Integer USER_SXQ = 60 * 60 * 8;

    // 文章访问量key
    public static final String NEWS_COUNT = "news:count:";

    // 视频访问量key
    public static final String VIDEO_COUNT = "video:count:";

    // 热门车型
    public static final String CAR_DJL = "car:djl:";

    // ip地址
    public static final String USER_IP = "user:ip:";

    // ip地址(admin)
    public static final String ADMIN_IP = "admin:ip:";

    /*******************     Redis结束     **********************/
}

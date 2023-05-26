package com.superb.handler;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 自动填充
 * @author Superb
 * @date 2020/11/10 - 13:47
 * @E_mail superb12580@163.com
 */
@Component
public class MyMetaObjectHandler implements MetaObjectHandler {
    @Override
    public void insertFill(MetaObject metaObject) {
        Date date = new Date();
        this.strictInsertFill(metaObject,"createTime",String.class,getDateString(date));
        this.strictInsertFill(metaObject,"updateTime",String.class,getDateString(date));
    }

    @Override
    public void updateFill(MetaObject metaObject) {
        Date date = new Date();
        this.strictUpdateFill(metaObject,"updateTime",String.class,getDateString(date));
    }

    public static String getDateString(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return simpleDateFormat.format(date);
    }
}

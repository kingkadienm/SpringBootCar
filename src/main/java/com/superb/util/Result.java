package com.superb.util;

import lombok.AllArgsConstructor;
import lombok.Data;

/**
 * 统一返回结果集
 * @author Superb
 * @date 2020/11/10 - 18:21
 * @E_mail superb12580@163.com
 */
@Data
@AllArgsConstructor
public class Result {
    /**
     * 200 成功
     * 400 失败
     * 250 参数为空
     * 350 未登录
     * 300 返回null
     */
    private Integer code;
    private String msg;
    private Object data;

    public Result(Integer code, String msg, Object data) {
        this.code = code;
        this.msg = msg;
        this.data = data;
    }

    public static Result success(Object data){
        return new Result(200,"操作成功",data);
    }
    public static Result success(String msg, Object data){
        return new Result(200,msg,data);
    }
    public static Result success(String msg){
        return new Result(200,msg,null);
    }
    public static Result success() {
        return new Result(200, "", null);
    }
    public static Result fail(){
        return new Result(400 ,"",null);
    }
    public static Result fail(String msg){
        return new Result(400,msg,null);
    }

    public static Result fail(Integer code){
        String msg;
        switch (code){
            case 150:
                msg = "用户不存在，请重试";
                break;
            case 250:
                msg = "参数有误，请重试";
                break;
            case 300:
                msg = "空空如也";
                break;
            case 350:
                msg = "未登录，请重试";
                break;
            case 450:
                msg = "无操作权限";
                break;
            default://400
                msg = "操作失败，请重试";
        }
        return new Result(code,msg,null);
    }
}

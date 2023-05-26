package com.superb.exception;

/**
 * 自定义异常类
 *
 * @Author Superb
 * @Date: 2022/10/18 6:10 PM
 */
public class CustomException extends RuntimeException{

    public CustomException(String msg) {
        super(msg);
    }
}

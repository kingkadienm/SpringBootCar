package com.superb.handler;

import com.superb.exception.CustomException;
import com.superb.util.Result;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * @Author Superb
 * @Date: 2022/10/18 5:09 PM
 */
@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(Exception.class)
    public Result exception(Exception e) {
        e.printStackTrace();
        return Result.fail("系统异常，请稍后再试！");
    }

    @ExceptionHandler(CustomException.class)
    public Result customException(Exception e) {
        e.printStackTrace();
        return Result.fail(e.getMessage());
    }
}

package com.hotel.exception;

/**
 *    密码错误异常
 */
public class UpwdException extends RuntimeException {
    public UpwdException(String message) {
        super(message);
    }
}
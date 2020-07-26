package com.yyrm.portal.utils;


/**
 * @author yyrm
 *
 */
public class BaseException extends RuntimeException {
	private int code;

	public BaseException() {
	}
	
	/**
	 * @param code 错误代码
	 */
	public BaseException(int code) {
		super("code=" + code);
		this.code = code;
	}

	/**
	 * @param message 错误消息
	 */
	public BaseException(String message) {
		super(message);
	}

	/**
	 * @param cause 捕获的异常
	 */
	public BaseException(Throwable cause) {
		super(cause);
	}

	/**
	 * @param message 错误消息
	 * @param cause 捕获的异常
	 */
	public BaseException(String message, Throwable cause) {
		super(message, cause);
	}
	
	/**
	 * @param code 错误代码
	 * @param message 错误消息
	 */
	public BaseException(int code, String message) {
		super(message);
		this.code = code;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}
}

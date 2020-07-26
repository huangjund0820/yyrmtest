package com.yyrm.portal.utils;


/**
 * @author yyrm
 *
 */
public interface Consts {

	String AVATAR = "";

	String SEPARATOR = ",";

	String SEPARATOR_X = "x";

	String ROLE_ADMIN = "admin";

	int PAGE_DEFAULT_SIZE = 10;

	int IDENTITY_STEP = 1; // 自增步进

	int DECREASE_STEP = -1; // 递减

	int TIME_MIN = 1000; // 最小时间单位, 1秒

	// 忽略值
	int IGNORE = -1;

	int ZERO = 0;

	// 禁用状态
	int STATUS_CLOSED = 1;

	/* 状态-初始 */
	int STATUS_NORMAL = 0;

	/* 状态-锁定 */
	int STATUS_LOCKED = 1;

	int STATUS_HIDDEN = 1;

	int CODE_BIND = 1;   // bind email
	int CODE_FORGOT = 2; // forgot password
	int CODE_REGISTER = 3;

	int CODE_STATUS_INIT = 0;      // 验证码-初始
	int CODE_STATUS_CERTIFIED = 1; // 验证码-已使用

	String CACHE_USER = "userCaches";

	String EMAIL_TEMPLATE_CODE = "email_code.ftl";

}


package com.yyrm.portal.web.controller.site;

/**
 * 配置
 *
 */
public interface Views {


    /**
     * 登录
     */
    String LOGIN = "/auth/login";

    /**
     * 注册
     */
    String REGISTER = "/auth/register";


    /**
     * 找回密码
     */
    String FORGOT = "/auth/forgot";

    /**
     * 首页
     */
    String INDEX = "/index";

    String USER_METHOD_TEMPLATE = "/user/method_%s";

    /**
     * 个人-修改头像
     */
    String SETTINGS_AVATAR = "/settings/avatar";

    /**
     * 个人-修改密码
     */
    String SETTINGS_PASSWORD = "/settings/password";

    /**
     * 个人-修改基本信息
     */
    String SETTINGS_PROFILE = "/settings/profile";

    /**
     * 个人-修改邮箱
     */
    String SETTINGS_EMAIL = "/settings/email";


    /**
     * 个人-我的申请 myapply
     */
    String SETTINGS_APPLY = "/settings/apply";

    /**
     * 个人-我的简历 myresume
     */
    String SETTINGS_MYRESUME= "/settings/resume";

    /**
     * 个人-我的收藏 mycollect
     */
    String SETTINGS_MYCOLLECT = "/settings/collect";

    /***
     * 首页
     */
    String REDIRECT_INDEX = "redirect:/index";


    String RECRUIT_SOCIETY = "/recruit/society";
    String RECRUIT_SCHOOL = "/recruit/school";
    String RECRUIT_ORG = "/recruit/org";

}

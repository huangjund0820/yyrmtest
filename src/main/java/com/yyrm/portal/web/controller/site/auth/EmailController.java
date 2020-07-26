package com.yyrm.portal.web.controller.site.auth;

import com.yyrm.portal.utils.Consts;
import com.yyrm.portal.utils.Result;
import com.yyrm.portal.modules.data.AccountProfile;
import com.yyrm.portal.modules.data.UserVO;
import com.yyrm.portal.modules.service.MailService;
import com.yyrm.portal.modules.service.SecurityCodeService;
import com.yyrm.portal.modules.service.UserService;
import com.yyrm.portal.web.controller.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.text.MessageFormat;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/email")
public class EmailController extends BaseController {
    @Autowired
    private UserService userService;
    @Autowired
    private MailService mailService;
    @Autowired
    private SecurityCodeService securityCodeService;

    private static final String EMAIL_TITLE = "您正在使用邮箱安全验证服务";

    @GetMapping("/send_code")
    public Result sendCode(String email, @RequestParam(name = "type", defaultValue = "1") Integer type) {
        Assert.hasLength(email, "请输入邮箱地址");
        Assert.notNull(type, "缺少必要的参数");

        String key = email;

        switch (type) {
            case Consts.CODE_BIND:
                AccountProfile profile = getProfile();
                Assert.notNull(profile, "请先登录后再进行此操作");
                key = String.valueOf(profile.getId());

                UserVO exist = userService.getByEmail(email);
                Assert.isNull(exist, "该邮箱已被使用");
                break;
            case Consts.CODE_FORGOT:
                UserVO user = userService.getByEmail(email);
                Assert.notNull(user, "账户不存在");
                key = String.valueOf(user.getId());
                break;
            case Consts.CODE_REGISTER:
                UserVO user1 = userService.getByEmail(email);
                Assert.isNull(user1, "账户存在");
                key = email;
                break;
        }

        String code = securityCodeService.generateCode(key, type, email);
        Map<String, Object> context = new HashMap<>();
        context.put("code", code);

        mailService.sendTemplateEmail(email, EMAIL_TITLE, Consts.EMAIL_TEMPLATE_CODE, context);
        return Result.successMessage("邮件发送成功");
    }

}

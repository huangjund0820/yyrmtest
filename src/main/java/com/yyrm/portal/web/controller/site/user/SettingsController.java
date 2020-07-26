package com.yyrm.portal.web.controller.site.user;

import com.yyrm.portal.utils.Result;
import com.yyrm.portal.utils.Consts;
import com.yyrm.portal.modules.data.AccountProfile;
import com.yyrm.portal.modules.data.UserVO;
import com.yyrm.portal.modules.service.SecurityCodeService;
import com.yyrm.portal.modules.service.UserService;
import com.yyrm.portal.web.controller.BaseController;
import com.yyrm.portal.web.controller.site.Views;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.*;


@Controller
@RequestMapping("/settings")
public class SettingsController extends BaseController {
    @Autowired
    private UserService userService;
    @Autowired
    private SecurityCodeService securityCodeService;

    @GetMapping(value = "/profile")
    public String view(ModelMap model) {
        AccountProfile profile = getProfile();
        UserVO view = userService.get(profile.getId());
        model.put("view", view);
        return view(Views.SETTINGS_PROFILE);
    }

    @GetMapping(value = "/email")
    public String email() {
        return view(Views.SETTINGS_PROFILE);
    }

    @GetMapping(value = "/avatar")
    public String avatar() {
        return view(Views.SETTINGS_AVATAR);
    }

    @GetMapping(value = "/password")
    public String password() {
        return view(Views.SETTINGS_PASSWORD);
    }

    @GetMapping(value = "/apply")
    public String apply() {
        return view(Views.SETTINGS_APPLY);
    }
    @GetMapping(value = "/resume")
    public String resume() {
        return view(Views.SETTINGS_MYRESUME);
    }
    @GetMapping(value = "/collect")
    public String collect() {
        return view(Views.SETTINGS_MYCOLLECT);
    }



    @PostMapping(value = "/profile")
    public String updateProfile(String name, String signature, ModelMap model) {
        Result data;
        AccountProfile profile = getProfile();

        try {
            UserVO user = new UserVO();
            user.setId(profile.getId());
            user.setName(name);

            putProfile(userService.update(user));

            // put 最新信息
            UserVO view = userService.get(profile.getId());
            model.put("view", view);

            data = Result.success();
        } catch (Exception e) {
            data = Result.failure(e.getMessage());
        }
        model.put("data", data);
        return view(Views.SETTINGS_PROFILE);
    }

    @PostMapping(value = "/email")
    public String updateEmail(String email, String code, ModelMap model) {
        Result data;
        AccountProfile profile = getProfile();
        try {
            Assert.hasLength(email, "请输入邮箱地址");
            Assert.hasLength(code, "请输入验证码");

            securityCodeService.verify(String.valueOf(profile.getId()), Consts.CODE_BIND, code);
            // 先执行修改，判断邮箱是否更改，或邮箱是否被人使用
            AccountProfile p = userService.updateEmail(profile.getId(), email);
            putProfile(p);

            data = Result.success();
        } catch (Exception e) {
            data = Result.failure(e.getMessage());
        }
        model.put("data", data);
        return view(Views.SETTINGS_PROFILE);
    }

    @PostMapping(value = "/password")
    public String updatePassword(String oldPassword, String password, ModelMap model) {
        Result data;
        try {
            AccountProfile profile = getProfile();
            userService.updatePassword(profile.getId(), oldPassword, password);

            data = Result.success();
        } catch (Exception e) {
            data = Result.failure(e.getMessage());
        }
        model.put("data", data);
        return view(Views.SETTINGS_PASSWORD);
    }


}

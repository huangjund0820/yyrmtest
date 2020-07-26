package com.yyrm.portal.web.controller.site.auth;

import com.yyrm.portal.utils.Consts;
import com.yyrm.portal.utils.Result;
import com.yyrm.portal.modules.data.AccountProfile;
import com.yyrm.portal.modules.data.UserVO;
import com.yyrm.portal.modules.service.SecurityCodeService;
import com.yyrm.portal.modules.service.UserService;
import com.yyrm.portal.web.controller.BaseController;
import com.yyrm.portal.web.controller.site.Views;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;

/**
 *
 */
@Controller
@ConditionalOnProperty(name = "site.controls.register", havingValue = "true", matchIfMissing = true)
public class RegisterController extends BaseController {
	@Autowired
	private UserService userService;
	@Autowired
	private SecurityCodeService securityCodeService;

	@GetMapping("/register")
	public String view() {
		AccountProfile profile = getProfile();
		if (profile != null) {
			return String.format(Views.REDIRECT_INDEX, profile.getId());
		}
		return view(Views.REGISTER);
	}
	
	@PostMapping("/register")
	public String register(UserVO post, HttpServletRequest request, ModelMap model) {
		String view = view(Views.REGISTER);
		try {

				String code = request.getParameter("code");
				Assert.state(StringUtils.isNotBlank(post.getEmail()), "请输入邮箱地址");
				Assert.state(StringUtils.isNotBlank(code), "请输入邮箱验证码");
				securityCodeService.verify(post.getEmail(), Consts.CODE_REGISTER, code);

			post.setAvatar(Consts.AVATAR);
			userService.register(post);
			Result<AccountProfile> result = executeLogin(post.getUsername(), post.getPassword(), false);
			view = String.format(Views.REDIRECT_INDEX, result.getData().getId());
		} catch (Exception e) {
            model.addAttribute("post", post);
			model.put("data", Result.failure(e.getMessage()));
		}
		return view;
	}

}
package com.yyrm.portal.web.controller.site;

import javax.servlet.http.HttpServletRequest;

import com.yyrm.portal.web.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class IndexController extends BaseController {
	
	@RequestMapping(value= {"/", "/index"})
	public String root(ModelMap model, HttpServletRequest request) {

		return view(Views.INDEX);
	}

	@GetMapping(value = "/society")
	public String society() {
		return view(Views.RECRUIT_SOCIETY);
	}

	@GetMapping(value = "/school")
	public String school() {
		return view(Views.RECRUIT_SCHOOL);
	}
	@GetMapping(value = "/org")
	public String org() {
		return view(Views.RECRUIT_ORG);
	}


}

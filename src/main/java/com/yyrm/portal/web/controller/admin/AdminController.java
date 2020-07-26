package com.yyrm.portal.web.controller.admin;

import com.yyrm.portal.modules.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;


@Controller
public class AdminController {

    @Autowired
    private UserService userService;

	@RequestMapping("/admin")
	public String index(HttpServletRequest request, ModelMap model) {
		pushSystemStatus(request, model);
		model.put("channelCount", "");
        model.put("postCount",  "");
        model.put("commentCount",  "");
        model.put("userCount", userService.count());
		return "/admin/index";
	}
	
	private void pushSystemStatus(HttpServletRequest request, ModelMap model) {
        float freeMemory = (float) Runtime.getRuntime().freeMemory();
        float totalMemory = (float) Runtime.getRuntime().totalMemory();
        float usedMemory = (totalMemory - freeMemory);
        float memPercent = Math.round(freeMemory / totalMemory * 100) ;
        String os = System.getProperty("os.name");
        String javaVersion = System.getProperty("java.version");

        model.addAttribute("freeMemory", freeMemory);
        model.addAttribute("totalMemory", totalMemory / 1024 / 1024);
        model.addAttribute("usedMemory", usedMemory / 1024 / 1024);
        model.addAttribute("memPercent", memPercent);
        model.addAttribute("os", os);
        model.addAttribute("javaVersion", javaVersion);
	}
}

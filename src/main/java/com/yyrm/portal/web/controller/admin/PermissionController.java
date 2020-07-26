package com.yyrm.portal.web.controller.admin;

import com.yyrm.portal.modules.data.PermissionTree;
import com.yyrm.portal.modules.service.PermissionService;
import com.yyrm.portal.web.controller.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 */
@RestController
@RequestMapping("/admin/permission")
public class PermissionController extends BaseController {
    @Autowired
    private PermissionService permissionService;

    @GetMapping("/tree")
    public List<PermissionTree> tree() {
        return permissionService.tree();
    }
}

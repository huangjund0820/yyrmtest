package com.yyrm.portal.modules.service;

import com.yyrm.portal.modules.entity.Permission;
import com.yyrm.portal.modules.entity.RolePermission;

import java.util.List;
import java.util.Set;

public interface RolePermissionService {
    List<Permission> findPermissions(long roleId);
    void deleteByRoleId(long roleId);
    void add(Set<RolePermission> rolePermissions);

}

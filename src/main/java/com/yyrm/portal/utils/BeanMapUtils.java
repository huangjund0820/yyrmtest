package com.yyrm.portal.utils;

import com.yyrm.portal.modules.data.AccountProfile;
import com.yyrm.portal.modules.data.UserVO;
import com.yyrm.portal.modules.entity.User;
import org.springframework.beans.BeanUtils;

/**
 * @author yyrm
 */
public class BeanMapUtils {
    private static String[] USER_IGNORE = new String[]{"password", "extend", "roles"};

    public static UserVO copy(User po) {
        if (po == null) {
            return null;
        }
        UserVO ret = new UserVO();
        BeanUtils.copyProperties(po, ret, USER_IGNORE);
        return ret;
    }

    public static AccountProfile copyPassport(User po) {
        AccountProfile passport = new AccountProfile(po.getId(), po.getUsername());
        passport.setName(po.getName());
        passport.setEmail(po.getEmail());
        passport.setLastLogin(po.getLastLogin());
        passport.setStatus(po.getStatus());
        return passport;
    }


}

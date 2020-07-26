package com.yyrm.portal.modules.repository;

import com.yyrm.portal.modules.entity.SecurityCode;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * @author yyrm
 */
public interface SecurityCodeRepository extends JpaRepository<SecurityCode, Long>, JpaSpecificationExecutor<SecurityCode> {
    SecurityCode findByKeyAndType(String key, int type);
    SecurityCode findByKey(String key);
}

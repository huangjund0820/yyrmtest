package com.yyrm.portal.config;

import com.yyrm.portal.modules.entity.Options;
import com.yyrm.portal.modules.service.MailService;
import com.yyrm.portal.modules.service.OptionsService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;
import org.springframework.web.context.ServletContextAware;

import javax.servlet.ServletContext;
import java.util.List;
import java.util.Map;

/**
 * 加载配置信息到系统
 * @since 3.0
 */
@Slf4j
@Order(2)
@Component
public class ContextStartup implements ApplicationRunner, ServletContextAware {
    @Autowired
    private OptionsService optionsService;
    @Autowired
    private MailService mailService;
    @Autowired
    private SiteOptions siteOptions;

    private ServletContext servletContext;

    @Override
    public void run(ApplicationArguments applicationArguments) throws Exception {
        log.info("initialization ...");
        reloadOptions(true);
        log.info("OK, completed");
    }

    @Override
    public void setServletContext(ServletContext servletContext) {
        this.servletContext = servletContext;
    }

    public void reloadOptions(boolean startup) {
        List<Options> options = optionsService.findAll();

        Map<String, String> map = siteOptions.getOptions();
        options.forEach(opt -> {
            if (StringUtils.isNoneBlank(opt.getKey(), opt.getValue())) {
                map.put(opt.getKey(), opt.getValue());
            }
        });
        servletContext.setAttribute("options", map);
        servletContext.setAttribute("site", siteOptions);
        mailService.config();

        System.setProperty("site.location", siteOptions.getLocation());
    }

}

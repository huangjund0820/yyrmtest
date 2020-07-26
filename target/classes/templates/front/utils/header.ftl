
<!--[if lt IE 9]>
<div class="alert alert-danger alert-dismissible fade in" role="alert" style="margin-bottom:0">
	<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
	<strong>您正在使用低版本浏览器，</strong> 在本页面的显示效果可能有差异。
	建议您升级到
	<a href="http://www.google.cn/intl/zh-CN/chrome/" target="_blank">Chrome</a>
	或以下浏览器：
	<a href="www.mozilla.org/en-US/firefox/‎" target="_blank">Firefox</a> /
	<a href="http://www.apple.com.cn/safari/" target="_blank">Safari</a> /
	<a href="http://www.opera.com/" target="_blank">Opera</a> /
	<a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie" target="_blank">Internet Explorer 9+</a>
</div>
<![endif]-->

<!-- Fixed navbar -->
<header class="site-header headroom">
    <div class="container">
        <nav class="navbar" role="navigation">
            <div class="navbar-header">
                <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${base}/">
                    <img src="${base}/dist/images/logo/logo.png"/>
                </a>
            </div>
            <div class="collapse navbar-collapse">

                <ul class="nav navbar-nav">
                    <li>
                        <a href="${base}/society" nav="tags">社招</a>
                    </li>
                    <li>
                        <a href="${base}/school" nav="tags">校招</a>
                    </li>
                    <li>
                        <a href="${base}/org" nav="tags">企业介绍</a>
                    </li>
                </ul>
                <ul class="navbar-button list-inline" id="header_user">


				<#if profile??>

                    <li class="dropdown">
                        <a href="#" class="user dropdown-toggle" data-toggle="dropdown">
                            <img class="img-circle" src="">
                            <span>${profile.name}</span>
                        </a>
                        <ul class="dropdown-menu" role="menu">

                            <li>
                                <a href="${base}/settings/apply">我的申请</a>
                            </li>
                            <li>
                                <a href="${base}/settings/resume">我的简历</a>
                            </li>
                            <li>
                                <a href="${base}/settings/collect">我的收藏</a>
                            </li>

                            <li>
                                <a href="${base}/settings/profile">账户设置</a>
                            </li>
                            <@shiro.hasPermission name="admin">
                                <li><a href="${base}/admin">后台管理</a></li>
                            </@shiro.hasPermission>
                            <li><a href="${base}/logout">退出</a></li>
                        </ul>
                    </li>
				<#else>
                    <li><a href="${base}/login" class="btn btn-default btn-sm signup">登录</a></li>
                        <li><a href="${base}/register" class="btn btn-primary btn-sm signup">注册</a></li>
				</#if>

                </ul>
            </div>
        </nav>
    </div>
</header>

<script type="text/javascript">
$(function () {
	$('a[nav]').each(function(){  
        $this = $(this);
        if($this[0].href == String(window.location)){  
            $this.closest('li').addClass("active");  
        }  
    });
});
</script>
<!-- Header END -->

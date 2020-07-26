<#-- Layout -->
<#macro layout title keywords description>
<!DOCTYPE html>
<html lang="zh-CN">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--[if IE]>
    <meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'/>
    <![endif]-->


    <title>友招聘</title>

    <link href="${base}/dist/components/pace/themes/pace-theme-minimal.css" rel="stylesheet"/>
    <link href="${base}/dist/components/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${base}/dist/css/style.css" rel="stylesheet"/>
    <link href="${base}/dist/components/font-awesome/css/font-awesome.min.css" rel="stylesheet"/>
    <script src="${base}/dist/components/pace/pace.min.js"></script>
    <script src="${base}/dist/js/jquery.min.js"></script>
    <script src="${base}/dist/components/layer/layer.js"></script>
    <script src="${base}/dist/components/bootstrap/js/bootstrap.min.js"></script>

    <!-- VUE-js  -->
    <script src="${base}/dist/components/vuejs/vue.min.js"></script>

    <!-- 引入样式 -->
    <link rel="stylesheet" href="${base}/dist/components/element/index.css">
    <!-- 引入组件库 -->
    <script src="${base}/dist/components/element/index.js"></script>


    <script type="text/javascript">
        var BASE_PATH = '${base}';
    </script>
   </head>
<body>


    <!-- header -->
    <#include "/front/utils/header.ftl"/>
    <!-- /header -->

    <!-- content -->
    <div class="wrap">
        <!-- Main -->
        <div class="container">
            <#nested>
        </div>
    </div>
    <!-- /content -->

    <!-- footer -->
    <#include "/front/utils/footer.ftl"/>

</body>
</html>
</#macro>
<#include "/admin/utils/ui.ftl"/>
<@layout>

<section class="content-header">
    <h1>系统配置</h1>
    <ol class="breadcrumb">
        <li><a href="${base}/admin">首页</a></li>
        <li class="active">系统配置</li>
    </ol>
</section>
<section class="content container-fluid">
    <div class="row">
        <div class="col-md-12">
            <#include "/admin/message.ftl">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#mail" data-toggle="tab" aria-expanded="false">发件邮箱配置</a></li>

                </ul>
                <div class="tab-content">

                    <div class="tab-pane active" id="mail">
                        <#include "/admin/options/mail.ftl">
                    </div>


                </div>
            </div>
        </div>
    </div>
</section>

</@layout>
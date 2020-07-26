<#include "/admin/utils/ui.ftl"/>
<@layout>


<section class="content container-fluid">
    <div class="row">

        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-red">
                <div class="inner">
                    <h3>${userCount}</h3>
                    <p>用户</p>
                </div>
                <div class="icon">
                    <i class="fa fa-user"></i>
                </div>
                <a href="${base}/admin/user/list" class="small-box-footer">查看<i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <!-- ./col -->
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">系统使用情况</h3>

                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                        </button>
                    </div>
                </div>
                <div class="box-body">
                    <table class="table table-bordered">
                        <tr>
                            <td>内存消耗:</td>
                            <td>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar" style="width: ${memPercent}%; min-width: 2em;">
                                        <span>${usedMemory}M / ${totalMemory}M</span>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:120px;">操作系统:</td>
                            <td>${os}</td>
                        </tr>
                        <tr>
                            <td style="width:120px;">JDK版本:</td>
                            <td>${javaVersion}</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

</@layout>

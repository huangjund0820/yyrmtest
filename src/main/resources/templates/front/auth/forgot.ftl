<#include "/front/utils/layout.ftl"/>

<@layout "重置密码">

<div class="row">
    <div class="col-md-4 col-md-offset-4 floating-box">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">找回密码1</h3>
            </div>
            <div class="panel-body">
                <div id="message">
                    <#include "/front/utils/action_message.ftl"/>
                </div>
                <form id="submitForm" method="POST" action="${base}/forgot" accept-charset="UTF-8">
                    <div class="form-group">
                        <label class="control-label" for="email">邮箱地址</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="email" maxlength="64" data-required data-conditional="email" data-description="email" data-describedby="message" required>
                            <span class="input-group-btn">
                                <button class="btn btn-primary" type="button" id="sendCode" onclick="sendCodeButtonId()">获取验证码</button>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label">验证码</label>
                        <input type="text" class="form-control" name="code" maxlength="6" data-required required>
                    </div>
                    <div class="form-group ">
                    <label class="control-label" for="username">密码</label>
                    <input class="form-control" name="password" id="password" type="password" maxlength="18" placeholder="新密码" data-required required>
            </div>
            <div class="form-group ">
                <label class="control-label" for="username">确认密码</label>
                <input class="form-control" name="password2" type="password" maxlength="18" placeholder="请再输入一次密码" data-required data-conditional="confirm" data-describedby="message" data-description="confirm" required>
            </div>
            <button type="submit" class="btn btn-primary btn-block">
                提 交
            </button>
                </form>
            </div>
        </div>
    </div>
</div>


    <script type="text/javascript">


        function  sendCodeButtonId() {
                var btn = document.getElementById("sendCode");
                    var email = jQuery('input[name=email]').val();
                    if(email == 'null' || email == ''){
                        jQuery('#message').html('<div class="alert alert-success"> 邮箱不能为空  </div>');
                    }else{
                        jQuery.getJSON(BASE_PATH + '/email/send_code', {'email': email, 'type': 2}, function (data) {
                            if (data.code === 0) {
                                $("#sendCode").html('重新发送');
                                jQuery('#message').html('<div class="alert alert-success">' + data.message + '</div>');
                            } else {
                                jQuery('#message').html('<div class="alert alert-danger">' + data.message + '</div>');
                            }

                        }).success(function(e) { })
                            .error(function(e) {  jQuery('#message').html('<div class="alert alert-danger">发生了一点错误：1.请检查邮箱是否正确 2.是否是原账号邮箱 </div>');});
                    }

        }




    </script>
</@layout>
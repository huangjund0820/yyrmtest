<#include "/front/utils/layout.ftl"/>
<@layout "修改用户信息">

<div class="panel panel-default stacked">
	<div class="panel-heading">
		<ul class="nav nav-pills account-tab">
            <li class="active"><a href="email">修改邮箱</a></li>
			<li><a href="password">修改密码</a></li>
		</ul>
	</div>
	<div class="panel-body">
		<div id="message">
		<#include "/front/utils/action_message.ftl"/>
		</div>

		<div class="tab-pane active" id="profile">
			<form id="submitForm" action="email" method="post" class="form-horizontal">
				<div class="form-group">
					<label class="control-label col-lg-3" for="email">邮箱地址</label>
					<div class="col-lg-4">
						<div class="input-group">
							<input type="text" class="form-control" name="email" maxlength="64" required>
							<span class="input-group-btn">
								<button class="btn btn-primary" type="button" id="sendCode" onclick="sendCodeButtonId();">获取验证码</button>
						  	</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-3">验证码</label>
					<div class="col-lg-4">
						<input type="text" class="form-control" name="code" maxlength="6" required>
					</div>
				</div>
				<div class="form-group">
					<div class="text-center">
						<button type="submit" class="btn btn-primary">提交</button>
					</div>
				</div><!-- /form-actions -->
			</form>
		</div>
	</div><!-- /panel-content -->
</div><!-- /panel -->
<script>


	function  sendCodeButtonId() {
		var btn = document.getElementById("sendCode");
		var email = jQuery('input[name=email]').val();
		if(email == 'null' || email == ''){
			jQuery('#message').html('<div class="alert alert-success"> 邮箱不能为空  </div>');
		}else{
			jQuery.getJSON(BASE_PATH + '/email/send_code', {'email': email, 'type': 1}, function (data) {
				if (data.code === 0) {
					$("#sendCode").html('重新发送');
					jQuery('#message').html('<div class="alert alert-success">' + data.message + '</div>');
				} else {
					jQuery('#message').html('<div class="alert alert-danger">' + data.message + '</div>');
				}

			}).success(function(e) { })
					.error(function(e) {  jQuery('#message').html('<div class="alert alert-danger">发生了一点错误：1.请检查邮箱格式是否正确 2.输入的邮箱不能是注册时的邮箱 </div>');});
			;
		}

	}
</script>
</@layout>
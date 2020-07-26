<#include "/front/utils/layout.ftl"/>
<@layout "我的简历">

	<div id="app">

		`
		<template>
			<div>
				<div >
					我的简历
					<el-button @click="editResume" style="margin-left: 1140px;background: red;color: #FFFFFF">编辑简历</el-button>
				</div>
			      <div style="margin-top: 10px;"><hr></div>

				<div style="display:inline-flex;margin-top: 10px;">
					<div class="block">
						<ul>
							<li  @click="toInfo">111</li>
							<li  @click="toWork">222</li>
							<li  @click="toWork">111</li>
							<li  @click="toWork">111</li>
							<li  @click="toWork">111</li>

						</ul>
						</div>


					<!--            基础信息-->
					<div  id="info">
						<p style="font-size: 14px;margin-bottom: 10px;margin-left: 250px">基础信息</p>
						<div class="block2">
							<div style="font-weight:normal">赵小白</div>
							<div style="font-size: 13px;margin-top: 10px">女&nbsp;&nbsp;&nbsp;1990年9月</div>
							<div style="font-size: 13px;margin-top: 20px">手机</div>
							<div style="font-size: 13px;">13666778787</div>
							<div style="font-size: 13px;margin-top: 20px">邮箱</div>
							<div style="font-size: 13px;">13666778787@qq.com</div>
						</div>
					</div>
				</div>

				<!--            工作经历-->
				<div style="margin-top: 50px" id="work">
					<p style="font-size: 14px;margin-bottom: 10px;margin-left: 250px">工作经历</p>
					<div class="block3">
						<div>阿里巴巴集团</div>
						<div style="font-size: 13px;margin-top: 20px">职位</div>
						<div style="font-size: 14px">体验设计师</div>
						<div style="font-size: 13px;margin-top: 20px">起止时间</div>
						<div style="font-size: 14px">2015年8月至2016年10月</div>

						<div style="font-size: 13px;margin-top: 20px">描述</div>
						<div style="font-size: 14px">负责营销推广<br>
							有完善的项目经验，能从系统的角度剔除交互设计方法<br>
							设定平台的整体交互模式，保证产品交互的可用，易用与行为方式一致性,参与界面规范的制定并且推动实施<br>
							乐于分享设计经验,推动提供土堆的设计能力
						</div>
						<div style="margin-top: 20px;">  <hr/></div>
						<div style="margin-top: 20px">百度集团</div>
						<div style="font-size: 13px;margin-top: 20px">职位</div>
						<div style="font-size: 14px">体验设计师</div>
						<div style="font-size: 13px;margin-top: 20px">起止时间</div>
						<div style="font-size: 14px">2015年8月至2016年10月</div>

						<div style="font-size: 13px;margin-top: 20px">描述</div>
						<div style="font-size: 14px">负责营销推广<br>
							有完善的项目经验，能从系统的角度剔除交互设计方法<br>
							设定平台的整体交互模式，保证产品交互的可用，易用与行为方式一致性,参与界面规范的制定并且推动实施<br>
							乐于分享设计经验,推动提供土堆的设计能力
						</div>
					</div>
				</div>


				<!--        教育经历-->
				<div style="margin-top: 20px;"id="education" >
					<p style="font-size: 14px;margin-bottom: 10px;margin-left: 250px">教育经历</p>
					<div class="block4" >
						<div>清华大学美术学院</div>
						<div style="font-size: 13px;margin-top: 20px">学历</div>
						<div style="font-size: 14px">本科</div>
						<div style="font-size: 13px;margin-top: 20px">专业</div>
						<div style="font-size: 14px">工业设计</div>
						<div style="font-size: 13px;margin-top: 20px">起止时间</div>
						<div style="font-size: 14px">2009年8月&nbsp;至&nbsp;2019年10月</div>
					</div>
				</div>

				<!--        作品集-->
				<div style="margin-top: 20px;" id="book">
					<p style="font-size: 14px;margin-bottom: 10px;margin-left: 250px">作品集</p>
					<div class="block5">
						<div> <img src="" style="height: 60px;width: 40px"></img></div>
						<div style="margin-left: 20px">赵小白2020年度作品集.pdf<br>
							<p style="font-size: 13px;margin-top: 10px">上传时间:2019年05月21日</p>
						</div>
					</div>
				</div>

			</div>
		</template>

		`

	</div>

	<script>
		new Vue({
			el: '#app',
			methods: {
				toInfo(){
					document.querySelector("#info").scrollIntoView(true);
				},
				toWork(){
					document.querySelector("#work").scrollIntoView(true);
				},
				toEducation(){
					document.querySelector("#education").scrollIntoView(true);
				},
				toBook(){
					document.querySelector("#book").scrollIntoView(true);
				},
				editResume(){
					this.$router.push('/resume');
				},
			},
			data:{

			}
		})
	</script>


	<style>

		.block {
			padding: 30px;
			background: #fff;
			border: 1px solid #ddd;
			border-radius: 5px;
			width:150px;
			height: auto;

			position:fixed;
		}
		.block2 {
			padding: 10px;
			background: #fff;
			border: 1px solid #ddd;
			border-radius: 5px;
			width:1000px;
			height: 100%;
			margin-left: 250px;

		}
		.block3 {
			padding: 30px;
			background: #fff;
			border: 1px solid #ddd;
			border-radius: 5px;
			width:1000px;
			height: 100%;
			margin-left: 250px;
		}

		.block4 {
			padding: 30px;
			background: #fff;
			border: 1px solid #ddd;
			border-radius: 5px;
			width:1000px;
			height: 100%;
			margin-left: 250px;
		}
		.block5 {
			padding: 30px;
			background: #fff;
			border: 1px solid #ddd;
			border-radius: 5px;
			width:1000px;
			height: 100%;
			margin-left: 250px;
			margin-top: 20px;
			display: inline-flex;
		}
		.handle-box {
			margin-bottom: 20px;
		}
		/deep/ .el-upload--text{
			width: 98px !important;
			height: 34px !important;
			display: inline-grid;
			float: left;
			margin-right: 10px;
			border: 1px solid #DCDFE6;
			border-radius: 3px;
		}
		.el-upload--text .inline-block {
			display: inline-block;
			border: 0px dashed #d9d9d9
		}

		.handle-input {
			width: 200px;
			display: inline-block;
		}
		.table {
			width: 100%;
			font-size: 14px;
		}
		.red {
			color: #ff0000;
		}
		.mr10 {
			margin-right: 10px;
		}
		.crop-demo{
			display: inline-block;;
			align-items: flex-end;
			margin-right: 10px;
		}
		.crop-demo-btn{
			position: relative;
			width: 98px;
			height: 32px;
			line-height: 32px;
			padding: 0 15px;
			background-color: #409eff;
			color: #fff;
			font-size: 12px;
			border-radius: 4px;
			box-sizing: border-box;
		}
		.crop-input{
			position: absolute;
			width: 98px;
			height: 32px;
			left: 0;
			top: 0;
			opacity: 0;
			cursor: pointer;
		}
	</style>

</@layout>
<%@page pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<link rel="stylesheet" href="${APP_PATH}/css/bootstrap.min.css">
<link rel="stylesheet" href="${APP_PATH}/css/font-awesome.min.css">
<link rel="stylesheet" href="${APP_PATH}/css/shouye.css">
<link rel="stylesheet" href="${APP_PATH}/script/doc.min.css">
<style>
.tree li {
	list-style-type: none;
	cursor: pointer;
}
</style>

	<script src="${APP_PATH}/js/jquery-3.3.1.js"></script>
	<script src="${APP_PATH}/js/bootstrap.min.js"></script>
	<script src="${APP_PATH}/script/docs.min.js"></script>
	<script src="${APP_PATH}/layer/layer.js"></script>
</head>

<body>

<div class="container-fluid">

	<div class="row clearfix">
		<div class="col-lg-12 column">

			<nav class="navbar navbar-inverse" role="navigation">
				<div class="container-fluid">
					<div class="navbar-header">
						<div><a class="navbar-brand" style="font-size:32px;" href="#">brand</a></div>
					</div>
					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li>
								<a href="#">智能交互平台</a>
							</li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li style="padding-top:8px;">
								<div class="btn-group">
									<button type="button" class="btn btn-default btn-success dropdown-toggle" data-toggle="dropdown">
										<i class="glyphicon glyphicon-user"></i> ${loginUser.userName}
										<span class="caret"></span>
									</button>
									<ul class="dropdown-menu" role="menu">
										<li class="disabled"><a href="#"><i class="glyphicon glyphicon-cog"></i> 个人设置</a></li>
										<li class="disabled"><a href="#"><i class="glyphicon glyphicon-comment"></i> 消息</a></li>
										<li class="divider"></li>
										<li><a href="${APP_PATH}/logout"><i class="glyphicon glyphicon-off"></i> 退出系统</a></li>
									</ul>
								</div>
							</li>
							<li style="margin-left:10px;padding-top:8px;" class="disabled">
								<button type="button" class="btn btn-default btn-danger">
									<span class="glyphicon glyphicon-question-sign"></span> 帮助
								</button>
							</li>
						</ul>
						<%--<form class="navbar-form navbar-right">
                            <input type="text" class="form-control" placeholder="Search...">
                        </form>--%>
					</div>
				</div>
			</nav>

		</div>
	</div>

	<div class="row">

		<div class="col-sm-2 sidebar" style="margin-top: 20px;margin-left:15px">
			<%--<ul class="nav nav-pills nav-stacked navbar-inverse">
                <li>
                    <a href="${APP_PATH}/workReport/index">工作报表</a>
                </li>
                <li class="active">
                    <a href="#">聊天信息</a>
                </li>
                <li id="box1">
                    <a href="#">
                        <span class="m">用户管理 <b>+</b></span>
                    </a>
                    <ul class='userManage_ul'>
                        <li><a href="#"><span>信息查看</span></a></li>
                        <li><a href="#"><span>信息管理</span></a></li>
                    </ul>
                </li>
                <li class="disabled">
                    <a href="#">操作流水</a>
                </li>
                <li class="disabled">
                    <a href="#">活跃度</a>
                </li>
            </ul>--%>
			<div class="tree">
				<ul style="padding-left:0px;" class="list-group">
					<li class="list-group-item tree-closed" >
						<a href="${APP_PATH}/shouye"><i class="glyphicon glyphicon-dashboard"></i> 控制面板</a>
					</li>

					<li class="list-group-item tree-closed">
						<span><i class="glyphicon glyphicon glyphicon-tasks"></i> 用户管理<span class="badge" style="float: right">2</span></span>
						<ul style="margin-top: 10px;">
							<li style="height: 30px;">
								<a href="${APP_PATH}/user/index" style="color: red;"><i class="glyphicon glyphicon-user"></i>系统用户</a>
							</li>
							<li style="height: 30px;">
								<a href="#"><i class="glyphicon glyphicon-king"></i> 微信用户</a>
							</li>
						</ul>
					</li>

					<li class="list-group-item">
						<span><i class="glyphicon glyphicon glyphicon-tasks"></i> <a href="${APP_PATH}/workReport/index">工作报表 </a></span>
					</li>
					<li class="list-group-item tree-closed">
						<span><i class="glyphicon glyphicon-ok"></i> 对话管理 </span>
					</li>

					<li class="list-group-item disabled">
						<span><i class="glyphicon glyphicon-list-alt"></i> 操作流水 </span>
					</li>
					<li class="list-group-item disabled">
						<span><i class="glyphicon glyphicon-asterisk"></i> 活跃度 </span>
					</li>
				</ul>
			</div>
		</div>

		<div class="col-sm-10 col-sm-offset-2 col-md-10 col-md-offset-2">
			<ol class="breadcrumb">
				<li><a href="#">首页</a></li>
				<li><a href="#">数据列表</a></li>
				<li class="active">新增</li>
			</ol>
			<div class="panel panel-default">
				<div class="panel-heading">
					表单数据
					<div style="float: right; cursor: pointer;" data-toggle="modal"
						 data-target="#myModal">
						<i class="glyphicon glyphicon-question-sign"></i>
					</div>
				</div>
				<div class="panel-body">
					<form role="form">
						<div class="form-group">
							<label >用户名称</label> <input
								type="text" class="form-control" id="username"
								placeholder="请输入用户名称">
						</div>
						<div class="form-group">
							<label >密码</label> <input
								type="text" class="form-control" id="password"
								placeholder="请输入密码">
						</div>
						<div class="form-group">
							<label >电子邮箱</label>
							<input type="email" class="form-control" id="email" placeholder="请输入邮箱地址">
							<p class="help-block label label-warning">请输入合法的邮箱地址, 格式为： xxxx@xxxx.com</p>
						</div>
						<button id="insertBtn" type="button" class="btn btn-success">
							<i class="glyphicon glyphicon-plus"></i> 提交
						</button>
						<button type="button" class="btn btn-danger">
							<i class="glyphicon glyphicon-refresh"></i> 重置
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>

</div>

	<div class="container-fluid">

	</div>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">帮助</h4>
				</div>
				<div class="modal-body">
					<div class="bs-callout bs-callout-info">
						<h4>测试标题1</h4>
						<p>测试内容1，测试内容1，测试内容1，测试内容1，测试内容1，测试内容1</p>
					</div>
					<div class="bs-callout bs-callout-info">
						<h4>测试标题2</h4>
						<p>测试内容2，测试内容2，测试内容2，测试内容2，测试内容2，测试内容2</p>
					</div>
				</div>
				<!--
		  <div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			<button type="button" class="btn btn-primary">Save changes</button>
		  </div>
		  -->
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(function() {
			$(".list-group-item").click(function() {
				if ($(this).find("ul")) {
					$(this).toggleClass("tree-closed");
					if ($(this).hasClass("tree-closed")) {
						$("ul", this).hide("fast");
					} else {
						$("ul", this).show("fast");
					}
				}
			});

			$("#insertBtn")
					.click(
							function() {

								var username = $("#username").val();

								//此处写判断规则即可
								if (username == "") {

									layer.msg("用户信息保存失败", {
										time : 2000,
										icon : 5,
										shift : 6
									}, function() {
									});
									return;
								}

								var loadingIndex = null;
								$
										.ajax({
											type : "POST",
											url : "${APP_PATH}/user/insert",
											data : {
												"userName" : username,
												"password" : $("#password").val(),
												"email" : $("#email").val()
											},

											beforeSend : function() {
												loadingIndex = layer.msg('处理中',
														{
															icon : 16
														});
											},

											success : function(result) {
												layer.close(loadingIndex);//有结果了以后关掉layer效果
												if (result.success) {

													layer
															.msg(
																	"用户信息保存成功",
																	{
																		time : 2000,
																		icon : 6
																	},
																	function() {
																		window.location.href = "${APP_PATH}/user/index";

																	});

												} else {

													layer.msg("用户信息保存失败，请重新输入",
															{
																time : 2000,
																icon : 5,
																shift : 6
															}, function() {
															});

												}//else

											}//success:function()

										});

							});

		});
	</script>
</body>
</html>

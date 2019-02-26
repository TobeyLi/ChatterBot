<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="keys" content="">
    <meta name="author" content="">

	<link rel="stylesheet" type="text/css" href="${APP_PATH}/css/bootstrap.min.css">
	<link rel="stylesheet" href="${APP_PATH}/css/font-awesome.min.css">
	<link rel="stylesheet" href="${APP_PATH}/css/login.css">

  <script src="${APP_PATH}/js/jquery-3.3.1.js"></script>
  <script src="${APP_PATH}/js/bootstrap.min.js"></script>
  <script src="${APP_PATH}/layer/layer.js"></script>

  </head>
  <body>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <div><a class="navbar-brand" href="index.html" style="font-size:32px;">小莫聊天机器人后台管理平台</a></div>
        </div>
      </div>
    </nav>

    <div class="container">
      <h1 style="color:red">${param.errorMsg}</h1>
      <form id="loginFrom" action="doLogin" method="post" class="form-signin" role="form">
        <h2 class="form-signin-heading"><i class="glyphicon glyphicon-user"></i> 用户登录</h2>
		  <div class="form-group has-success has-feedback">
			<input type="text" class="form-control" id="userName" name="userName" placeholder="请输入用户名" autofocus>
			<span class="glyphicon glyphicon-user form-control-feedback"></span>
		  </div>
		  <div class="form-group has-success has-feedback">
			<input type="password" class="form-control" id="password" name="password" placeholder="请输入登录密码" style="margin-top:10px;">
			<span class="glyphicon glyphicon-lock form-control-feedback"></span>
		  </div>
		  <%--<div class="form-group has-success has-feedback">
			<select class="form-control" >
                <option value="member">会员</option>
                <option value="user">管理</option>
            </select>
		  </div>--%>
        <%--<div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> 记住我
          </label>
          <br>
          <label>
            忘记密码
          </label>
          <label style="float:right">
            <a href="reg.html">我要注册</a>
          </label>
        </div>--%>

        <a class="btn btn-lg btn-success btn-block" onclick="dologin()" > 登录</a>
      </form>
    </div>
   
    <script>
    function dologin() {
      //非空校验
      var userName = $("#userName").val();
      //注意：表单元素不会为空，取值是空字符串
      
      if( userName == "" ){
    	//alert(用户登录账户不能为空,请输入);
    	layer.msg("用户名不能为空,请输入", {time:2000, icon:5, shift:6}, function(){});
    	return;
      }
    
      var password = $("#password").val();
       
      if( password == "" ){
    	 // alert("用户密码不能为空，请输入");
    	 layer.msg("用户密码不能为空，请输入", {time:2000, icon:5, shift:6}, function(){});
    	 return;
      }
    
      //提交表单
     // alert("提交表单");
     // $("#loginFrom").submit();
     //使用AJAX提交数据
     //Jquery提供ajax支持
      var loadingIndex;
     $.ajax({
    	 type : "POST",
    	 url : "doAJAXLogin",
    	 data : {
    		 "userName" :userName,
    		 "password" : password
    	 },
    	 beforeSend : function(){
    	 loadingIndex = layer.msg('处理中', {icon: 16});
    		 
    	 },
    	 success : function(result){
    		 layer.close(loadingIndex); 
    		// alert(result);
    	 if(result.success){
    	    window.location.href="${APP_PATH}/shouye";
    	 }else{
    		 layer.msg("用户登录账户或者密码不正确,请重新输入", {time:2000, icon:5, shift:6}, function(){});
    	 }
    	 
    	 }
     });
    }
    </script>
  </body>
</html>
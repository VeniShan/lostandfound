<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;//+"/";
%>

<!DOCTYPE>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="<%=basePath%>/resources/img/favicon.html">

<base href="<%=basePath %>">

<title>地铁失物招领-后台管理系统</title>

<!-- Bootstrap core CSS -->
<link href="<%=basePath%>/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="<%=basePath%>/resources/css/bootstrap-reset.css"
	rel="stylesheet">
<!--external css-->
<link
	href="<%=basePath%>/resources/assets/font-awesome/css/font-awesome.css"
	rel="stylesheet" />
<!-- Custom styles for this template -->
<link href="<%=basePath%>/resources/css/style.css" rel="stylesheet">
<link href="<%=basePath%>/resources/css/style-responsive.css" rel="stylesheet" />
</head>

<body class="login-body">
	<div class="container">
		<form class="form-signin" action="<%=basePath%>/AdminLogin.action" method="post">
			<h2 class="form-signin-heading">管理员登录<br/>地铁失物招领-后台管理系统</h2>
			<div class="login-wrap">
				<input type="text" class="form-control" placeholder="用户名" name="userid" autofocus> 
				<input type="password" class="form-control" placeholder="密码" name="password"> 
				<label class="checkbox"> 
					<input type="checkbox" value="remember-me"> 记住我 
					<span class="pull-right"> <a href="<%=basePath%>/Welcome.action"> 工作人员登录</a></span>
				</label>
				<button class="btn btn-lg btn-login btn-block" type="submit">登录</button>
			</div>
		</form>
	</div>
</body>
</html>

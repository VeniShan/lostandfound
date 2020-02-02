<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="<%=basePath%>/resources/img/favicon.html">

<title>404</title>

<!-- Bootstrap core CSS -->
<link href="<%=basePath%>/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=basePath%>/resources/css/bootstrap-reset.css" rel="stylesheet">
<!--external css-->
<link href="<%=basePath%>/resources/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
<!-- Custom styles for this template -->
<link href="<%=basePath%>/resources/css/style.css" rel="stylesheet">
<link href="<%=basePath%>/resources/css/style-responsive.css" rel="stylesheet" />

</head>

<body class="body-404">
	<div class="container">
		<section class="error-wrapper">
			<i class="icon-404"></i>
			<h1>404</h1>
			<h2>page not found</h2>
			<p class="page-404">
				出了一点小状况，囧<a href="<%=basePath%>/Dashboard.action">返回主页</a>
			</p>
		</section>
	</div>
</body>
</html>

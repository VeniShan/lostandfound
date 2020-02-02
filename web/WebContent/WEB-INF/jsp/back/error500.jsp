<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon"
	href="<%=basePath%>/resources/img/favicon.html">

<title>500</title>

<!-- Bootstrap core CSS -->
<link href="<%=basePath%>/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=basePath%>/resources/css/bootstrap-reset.css" rel="stylesheet">
<!--external css-->
<link href="<%=basePath%>/resources/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
<!-- Custom styles for this template -->
<link href="<%=basePath%>/resources/css/style.css" rel="stylesheet">
<link href="<%=basePath%>/resources/css/style-responsive.css" rel="stylesheet" />

</head>

<body class="body-500">
	<div class="container">
		<section class="error-wrapper">
			<i class="icon-500"></i>
			<h1>Ouch!</h1>
			<h2>500 Page Error</h2>
			<p class="page-500">
				系统好像出问题了，囧 <a href="index.jsp">返回主页</a>
			</p>
		</section>
	</div>
</body>
</html>

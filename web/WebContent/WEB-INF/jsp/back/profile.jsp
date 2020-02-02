<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;//+ "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="vickie">
<link rel="shortcut icon"
	href="<%=basePath%>/resources/img/favicon.html">

<title>个人资料</title>

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
<link href="<%=basePath%>/resources/css/style-responsive.css"
	rel="stylesheet" />

</head>

<body>

	<section id="container" class="">
		<!--header start-->
		<header class="header white-bg">
			<div class="sidebar-toggle-box">
				<div data-original-title="Toggle Navigation" data-placement="right"
					class="icon-reorder tooltips"></div>
			</div>
			<!--logo start-->
			<a href="#" class="logo">地铁失物招领<span>后台管理系统</span></a>
			<!--logo end-->
			<div class="nav notify-row" id="top_menu"></div>
			<div class="top-nav ">
				<!--search & user info start-->
				<ul class="nav pull-right top-menu">
					<li><input type="text" class="form-control search"
						placeholder="搜索"></li>
					<!-- user login dropdown start-->
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <img alt=""
							src="<%=basePath%>/resources/img/avatar1_small.jpg"> <span
							class="username"> <c:if test="${staff!=null }">
									${staff.name }
								</c:if>
						</span> <b class="caret"></b>
					</a>
						<ul class="dropdown-menu extended logout">
							<li><a href="<%=basePath%>/Profile.action"><i
									class=" icon-suitcase"></i>个人信息
							</a></li>
							<li><a href="<%=basePath%>/ProfileEdit.action"><i
									class="icon-cog"></i> 密码修改</a></li>
							<li><a href="#"><i class="icon-bell-alt"></i>检查更新</a></li>
							<li><a href="<%=basePath%>/StaffLogout.action"><i
									class="icon-key"></i> 退出登录 </a></li>
						</ul></li>
					<!-- user login dropdown end -->
				</ul>
				<!--search & user info end-->
			</div>
		</header>
		<!--header end-->

		<!--sidebar start-->
		<aside>
			<div id="sidebar" class="nav-collapse ">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu">
					<li class="sub-menu"><a class=""
						href="<%=basePath%>/Dashboard.action"> <i
							class="icon-dashboard"></i> <span>概览</span>
					</a></li>
					<li class="sub-menu"><a href="javascript:;" class=""> <i
							class="icon-book"></i> <span>帮助</span> <span class="arrow"></span>
					</a>
						<ul class="sub">
							<li><a class="" href="<%=basePath%>/Helpstaff.action">后台使用帮助</a></li>
							<li><a class="" href="<%=basePath%>/Helpuser.action">地铁失物招领FAQ</a></li>
						</ul></li>
					<li><a class="" href="<%=basePath%>/Lost.action"> <i
							class="icon-envelope"></i> <span>失物信息管理 </span>
					</a></li>
					<li class="active"><a href="<%=basePath%>/Profile.action" class=""> <i
							class="icon-glass"></i> <span>个人资料</span>
					</a></li>
					<li><a class="" href="<%=basePath%>/StaffLogout.action"> <i
							class="icon-user"></i> <span>退出登录</span>
					</a></li>
				</ul>
				<!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->
		
		
		
		
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<!-- page start-->
				<div class="row">
					<aside class="profile-nav col-lg-3">
						<section class="panel">
							<div class="user-heading round">
								<a href="#"> <img
									src="<%=basePath%>/resources/img/profile-avatar.jpg" alt="">
								</a>
								<h1>
									<c:if test="${staff!=null }">
									${staff.name }
								</c:if>
								</h1>
								<p>
									<c:if test="${staff.station_id == 1 }">衡山路-地铁站</c:if>
								</p>
							</div>

							<ul class="nav nav-pills nav-stacked">
								<li class="active"><a href="<%=basePath%>/Profile.action">
										<i class="icon-user"></i> 个人资料
								</a></li>
								<li class="active"><a
									href="<%=basePath%>/ProfileEdit.action"> <i
										class="icon-edit"></i> 编辑个人资料
								</a></li>
							</ul>

						</section>
					</aside>
				</div>

				<!-- page end-->
			</section>
		</section>
		<!--main content end-->
	</section>

	<!-- js placed at the end of the document so the pages load faster -->
	<script src="<%=basePath%>/resources/js/jquery.js"></script>
	<script src="<%=basePath%>/resources/js/bootstrap.min.js"></script>
	<script src="<%=basePath%>/resources/js/jquery.scrollTo.min.js"></script>
	<script src="<%=basePath%>/resources/js/jquery.nicescroll.js"
		type="text/javascript"></script>
	<script
		src="<%=basePath%>/resources/assets/jquery-knob/js/jquery.knob.js"></script>

	<!--common script for all pages-->
	<script src="<%=basePath%>/resources/js/common-scripts.js"></script>

	<script>
		//knob
		$(".knob").knob();
	</script>


</body>
</html>

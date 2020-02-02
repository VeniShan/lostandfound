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
<link rel="shortcut icon" href="<%=basePath%>/resources/img/favicon.html">

<title>Basic Table</title>

<!-- Bootstrap core  -->
<link href="<%=basePath%>/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=basePath%>/resources/css/bootstrap-reset.css" rel="stylesheet">
<!--external css-->
<link href="<%=basePath%>/resources/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
<!-- Custom styles for this template -->
<link href="<%=basePath%>/resources/css/style.css" rel="stylesheet">
<link href="<%=basePath%>/resources/css/style-responsive.css" rel="stylesheet" />

</head>

<body>

	<section id="container" class="">
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<!-- page start-->
				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<header class="panel-heading"> 用户列表 </header>
							<table class="table table-striped table-advance table-hover">
								<thead>
									<tr>
										<th><i class="icon-bullhorn"></i> 序号</th>
										<th><i class="icon-bullhorn"></i> 用户系统ID</th>
										<th><i class="icon-question-sign"></i>用户名</th>
										<th><i class="icon-bookmark"></i> 手机IMEI</th>
										<th><i class=" icon-edit"></i> 丢失物品数</th>
										<th><i class=" icon-edit"></i> 找回数</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${userList }" var="user" varStatus="status">
										<tr>
											<td>${status.index + 1 }</td>
											<td><a href="#">${user.id }</a></td>
											<td>${user.userid }</td>
											<td>${user.imei }</td>
											<td><span class="label label-info label-mini">5</span></td>
											<td><span class="label label-info label-mini">3</span></td>
											<td>
												<button class="btn btn-success btn-xs">
													<i class="icon-ok"></i>
												</button>
												<button class="btn btn-primary btn-xs">
													<i class="icon-pencil"></i>
												</button>
												<button class="btn btn-danger btn-xs">
													<i class="icon-trash "></i>
												</button>
											</td>
										</tr>
									</c:forEach>
									
								</tbody>
							</table>
						</section>
					</div>
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
	<script src="<%=basePath%>/resources/js/jquery.nicescroll.js" type="text/javascript"></script>


	<!--common script for all pages-->
	<script src="js/common-scripts.js"></script>


</body>
</html>

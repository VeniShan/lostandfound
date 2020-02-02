<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;// + "/";
%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon"
	href="<%=basePath%>/resources/img/favicon.html">

<title>工作人员管理</title>

<!-- Bootstrap core  -->
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
							class="username"> 
								<c:if test="${admin!=null }">
									${admin.name }
								</c:if>
						</span> <b class="caret"></b>
					</a>
						<ul class="dropdown-menu extended logout">
							<li><a href="<%=basePath%>/Profile.action"><i class=" icon-suitcase"></i>个人信息</a></li>
							<li><a href="<%=basePath%>/ProfileEdit.action"><i class="icon-cog"></i> 密码修改</a></li>
							<li><a href="#"><i class="icon-bell-alt"></i>检查更新</a></li>
							<li><a href="<%=basePath%>/StaffLogout.action"><i class="icon-key"></i> 退出登录 </a></li>
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
						href="<%=basePath%>/AdminDashboard.action"> <i
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
					<li class="active"><a href="<%=basePath%>/StaffList.action"
						class=""> <i class="icon-th"></i> <span>工作人员管理</span>
					</a></li>
					<li><a href="<%=basePath%>/Profile.action" class=""> <i
							class="icon-glass"></i> <span>个人资料</span> 
					</a></li>
					<li><a class="" href="<%=basePath%>/AdminLogout.action"> <i class="icon-user"></i>
							<span>退出登录</span>
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
					<div class="col-lg-12">
						<section class="panel">
							<header class="panel-heading"> 工作人员列表 </header>
							<div class="inbox-body">
								<!-- Modal -->
								<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
									aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h4 class="modal-title">新建工作人员账户</h4>
											</div>
											<div class="modal-body">
												<form class="form-horizontal" role="form"
													action="<%=basePath%>/StaffNew.action" method="post">
													<div class="form-group">
														<label class="col-lg-2 control-label">用户ID</label>
														<div class="col-lg-4">
															<input type="text" class="form-control" name="userid"
																placeholder="">
														</div>
														<label class="col-lg-2 control-label">用户名</label>
														<div class="col-lg-4">
															<input type="text" class="form-control" name="name"
																placeholder="">
														</div>
													</div>
													<div class="form-group">
														<label class="col-lg-2 control-label">密码</label>
														<div class="col-lg-4">
															<input type="password" class="form-control"
																name="password" placeholder="">
														</div>
														<label class="col-lg-2 control-label">地铁站</label>
														<div class="col-lg-4">
															<select class="form-control m-bot15" name="station">
																<option>衡山路</option>
															</select>
														</div>
													</div>
													<div class="form-group">
														<div class="col-lg-offset-2 col-lg-10">
															<button type="submit" class="btn btn-send">提交</button>
															<button type="button" class="btn btn-default">取消</button>
														</div>
													</div>
												</form>
											</div>
										</div>
										<!-- /.modal-content -->
									</div>
									<!-- /.modal-dialog -->
								</div>
								<!-- /.modal -->


								<!-- Modal -->
								<div class="modal fade" id="editModal" tabindex="-1"
									role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h4 class="modal-title">修改工作人员账户</h4>
											</div>
											<div class="modal-body">
												<form class="form-horizontal" role="form"
													action="<%=basePath%>/StaffEdit.action" method="post">
													<div class="form-group">
														<label class="col-lg-2 control-label">用户ID</label>
														<div class="col-lg-4">
															<input type="text" class="form-control" name="userid"
																placeholder="">
														</div>
														<label class="col-lg-2 control-label">用户名</label>
														<div class="col-lg-4">
															<input type="text" class="form-control" name="name"
																placeholder="">
														</div>
													</div>
													<div class="form-group">
														<label class="col-lg-2 control-label">密码</label>
														<div class="col-lg-4">
															<input type="password" class="form-control"
																name="password" placeholder="">
														</div>
														<label class="col-lg-2 control-label">地铁站</label>
														<div class="col-lg-4">
															<select class="form-control m-bot15" name="station">
																<option>衡山路</option>
															</select>
														</div>
													</div>
													<div class="form-group">
														<div class="col-lg-offset-2 col-lg-10">
															<button type="submit" class="btn btn-send">修改</button>
															<button type="button" class="btn btn-default">取消</button>
														</div>
													</div>
												</form>
											</div>
										</div>
										<!-- /.modal-content -->
									</div>
									<!-- /.modal-dialog -->
								</div>
								<!-- /.modal -->

								<!-- Modal -->
								<div class="modal fade" id="deleteModal" tabindex="-1"
									role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h4 class="modal-title">删除工作人员账户</h4>
											</div>
											<div class="modal-body">
												<form class="form-horizontal" role="form"
													action="<%=basePath%>/StaffDelete.action" method="post">
													<div class="form-group">
														<label class="col-lg-4 control-label">确认删除此账户？</label>
													</div>
													<div class="form-group">
														<div class="col-lg-offset-2 col-lg-10">
															<button type="submit" class="btn btn-send">确认</button>
															<button type="button" class="btn btn-default">取消</button>
														</div>
													</div>
												</form>
											</div>
										</div>
										<!-- /.modal-content -->
									</div>
									<!-- /.modal-dialog -->
								</div>
								<!-- /.modal -->




								<div class="inbox-body">
									<div class="mail-option">

										<div class="btn-group">
											<a class="btn btn-compose" data-toggle="modal"
												href="#myModal"> <i class=" icon-plus"></i> 新建工作人员账户
											</a>
										</div>
									</div>
									<table class="table table-striped table-advance table-hover">
										<thead>
											<tr>
												<th><i class="icon-bullhorn"></i> 序号</th>
												<th><i class="icon-bullhorn"></i> 用户ID</th>
												<th><i class="icon-question-sign"></i>用户名</th>
												<th><i class="icon-bookmark"></i> 地铁站</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${staffList }" var="staff"
												varStatus="status">
												<tr>
													<td>${status.index + 1 }</td>
													<td><a href="#">${staff.userid }</a></td>
													<td>${staff.name }</td>
													<td>
														<c:choose>
															<c:when test="${staff.station_id == 1 }">
																衡山路
															</c:when>
														</c:choose>
													</td>
													<td>
														<button class="btn btn-primary btn-xs">
															<i class="icon-pencil"></i>
														</button>
														<button class="btn btn-danger btn-xs">
															<i class="icon-trash "></i>
														</button>
													</td>

													<!-- <td>
														<button class="btn btn-primary btn-xs">
															<a data-toggle="modal" href="#editModal"> 
															<i class="icon-pencil"></i>
															</a>
														</button>
														<button class="btn btn-danger btn-xs">
															<a data-toggle="modal" href="#deleteModal"> 
															<i class="icon-trash "></i>
															</a>
														</button>
													</td>  -->
												</tr>
											</c:forEach>

										</tbody>
									</table>
								</div>

							</div>

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
	<script src="<%=basePath%>/resources/js/jquery.nicescroll.js"
		type="text/javascript"></script>

	<script type="text/javascript"
		src="<%=basePath%>/resources/assets/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>/resources/assets/data-tables/DT_bootstrap.js"></script>


	<!--common script for all pages-->
	<script src="js/common-scripts.js"></script>
	<script src="<%=basePath%>/resources/js/dynamic-table.js"></script>



</body>
</html>

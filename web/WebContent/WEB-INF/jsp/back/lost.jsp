<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;//+ "/";
%>
<!DOCTYPE>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="vickie">
<link rel="shortcut icon"
	href="<%=basePath%>/resources/img/favicon.html">

<title>失物信息管理</title>

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
							<li><a href="<%=basePath%>/Profile.action">"><i
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
					<li class="active"><a class="" href="<%=basePath%>/Lost.action"> <i
							class="icon-envelope"></i> <span>失物信息管理 </span>
					</a></li>
					<li><a href="<%=basePath%>/Profile.action" class=""> <i
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
					<div class="col-lg-12">
						<section class="panel">
							<header class="panel-heading"> 失物信息管理 </header>

							<div class="inbox-body">
								<!-- Modal -->
								<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
									aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h4 class="modal-title">失物信息发布</h4>
											</div>
											<div class="modal-body">
												<form class="form-horizontal" role="form"
													action="<%=basePath%>/LostNew.action" method="post">
													<div class="form-group">
														<label class="col-lg-2 control-label">物品名称</label>
														<div class="col-lg-4">
															<input type="text" class="form-control" name="name"
																placeholder="">
														</div>
														<label class="col-lg-2 control-label">物品类型</label>
														<div class="col-lg-4">
															<select class="form-control m-bot15" name="type">
																<option>生活用品</option>
																<option>通讯设备</option>
																<option>书籍杂志</option>
															</select>
														</div>
													</div>
													<div class="form-group">
														<label class="col-lg-2 control-label">拾取时间 </label>
														<div class="col-lg-4">
															<input type="text" class="form-control" name="datetime"
																placeholder="yyyy-MM-dd HH:mm:ss">
														</div>
														<label class="col-lg-2 control-label">丢失位置</label>
														<div class="col-lg-4">
															<select class="form-control m-bot15" name="lineflag">
																<option>车内</option>
																<option>车外</option>
															</select>
														</div>
													</div>
													<div class="form-group">
														<label class="col-lg-2 control-label">地铁站</label>
														<div class="col-lg-4">
															<select class="form-control m-bot15" name="station">
																<option>衡山路</option>
															</select>
														</div>
														<label class="col-lg-2 control-label">地铁线</label>
														<div class="col-lg-4">
															<select class="form-control m-bot15" name="line">
																<option>1号线</option>
															</select>
														</div>
													</div>
													<div class="form-group">
														<label class="col-lg-2 control-label">联系电话</label>
														<div class="col-lg-4">
															<input type="text" class="form-control" name="phone"
																placeholder="">
														</div>
														<label class="col-lg-2 control-label">状态</label>
														<div class="col-lg-4">
															<select class="form-control m-bot15" name="status">
																<option>在库</option>
																<option>领回</option>
																<option>转移</option>
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


								<div class="inbox-body">
									<div class="mail-option">

										<div class="btn-group">
											<a class="btn btn-compose" data-toggle="modal"
												href="#myModal"> <i class=" icon-plus"></i> 发布
											</a>
										</div>
									</div>
									<table class="table table-striped border-top" id="sample_1">
										<thead>
											<tr>
												<th>序号</th>
												<th>物品名称</th>
												<th class="hidden-phone">物品类型</th>
												<th class="hidden-phone">拾取时间</th>
												<th class="hidden-phone">丢失位置</th>
												<th class="hidden-phone">地铁站</th>
												<th class="hidden-phone">地铁线</th>
												<th class="hidden-phone">联系电话</th>
												<th class="hidden-phone">状态</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${lostList }" var="lost" varStatus="status">
												<tr class="odd gradeX">
													<td>${status.index + 1 }</td>
													<td><a href=#>${lost.name }</a></td>
													<td class="hidden-phone"><c:choose>
															<c:when test="${lost.type_id == 1 }">
																生活用品
															</c:when>
															<c:when test="${lost.type_id == 2 }">
																通讯设备
															</c:when>
															<c:when test="${lost.type_id == 3 }">
																书籍杂志
															</c:when>
														</c:choose></td>
													<td class="hidden-phone"></td>
													<td class="center hidden-phone"><c:choose>
															<c:when test="${lost.line_flag == 1 }">
																车内
															</c:when>
															<c:when test="${lost.line_flag == 0 }">
																车外
															</c:when>
														</c:choose></td>
													<td class="hidden-phone"><c:choose>
															<c:when test="${lost.station_id == 1 }">
																衡山路
															</c:when>
														</c:choose></td>
													<td class="hidden-phone"><c:choose>
															<c:when test="${lost.line_id == 1 }">
																1号线
															</c:when>
														</c:choose></td>
													<td class="hidden-phone">${lost.phone }</td>
													<td class="hidden-phone"><c:choose>
															<c:when test="${lost.status == 1 }">
																<span class="label label-danger">在库</span>
															</c:when>
															<c:when test="${lost.status == 2 }">
																<span class="label label-success">领回</span>
															</c:when>
															<c:when test="${lost.status == 3 }">
																<span class="label label-warning">转移</span>
															</c:when>
														</c:choose></td>
													<td>
														<div class="btn-group">
															<a class="label label-success" data-toggle="modal"
																href="#myModal"> <i class=" icon-pencil"></i> 
															</a>
															<a class="label label-warning" data-toggle="modal"
																href="#myModal"> <i class=" icon-trash"></i> 
															</a>
														</div>
													</td>
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
	<script src="<%=basePath%>/resources/js/common-scripts.js"></script>

	<!--script for this page only-->
	<script src="<%=basePath%>/resources/js/dynamic-table.js"></script>


</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword"
	content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<title>AEAP PMS</title>

<!-- Favicons -->
<link href="${path}/Dashio/img/favicon.png" rel="icon">
<link href="${path}/Dashio/img/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Bootstrap core CSS -->
<link href="${path}/Dashio/lib/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!--external css-->
<link href="${path}/Dashio/lib/font-awesome/css/font-awesome.css"
	rel="stylesheet" />
<!-- Custom styles for this template -->
<link href="${path}/Dashio/css/style.css" rel="stylesheet">
<link href="${path}/Dashio/css/style-responsive.css" rel="stylesheet">

<!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>

<body>
	<section id="container">
		<!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
		<!--header start-->
		<header class="header black-bg">
			<div class="sidebar-toggle-box">
				<div class="fa fa-bars tooltips" data-placement="right"
					data-original-title="Toggle Navigation"></div>
			</div>
			<!--logo start-->
			<a href="${path}/Dashio/index.html" class="logo"><b>DASH<span>IO</span></b></a>
			<!--logo end-->
			<div class="nav notify-row" id="top_menu">
				<!--  notification start -->
				<ul class="nav top-menu">
					<!-- settings start -->
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="${path}/Dashio/index.html#"> <i
							class="fa fa-tasks"></i> <span class="badge bg-theme">4</span>
					</a>
						<ul class="dropdown-menu extended tasks-bar">
							<div class="notify-arrow notify-arrow-green"></div>
							<li>
								<p class="green">You have 4 pending tasks</p>
							</li>
							<li><a href="${path}/Dashio/index.html#">
									<div class="task-info">
										<div class="desc">Dashio Admin Panel</div>
										<div class="percent">40%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-success"
											role="progressbar" aria-valuenow="40" aria-valuemin="0"
											aria-valuemax="100" style="width: 40%">
											<span class="sr-only">40% Complete (success)</span>
										</div>
									</div>
							</a></li>
							<li><a href="${path}/Dashio/index.html#">
									<div class="task-info">
										<div class="desc">Database Update</div>
										<div class="percent">60%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-warning"
											role="progressbar" aria-valuenow="60" aria-valuemin="0"
											aria-valuemax="100" style="width: 60%">
											<span class="sr-only">60% Complete (warning)</span>
										</div>
									</div>
							</a></li>
							<li><a href="${path}/Dashio/index.html#">
									<div class="task-info">
										<div class="desc">Product Development</div>
										<div class="percent">80%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-info" role="progressbar"
											aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
											style="width: 80%">
											<span class="sr-only">80% Complete</span>
										</div>
									</div>
							</a></li>
							<li><a href="${path}/Dashio/index.html#">
									<div class="task-info">
										<div class="desc">Payments Sent</div>
										<div class="percent">70%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-danger"
											role="progressbar" aria-valuenow="70" aria-valuemin="0"
											aria-valuemax="100" style="width: 70%">
											<span class="sr-only">70% Complete (Important)</span>
										</div>
									</div>
							</a></li>
							<li class="external"><a href="${path}/Dashio/#">See All
									Tasks</a></li>
						</ul></li>
					<!-- settings end -->
					<!-- inbox dropdown start-->
					<li id="header_inbox_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle"
						href="${path}/Dashio/index.html#"> <i class="fa fa-envelope-o"></i>
							<span class="badge bg-theme">5</span>
					</a>
						<ul class="dropdown-menu extended inbox">
							<div class="notify-arrow notify-arrow-green"></div>
							<li>
								<p class="green">You have 5 new messages</p>
							</li>
							<li><a href="${path}/Dashio/index.html#"> <span
									class="photo"><img alt="avatar"
										src="${path}/Dashio/img/ui-zac.jpg"></span> <span
									class="subject"> <span class="from">Zac Snider</span> <span
										class="time">Just now</span>
								</span> <span class="message"> Hi mate, how is everything? </span>
							</a></li>
							<li><a href="${path}/Dashio/index.html#"> <span
									class="photo"><img alt="avatar"
										src="${path}/Dashio/img/ui-divya.jpg"></span> <span
									class="subject"> <span class="from">Divya Manian</span>
										<span class="time">40 mins.</span>
								</span> <span class="message"> Hi, I need your help with this. </span>
							</a></li>
							<li><a href="${path}/Dashio/index.html#"> <span
									class="photo"><img alt="avatar"
										src="${path}/Dashio/img/ui-danro.jpg"></span> <span
									class="subject"> <span class="from">Dan Rogers</span> <span
										class="time">2 hrs.</span>
								</span> <span class="message"> Love your new Dashboard. </span>
							</a></li>
							<li><a href="${path}/Dashio/index.html#"> <span
									class="photo"><img alt="avatar"
										src="${path}/Dashio/img/ui-sherman.jpg"></span> <span
									class="subject"> <span class="from">Dj Sherman</span> <span
										class="time">4 hrs.</span>
								</span> <span class="message"> Please, answer asap. </span>
							</a></li>
							<li><a href="${path}/Dashio/index.html#">See all
									messages </a></li>
						</ul></li>
					<!-- inbox dropdown end -->
					<!-- notification dropdown start-->
					<li id="header_notification_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle"
						href="${path}/Dashio/index.html#"> <i class="fa fa-bell-o"></i>
							<span class="badge bg-warning">7</span>
					</a>
						<ul class="dropdown-menu extended notification">
							<div class="notify-arrow notify-arrow-yellow"></div>
							<li>
								<p class="yellow">You have 7 new notifications</p>
							</li>
							<li><a href="${path}/Dashio/index.html#"> <span
									class="label label-danger"><i class="fa fa-bolt"></i></span>
									Server Overloaded. <span class="small italic">4 mins.</span>
							</a></li>
							<li><a href="${path}/Dashio/index.html#"> <span
									class="label label-warning"><i class="fa fa-bell"></i></span>
									Memory #2 Not Responding. <span class="small italic">30
										mins.</span>
							</a></li>
							<li><a href="${path}/Dashio/index.html#"> <span
									class="label label-danger"><i class="fa fa-bolt"></i></span>
									Disk Space Reached 85%. <span class="small italic">2
										hrs.</span>
							</a></li>
							<li><a href="${path}/Dashio/index.html#"> <span
									class="label label-success"><i class="fa fa-plus"></i></span>
									New User Registered. <span class="small italic">3 hrs.</span>
							</a></li>
							<li><a href="${path}/Dashio/index.html#">See all
									notifications</a></li>
						</ul></li>
					<!-- notification dropdown end -->
				</ul>
				<!--  notification end -->
			</div>
			<div class="top-menu">
				<ul class="nav pull-right top-menu">
					<li><a class="logout" href="${path}/Dashio/login.html">Logout</a></li>
				</ul>
			</div>
		</header>
		<!--header end-->
		<!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
		<!--sidebar start-->
		<aside>
			<div id="sidebar" class="nav-collapse ">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu" id="nav-accordion">
					<p class="centered">
						<a href="${path}/Dashio/profile.html"><img
							src="${path}/Dashio/img/ui-sam.jpg" class="img-circle" width="80"></a>
					</p>
					<h5 class="centered">Sam Soffes</h5>
					<li class="mt"><a href="${path}/Dashio/index.html"> <i
							class="fa fa-dashboard"></i> <span>Dashboard</span>
					</a></li>
					<li class="sub-menu"><a href="${path}/Dashio/javascript:;">
							<i class="fa fa-desktop"></i> <span>UI Elements</span>
					</a>
						<ul class="sub">
							<li><a href="${path}/Dashio/general.html">General</a></li>
							<li><a href="${path}/Dashio/buttons.html">Buttons</a></li>
							<li><a href="${path}/Dashio/panels.html">Panels</a></li>
							<li><a href="${path}/Dashio/font_awesome.html">Font
									Awesome</a></li>
						</ul></li>
					<li class="sub-menu"><a href="${path}/Dashio/javascript:;">
							<i class="fa fa-cogs"></i> <span>Components</span>
					</a>
						<ul class="sub">
							<li><a href="${path}/Dashio/grids.html">Grids</a></li>
							<li><a href="${path}/Dashio/calendar.html">Calendar</a></li>
							<li><a href="${path}/Dashio/gallery.html">Gallery</a></li>
							<li><a href="${path}/Dashio/todo_list.html">Todo List</a></li>
							<li><a href="${path}/Dashio/dropzone.html">Dropzone File
									Upload</a></li>
							<li><a href="${path}/Dashio/inline_editor.html">Inline
									Editor</a></li>
							<li><a href="${path}/Dashio/file_upload.html">Multiple
									File Upload</a></li>
						</ul></li>
					<li class="sub-menu"><a href="${path}/Dashio/javascript:;">
							<i class="fa fa-book"></i> <span>Extra Pages</span>
					</a>
						<ul class="sub">
							<li><a href="${path}/Dashio/blank.html">Blank Page</a></li>
							<li><a href="${path}/Dashio/login.html">Login</a></li>
							<li><a href="${path}/Dashio/lock_screen.html">Lock
									Screen</a></li>
							<li><a href="${path}/Dashio/profile.html">Profile</a></li>
							<li><a href="${path}/Dashio/invoice.html">Invoice</a></li>
							<li><a href="${path}/Dashio/pricing_table.html">Pricing
									Table</a></li>
							<li><a href="${path}/Dashio/faq.html">FAQ</a></li>
							<li><a href="${path}/Dashio/404.html">404 Error</a></li>
							<li><a href="${path}/Dashio/500.html">500 Error</a></li>
						</ul></li>
					<li class="sub-menu"><a href="${path}/Dashio/javascript:;">
							<i class="fa fa-tasks"></i> <span>Forms</span>
					</a>
						<ul class="sub">
							<li><a href="${path}/Dashio/form_component.html">Form
									Components</a></li>
							<li><a href="${path}/Dashio/advanced_form_components.html">Advanced
									Components</a></li>
							<li><a href="${path}/Dashio/form_validation.html">Form
									Validation</a></li>
						</ul></li>
					<li class="sub-menu"><a class="active"
						href="${path}/Dashio/javascript:;"> <i class="fa fa-th"></i> <span>Data
								Tables</span>
					</a>
						<ul class="sub">
							<li class="active"><a href="${path}/Dashio/basic_table.html">Basic
									Table</a></li>
							<li><a href="${path}/Dashio/responsive_table.html">Responsive
									Table</a></li>
							<li><a href="${path}/Dashio/advanced_table.html">Advanced
									Table</a></li>
						</ul></li>
					<li><a href="${path}/Dashio/inbox.html"> <i
							class="fa fa-envelope"></i> <span>Mail </span> <span
							class="label label-theme pull-right mail-info">2</span>
					</a></li>
					<li class="sub-menu"><a href="${path}/Dashio/javascript:;">
							<i class=" fa fa-bar-chart-o"></i> <span>Charts</span>
					</a>
						<ul class="sub">
							<li><a href="${path}/Dashio/morris.html">Morris</a></li>
							<li><a href="${path}/Dashio/chartjs.html">Chartjs</a></li>
							<li><a href="${path}/Dashio/flot_chart.html">Flot Charts</a></li>
							<li><a href="${path}/Dashio/xchart.html">xChart</a></li>
						</ul></li>
					<li class="sub-menu"><a href="${path}/Dashio/javascript:;">
							<i class="fa fa-comments-o"></i> <span>Chat Room</span>
					</a>
						<ul class="sub">
							<li><a href="${path}/Dashio/lobby.html">Lobby</a></li>
							<li><a href="${path}/Dashio/chat_room.html"> Chat Room</a></li>
						</ul></li>
					<li><a href="${path}/Dashio/google_maps.html"> <i
							class="fa fa-map-marker"></i> <span>Google Maps </span>
					</a></li>
				</ul>
				<!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->
		<!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<h3>
					<i class="fa fa-angle-right"></i> 프로젝트 리스트
				</h3>
				<div class="row">
					<div class="col-md-6">
						<div class="mb">
							<form action="#" class="form-inline">
								<div class="form-group">
									<select name="sch" class="form-control">
										<option value="">선택해주세요</option>
										<option value="pjrName">프로젝트명</option>
									</select>
								</div>
								<div class="form-group">
									<input type="text" name="sch_text" class="form-control"
										placeholder="검색어 입력" />
								</div>
								<div class="form-group">
									<input type="submit" value="검색" class="btn btn-primary">
								</div>
							</form>
						</div>
					</div>
					<div class="col-md-6">
						<div class="text-right mb">
							<input type="button" value="등록" class="btn btn-theme">
						</div>
						<div class="modal" id="modalbox">
							<div class="modal_content" title="TEST"></div>
						</div>
						<style>
.modal {
	position: absolute;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.8);
	top: 0;
	left: 0;
	display: none;
}
</style>
					</div>
					<div class="col-md-12">
						<div class="content-panel">
							<table class="table table-hover text-center">
								<thead>
									<tr>
										<th class="text-center">번호</th>
										<th class="text-center">프로젝트명</th>
										<th class="text-center">작성자</th>
										<th class="text-center">등록일</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="rm" items="${rmpList}">
										<tr role="button" data-id="1">
											<td>${rm.prjno}</td>
											<td>PROJECT NAME</td>
											<td>${rm.registrant}</td>
											<td><fmt:formatDate value="${rm.regdate}" type="date"
													dateStyle="full" /></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<div class="col-md-6">
						<h4 class="mt">
							총 <strong>10건</strong>중 <strong>1건</strong>
						</h4>
					</div>
					<div class="col-md-6">
						<div class="text-right mt">
							<ul class="pagination" id="pagination">
								<li class="page-item"><a class="page-link"
									href="${path}/Dashio/#">이전</a></li>
								<li class="page-item active"><a class="page-link"
									href="${path}/Dashio/#">1</a></li>
								<li class="page-item"><a class="page-link"
									href="${path}/Dashio/#">2</a></li>
								<li class="page-item"><a class="page-link"
									href="${path}/Dashio/#">3</a></li>
								<li class="page-item"><a class="page-link"
									href="${path}/Dashio/#">다음</a></li>
							</ul>
						</div>
					</div>
					<!-- /col-md-12 -->
				</div>
				<!-- row -->
			</section>
		</section>
		<!-- /MAIN CONTENT -->
		<!--main content end-->
		<!--footer start-->
		<footer class="site-footer">
			<div class="text-center">
				<p>
					&copy; Copyrights <strong>Dashio</strong>. All Rights Reserved
				</p>
				<div class="credits">
					<!--
            You are NOT allowed to delete the credit link to TemplateMag with free version.
            You can delete the credit link only if you bought the pro version.
            Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/dashio-bootstrap-admin-template/
            Licensing information: https://templatemag.com/license/
          -->
					Created with Dashio template by <a
						href="${path}/Dashio/https://templatemag.com/">TemplateMag</a>
				</div>
				<a href="${path}/Dashio/basic_table.html#" class="go-top"> <i
					class="fa fa-angle-up"></i>
				</a>
			</div>
		</footer>
		<!--footer end-->
	</section>
	<!-- js placed at the end of the document so the pages load faster -->
	<script src="${path}/Dashio/lib/jquery/jquery.min.js"></script>
	<script src="${path}/Dashio/lib/bootstrap/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript"
		src="${path}/Dashio/lib/jquery.dcjqaccordion.2.7.js"></script>
	<script src="${path}/Dashio/lib/jquery.scrollTo.min.js"></script>
	<script src="${path}/Dashio/lib/jquery.nicescroll.js"
		type="text/javascript"></script>
	<!--common script for all pages-->
	<script src="${path}/Dashio/lib/common-scripts.js"></script>
	<!--script for this page-->
	<script type="text/javascript">
		$(function() {
			$("tr[data-id]").on("click", function() {
				const id = $(this).data("id");
				location.href = `01.riskManagement.jsp?id=` + id;
			});
		});
		$(function(){
		$("button").click(function(){
            $('.modal').fadeIn();
        });
        $('.modal_content').click(function(){
            $('.modal').fadeOut();
        });
      
		});
	</script>
</body>

</html>

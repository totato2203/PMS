<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>

<%--


 --%>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Dashio - Bootstrap Admin Template</title>

  <!-- Favicons -->
  <link href="${path}/Dashio/img/favicon.png" rel="icon">
  <link href="${path}/Dashio/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="${path}/Dashio/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="${path}/Dashio/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="${path}/Dashio/css/style.css" rel="stylesheet">
  <link href="${path}/Dashio/css/style-responsive.css" rel="stylesheet">
  <link href="${path}/Dashio/css/table-responsive.css" rel="stylesheet">
  <script src="${path}/a00_Common/a00_com/jquery-3.6.0.js"></script>
  <script src="${path}/a00_Common/a00_com/jquery.min.js"></script>
  <script src="${path}/a00_Common/a00_com/jquery-ui.js"></script>
  <link rel="stylesheet" href="${path}/a00_Common/a01_css/empList.css">

  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>
<style>

</style>
<body>
  <section id="container">
<!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
    <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
      <!--logo start-->
      <a href="${path}/indexprjWhole.do" class="logo"><b>AEAP<span>PMS</span></b></a>
      <!--logo end-->
      <div class="nav notify-row" id="top_menu">
        <!--  notification start -->
        <ul class="nav top-menu">
          <!-- settings start -->
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
              <i class="fa fa-tasks"></i>
              </a>
            <ul class="dropdown-menu extended tasks-bar">
              <div class="notify-arrow notify-arrow-green"></div>
              <li>
                <p class="green">Select Dashboard</p>
              </li>
              <li>
                <a href="${path}/indexprjWhole.do">
                  <div class="task-info">
                    <div class="desc">A Whole</div>
                  </div>
                </a>
              </li>
              <li>
                <a href="${path}/indexprjWhole.do?prjno=P1000">
                  <div class="task-info">
                    <div class="desc">Project1</div>
                  </div>
                </a>
              </li>
              <li>
                <a href="${path}/indexprjWhole.do?prjno=P1001">
                  <div class="task-info">
                    <div class="desc">Project2</div>
                  </div>
                </a>
              </li>
              <li>
                <a href="${path}/indexprjWhole.do?prjno=P1002">
                  <div class="task-info">
                    <div class="desc">Project3</div>
                  </div>
                </a>
              </li>
            </ul>
          </li>
          <!-- settings end -->
        </ul>
        <!--  notification end -->
      </div>
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
          <li><a class="logout" href="${path }/logout.do">Logout</a></li>
        </ul>
      </div>
    </header>
    <script type="text/javascript">
    
    // session 만료 시 로그아웃 
   var sessionVal = "${emp.id}"
   if(sessionVal == ""){
      alert("세션이 만료되어 로그인 페이지로 이동합니다.")
      location.href="${path}/logout.do"
   }
    </script>
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered"><a href="${path}/profile.do"><img src="${path}/z01_HRFileupload/${emp.eimage}" width=160></a></p>
          <h5 class="centered">${emp.ename}<br>(${emp.empno})</h5>
          <li class="mt">
            <a href="${path}/indexprjWhole.do">
              <i class="fa fa-dashboard"></i>
              <span>대시보드</span>
            </a>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-desktop"></i>
              <span>통합 프로젝트</span>
            </a>
            <ul class="sub">
              <li><a href="${path}/prjList.do">통합 프로젝트 관리</a></li>
              <li>
              <c:if test="${emp.auth == 'PM'}"> <a href="${path}/prjInsertForm.do">프로젝트 등록</a> </c:if>
              </li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="${path}/prjSchdList.do ">
              <i class="fa fa-calendar-o"></i>
              <span>일정관리</span>
            </a>
          </li>
           <c:if test="${emp.auth != '사원'}">
          <li>
             <a href="${path}/cosPrjList.do">
              <i class="fa fa-money"></i>
              <span>재정관리</span>
            </a>
          </li>
         </c:if>

          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-users"></i>
              <span>인적자원관리</span>
            </a>
            <ul class="sub">
              <li><a href="${path}/empList.do">전체 사원 관리</a></li>
              <li><a href="${path}/prjEmpManage.do">프로젝트 사원 관리</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="${path}/prjlist.do">
              <i class="fa fa-suitcase"></i>
              <span>품질관리</span>
            </a>
          </li>
          <li>
            <a href="${path}/mailForm.do">
              <i class="fa fa-envelope"></i>
              <span>메일</span>
            </a>
          </li>
          <li>
            <a href="${path}/chat.do">
              <i class="fa fa-comments-o"></i>
              <span>채팅</span>
              </a>
          </li>
          <li>
            <a href="${path}/boardList.do">
              <i class="fa fa-edit"></i>
              <span>회의록</span>
            </a>
          </li>
          <li>
            <a href="${path}/introduce.do">
              <i class="fa fa-info-circle"></i>
              <span>AEAP소개</span>
            </a>
          </li>
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
        <h3><img src="${path}/a00_Common/a01_css/people.png" alt="" style="width:50px; height:50px"> | 사원 정보</h3>
        <div class="row mt">
          <div class="col-lg-12">
            <div class="content-panel">
              <form id="frm01" class="form"  method="post">
              <!-- 현재페이지 -->
              <input type="hidden" name="curPage" value="0"> <!-- js 통해서 현재 페이지 번호를 전송 -->
		  	  <nav class="navbar navbar-expand-sm bg-dark navbar-dark" >
			    <input name="ename" value="${empSch.ename}" id="input01" class="form-control mr-sm-2" placeholder="사원명 입력" style="width:300px;"/>
			    <input name="job" value="${empSch.job}"  id="input01" class="form-control mr-sm-2" placeholder="직책명 입력" style="width:300px;"/>
			    <button class="btn btn-info" type="submit">검색</button>
			    <button class="btn btn-theme" onclick="goInsert()" type="button"
			    	<c:if test="${emp.auth == '사원'}">disabled</c:if>
			    	<c:if test="${emp.auth == '임원'}">disabled</c:if>>+ 등록</button>
		 	  </nav>
		 	  
		 	  <div class="pageCnt" id="pageCnt">
				<div style="margin-left:5%;">
					<span style="width:100px">총 : ${empSch.count}건　　　</span>
				</div>
				<div class="paging" id="paging">
					<span>페이지크기</span>
					<select name="pageSize" class="form-control" style="width:100px; margin-top:-10px;">
						<option>3</option>
						<option>5</option>
						<option>7</option>
						<option>10</option>
						<option>20</option>
						<option>30</option>
					</select>
					<script type="text/javascript">
						// 선택된 페이지 크기 설정..
						$("[name=pageSize]").val("${empSch.pageSize}");
						// 페이지 크기 변경시 마다, controller 단호출
						$("[name=pageSize]").change(function(){
							$("[name=curPage]").val("1");
							$("form").submit();
						});
					</script>	
				</div>	
			</div>			
			  </form>
			<!--    
	<input  class="form-control" 
				value='<fmt:formatDate value="${board.regdte}" type="both"/>' placeholder="작성자 입력하세요" />
	-->
              <section id="unseen">
                <table class="table table-bordered table-striped table-condensed">
                  <thead>
                    <tr>
                      <th width="4%" class="numeric">번호</th>
                      <th width="8%" class="numeric">사원이미지</th>
                      <th width="12%">사원 번호</th>
                      <th width="12%" class="numeric">사원명</th>                      
                      <th width="12%" class="numeric">직책</th>
                      <th width="12%" class="numeric">입사일</th>
                      <th width="12%" class="numeric">연봉</th>                      
                      <th width="12%" class="numeric">권한</th>                      
                      <th width="8%" class="numeric">중요도</th>                      
                      <th width="8%" class="numeric">부서번호</th>
                    </tr>
                  </thead>
                  <tbody>
                  <c:forEach var="empList" items="${empList}">
                    <tr id="emp_tr" <c:if test="${emp.auth != '사원'}">ondblclick="goDetail('${empList.empno}')"</c:if>>
                      <td>${empList.cnt}</td>	
                      <!-- <td class="numeric"><img width="100" height="100" src=${emp.eimage}></td> -->
                      <!-- <td class="numeric"><img src="${path}/z01_HRFileupload/${emp.eimage}" class="img-circle"></td> -->
                      <td class="numeric"><img src="${path}/z01_HRFileupload/${empList.eimage}" width="50"></td>
                      <td >${empList.empno}</td>
                      <td class="numeric">${empList.ename}</td>
                      <td class="numeric">${empList.job}</td>
                      
                      <td class="numeric"><fmt:formatDate value="${empList.hiredate}" type="both"/></td>
                      <td class="numeric">${empList.sal}</td>                     
                      <td class="numeric">${empList.auth}</td>                     
                      <td class="numeric">${empList.eImportant}</td>                     
                      <td class="numeric">${empList.deptno}</td>
                    </tr>    
                  </c:forEach>                
                  </tbody>
                </table>
              </section>
            </div>
            <!-- /content-panel -->
          </div>
          <!-- /col-lg-4 -->
        </div>
        <ul class="pagination justify-content-center" id="pagination">
		  <li class="page-item"><a class="page-link" href="javascript:goPage(${empSch.startBlock-1})">Previous</a></li>
		  <c:forEach var="cnt" begin="${empSch.startBlock}" end="${empSch.endBlock}">
		  <li class="page-item ${empSch.curPage==cnt?'active':''}">
		  	<a class="page-link" href="javascript:goPage(${cnt})">${cnt}</a></li>
		  </c:forEach>
		  <li class="page-item"><a class="page-link" href="javascript:goPage(${empSch.endBlock+1})">Next</a></li>
		</ul>
      </section>
      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
    
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="${path}/Dashio/lib/jquery/jquery.min.js"></script>
  <script src="${path}/Dashio/lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="${path}/Dashio/lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="${path}/Dashio/lib/jquery.scrollTo.min.js"></script>
  <script src="${path}/Dashio/lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="${path}/Dashio/lib/common-scripts.js"></script>
  <!--script for this page-->
  <script type="text/javascript">
	$(document).ready(function(){
		<%-- 
		
		--%>	
	});
	function goDetail(empno){
		location.href="${path}/empDetail.do?empno="+empno;
	}
	
	function goInsert(empno){
		location.href="${path}/empInsertForm.do"
	}
	
	// 페이징처리
	function goPage(cnt){
		// 요청값으로 현재 클릭한 페이지를 설정하고, 서버에 전달
		$("[name=curPage]").val(cnt);
		$("form").submit();
	}
	// 입사일 순 정렬
</script>
</body>

</html>
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
<title>AEAPPMS</title>
<style>
#main-button {
   display: inline;
   position: relative;
   background-color: none;
   width: 100%;
   height: 140px;
}

.content-panel {
   position: relative;
   width: 50%;
   margin-left: 14px;
}

#side-panel {
   height: 520px;
}

.details {
   height: 16px;
}

th {
   text-align: center;
}

#button-icon {
   font-size: 65px;
   position: relative;
   color: rgba(255,255,255,0.5);
   
}

#TOFont {
   font-size: 16px;
   text-align: center;
   color: rgba(255,255,255,0.5);
}
.white-panel{
   position: flex;
}

canvas{
   postion: relative;
}

#MyTimer{
   font-size: 20px;
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
   rel="stylesheet">
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

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
<link rel="stylesheet" type="text/css"
   href="${path}/Dashio/css/zabuto_calendar.css">
<link rel="stylesheet" type="text/css"
   href="${path}/Dashio/lib/gritter/css/jquery.gritter.css" />
<link rel="stylesheet" href="${path}/lib/xchart/xcharts.css">
<!-- Custom styles for this template -->
<link href="${path}/Dashio/css/style.css" rel="stylesheet">
<link href="${path}/Dashio/css/style-responsive.css" rel="stylesheet">
<script src="${path}/Dashio/lib/chart-master/Chart.js"></script>

<!-- chart js -->
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.bundle.js"></script>

<script
   src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.bundle.min.js"></script>

<script
   src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.js"></script>

<script
   src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
   <!--script for this page-->
   <script src="${path}/Dashio/lib/xchart/d3.v3.min.js"></script>
   <script src="${path}/Dashio/lib/xchart/xcharts.min.js"></script>
   <script src="${path}/js/chartjs.js"></script>
      <!--script for this page-->
   <script src="${path}/Dashio/lib/sparkline-chart.js"></script>
   <script src="${path}/Dashio/lib/zabuto_calendar.js"></script>
      <!-- js placed at the end of the document so the pages load faster -->
   <script src="${path}/Dashio/lib/jquery/jquery.min.js"></script>

   <script src="${path}/Dashio/lib/bootstrap/js/bootstrap.min.js"></script>
   <script class="include" type="text/javascript"
      src="${path}/Dashio/lib/jquery.dcjqaccordion.2.7.js"></script>
   <script src="${path}/Dashio/lib/jquery.scrollTo.min.js"></script>
   <script src="${path}/Dashio/lib/jquery.nicescroll.js"
      type="text/javascript"></script>
   <script src="${path}/Dashio/lib/jquery.sparkline.js"></script>
   <!--common script for all pages-->
   <script src="${path}/Dashio/lib/common-scripts.js"></script>
   <script type="text/javascript"
      src="${path}/Dashio/lib/gritter/js/jquery.gritter.js"></script>
   <script type="text/javascript" src="${path}/Dashio/lib/gritter-conf.js"></script>
<!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
<script type="text/javascript">
function startTimer(duration, display) {
  var timer = duration, minutes, seconds;
  var interval = setInterval(function () {
    minutes = parseInt(timer / 60, 10)
    seconds = parseInt(timer % 60, 10);

    minutes = minutes < 30 ?  minutes : minutes;
    seconds = seconds < 30 ?  seconds : seconds;

    display.textContent = minutes + ":" + seconds;

    if (--timer < 0) {
      timer = duration;
    }
    if(timer === 0) {
      clearInterval(interval);
      display.textContent = "세션 만료!";
      location.href="${path}/loginPage.do";
    }
  }, 1000);
}

window.onload = function () {
  /* 기본값 10(분)입니다. */
  var minutes = 30;

  var fiveMinutes = (60 * minutes) - 1,
    display = document.querySelector('#MyTimer');
  startTimer(fiveMinutes, display);
};

</script>
</head>

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
                <a href="${path}/getTeamMember.do?prjno=P1000">
                  <div class="task-info">
                    <div class="desc">Project1</div>
                  </div>
                </a>
              </li>
              <li>
                <a href="${path}/getTeamMember.do?prjno=P1001">
                  <div class="task-info">
                    <div class="desc">Project2</div>
                  </div>
                </a>
              </li>
              <li>
                <a href="${path}/getTeamMember.do?prjno=P1002">
                  <div class="task-info">
                    <div class="desc">Project3</div>
                  </div>
                </a>
              </li>
              <li>
                <a href="${path}/getTeamMember.do?prjno=P1003">
                  <div class="task-info">
                    <div class="desc">Project4</div>
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
         <div class="border-head p-2">
              <h3> 전체 대시보드</h3>
            </div>
            <div class="row">
            <div id="main-button" class="d-flex justify-content-between mb-4">

                  <div onclick="location.href=''" class="p-5 m-3" id="TOFont"
                     style="width: 22%; height: 100px; background-color: #EE5F63;">
                      <i class="fa fa-clock-o" id="button-icon"></i>&nbsp;&nbsp;&nbsp; Time out
                      <span id="MyTimer">30:00</span>
                  </div>
                  <div onclick="location.href='${path}/profile.do'" class="p-5 m-3" id="TOFont"
                     style="width: 22%; height: 100px; background-color: #2D9CD1;">
                  <i class="fa fa-tasks" id="button-icon"></i>&nbsp;&nbsp;&nbsp; My page</div>
                  <div onclick="location.href='${path}/prjSchdList.do'" class="p-5 m-3" id="TOFont"
                     style="width: 22%; height: 100px; background-color: #00A985;">
                     <i class="fa fa-calendar-o" id="button-icon"></i>&nbsp;&nbsp;&nbsp; Events</div>
                  <div onclick="location.href='${path}/kanban.do'" class="p-5 m-3" id="TOFont"
                     style="width: 22%; height: 100px; background-color: #1564AF;">
                     <i class="fa fa-check-square-o" id="button-icon"></i>&nbsp;&nbsp;&nbsp; Kanban</div>
               </div>
               <div class="col-lg-12 main-chart" style="margin-top:-35px;">
                  <div class="row mt" style="height: 360px;">
                     <!-- SERVER STATUS PANELS -->
                     <div class="col-lg-4 col-sm-5 mb"> 
                        <div class="white-panel pn" style="height: 320px;">
                           <div class="white-header">
                              <h5>프로젝트 위험관리</h5>
                           </div>
                           <div> 
                                   <div>
                                     <table class="table table-hover">
                                       <thead>
                                       <tr>
                                         <th>No.</th>
                                         <th>위험내용</th>
                                         <th>위험도</th>
                                       </tr>
                                       </thead>
                                       <tbody>
                                         <tr>
                                           <td>R1000</td>
                                           <td>ui 가시성 저하</td>
                                           <td>중</td>
                                         </tr>
                                         <tr>
                                           <td>R1001</td>
                                           <td>일정 지연</td>
                                           <td>중</td>
                                         </tr>
                                         <tr>
                                           <td>R1002</td>
                                           <td>ui 가시성 저하</td>
                                           <td>중</td>
                                         </tr>
                                         <tr>
                                           <td>R1003</td>
                                           <td>일정지연</td>
                                           <td>하</td>
                                         </tr>
                                         <tr>
                                           <td>R1004</td>
                                           <td>인적위험</td>
                                           <td>하</td>
                                         </tr>
                                       </tbody>
                                     </table>
                                   </div>
                                 </div>
                           <div class="row">
                           </div>
                        </div>
                        <!-- /grey-panel -->
                     </div>
                     <!-- /col-md-4-->
                     <div class="col-lg-4">
                        <div class="white-panel pn" style="height: 320px;">
                            <div class="white-header">
                              <h5>프로젝트 리스트</h5>
                              
                           </div>
                           <div>
                                   <div>
                                     <table class="table table-hover" >
                                       <thead>
                                       <tr>
                                         <th>No.</th>
                                         <th>프로젝트명</th>
                                         <th>관리자번호</th>
                                       </tr>
                                       </thead>
                                       <tbody>
                                       
                                         <tr>
                                           <td>P1000</td>
                                           <td>AEAP_PMS</td>
                                           <td>E1001</td>
                                         </tr>
                                         <tr>
                                           <td>P1001</td>
                                           <td>4PRO_PMS</td>
                                           <td>E1001</td>
                                         </tr>
                                         <tr>
                                           <td>P1002</td>
                                           <td>주가 예측 시스템 프로젝트</td>
                                           <td>E1001</td>
                                         </tr>
                                         <tr>
                                           <td>P1003</td>
                                           <td>웹사이트 구현 프로젝트</td>
                                           <td>E1002</td>
                                         </tr>
                                       </tbody>
                                     </table>
                                   </div>
                                 </div>
                        </div>
                     </div>

                     <!-- /col-md-4 -->
                     <div class="col-lg-4">
                <div class="white-panel pn" style="height: 320px;">
                  <div class="white-header">
                    <h5>프로젝트 통합 위험도 현황</h5>
                  </div>
                   <!-- 전체 프로젝트 위험정도 상중하 수 -->
   
   <canvas id="RiskDeg" height="180"></canvas>
   <script>
    var riskdeg = []
   var riskCnt = []
   $.ajax({
      url:"${path}/getRiskDeg.do",
      dataType:"json",
      success:function(data){
         var data = data.riskdeg
         $(data).each(function(idx, p){
            riskCnt.push(Number(p.riskCnt))
            riskdeg.push(p.riskdeg)
         })
      
         
          new Chart(document.querySelector('#RiskDeg'), {
                type: 'pie',
                data: {
                  labels: riskdeg,
                  datasets: [{
                    label: '위험도',
                    data: riskCnt,
                    backgroundColor: [
                      'rgba(255, 99, 132, 0.2)',
                      'rgba(255, 159, 64, 0.2)',
                      'rgba(255, 205, 86, 0.2)',
                      'rgba(75, 192, 192, 0.2)',
                      'rgba(54, 162, 235, 0.2)',
                      'rgba(153, 102, 255, 0.2)',
                      'rgba(201, 203, 207, 0.2)'
                    ],
                  hoverOffset: 4
            
                  }]
                },
   
              });
      }
   })
    

</script>
                </div>
                <!--  /darkblue panel -->
              </div>

                  </div>
               </div>
               <div class="col-lg-12 main-chart" style="margin-top:-35px">
                  <div class="row mt" style="height: 460px;">
                     <!-- SERVER STATUS PANELS -->
                     <div class="col-lg-4">
                <div class="white-panel pn" style="height: 420px;">
                  <div class="white-header">
                    <h5>프로젝트별 종합 품질점수</h5>
                  </div>
                                        <!-- 프로젝트별 종합 품질점수 -->
   
   <canvas id="TotScore" height="250"></canvas> 
   <script>
    var tot = []
    var prjno9 = []
   $.ajax({
      url:"${path}/getTotScore.do",
      dataType:"json",
      success:function(data){
         var data = data.prjscore
         $(data).each(function(idx, p){
            tot.push(Number(p.tot))
            prjno9.push(p.prjno)
            
      
         })
          new Chart(document.querySelector('#TotScore'), {
                type: 'doughnut',
                data: {
                  labels: prjno9,
                  datasets: [{
                    label: '품질점수 평균',
                    data: tot,
                    backgroundColor: [
                      'rgba(255, 99, 132, 0.2)',
                      'rgba(255, 159, 64, 0.2)',
                      'rgba(255, 205, 86, 0.2)',
                      'rgba(75, 192, 192, 0.2)',
                      'rgba(54, 162, 235, 0.2)',
                      'rgba(153, 102, 255, 0.2)',
                      'rgba(201, 203, 207, 0.2)'
                    ],
                  hoverOffset: 4
            
                  }]
                },
                option: {
                   responsive: false
                   
                }
   
              });
      }
   })
    

</script>
                </div>
                <!--  /darkblue panel -->
              </div>
                     <div class="col-lg-8 col-sm-5 mb" style="height: 460px;"> 
                        <div class="white-panel pn" style="height: 420px;">
                           <div class="white-header">
                              <h5>프로젝트별 진행상황</h5>
                           </div>
                           <canvas id="PrjRate" height="120"></canvas>
   <script>
    var prjRate1 = []
    var prjno1 = []
   $.ajax({
      url:"${path}/getPrjRate.do",
      dataType:"json",
      success:function(data){
         var data = data.prjrate
         $(data).each(function(idx, p){
            prjRate1.push(Number(p.prjRate))
            prjno1.push(p.prjno)
         })
          new Chart(document.querySelector('#PrjRate'), {
                type: 'bar',
                data: {
                  labels: prjno1,
                  datasets: [{
                    label: '프로젝트별 진행상황',
                    data: prjRate1,
                    backgroundColor: [
                      'rgba(255, 99, 132, 0.2)',
                      'rgba(255, 159, 64, 0.2)',
                      'rgba(255, 205, 86, 0.2)',
                      'rgba(75, 192, 192, 0.2)',
                      'rgba(54, 162, 235, 0.2)',
                      'rgba(153, 102, 255, 0.2)',
                      'rgba(201, 203, 207, 0.2)'
                    ],
                    borderColor: [
                      'rgb(255, 99, 132)',
                      'rgb(255, 159, 64)',
                      'rgb(255, 205, 86)',
                      'rgb(75, 192, 192)',
                      'rgb(54, 162, 235)',
                      'rgb(153, 102, 255)',
                      'rgb(201, 203, 207)'
                    ],
                    borderWidth: 1
                  }]
                },
                options: {
                  scales: {
                     yAxes: [{
                        ticks:{
                           beginAtZero: true,
                           max: 100
                        }
                     }]
                  }
                }
              });
      }
   })
    

</script>
                           <div class="row">
                           </div>
                        </div>
                        <!-- /grey-panel -->
                     </div>
                     <!-- /col-md-4-->

                  </div>
               </div>
               <div class="col-lg-12 main-chart" style="margin-top:-35px; margin-bottom:60px;">
                  <div class="row mt">
                     <!-- SERVER STATUS PANELS -->
                     <!-- /col-md-4-->
                     <div class="col-lg-6" style="height: 460px;">
                        <div class="white-panel pn" style="height: 420px;">
                           <div class="white-header">
                              <h5>프로젝트별 참여 사원 수</h5>
                           </div>
                        <canvas id="PrjHR" height="160"></canvas>
   <script>
    var cnt = []
   var prjno2 = []
   $.ajax({
      url:"${path}/getPrjHR.do",
      dataType:"json",
      success:function(data){
         var data = data.prjemplist
         $(data).each(function(idx, p){
            cnt.push(Number(p.cnt))
            prjno2.push(p.prjno)
         })
          new Chart(document.querySelector('#PrjHR'), {
                type: 'bar',
                data: {

                  labels: prjno2,
                  datasets: [{
                    label: '프로젝트별 참여 사원 수',
                    data: cnt,
                    backgroundColor: [
                      'rgba(255, 99, 132, 0.2)',
                      'rgba(255, 159, 64, 0.2)',
                      'rgba(255, 205, 86, 0.2)',
                      'rgba(75, 192, 192, 0.2)',
                      'rgba(54, 162, 235, 0.2)',
                      'rgba(153, 102, 255, 0.2)',
                      'rgba(201, 203, 207, 0.2)'
                    ],
                    borderColor: [
                      'rgb(255, 99, 132)',
                      'rgb(255, 159, 64)',
                      'rgb(255, 205, 86)',
                      'rgb(75, 192, 192)',
                      'rgb(54, 162, 235)',
                      'rgb(153, 102, 255)',
                      'rgb(201, 203, 207)'
                    ],
                    borderWidth: 1
                  }]
                },
                options: {
                  scales: {
                     yAxes: [{
                        ticks:{
                           beginAtZero: true,
                           max: 20
                        }
                     }]
                  }
                }
              });
      }
   })
    

</script>
                        </div>
                     </div>

                     <!-- /col-md-4 -->
                     <div class="col-lg-6" style="height: 460px;">
                <div class="white-panel pn" style="height: 420px;">
                  <div class="white-header">
                    <h5>프로젝트별 예산</h5>
                  </div>
                  <canvas id="PrjFinance" height="160"></canvas> 
   <script>
    var prjfinance = []
   var prjno3 = []
   $.ajax({
      url:"${path}/getPrjFinance.do",
      dataType:"json",
      success:function(data){
         var data = data.prjfinance
         $(data).each(function(idx, p){
            prjfinance.push(Number(p.prjfinance))
            prjno3.push(p.prjno)
         })
          new Chart(document.querySelector('#PrjFinance'), {
                type: 'bar',
                data: {
                  labels: prjno3,
                  datasets: [{
                    label: '프로젝트별 예산',
                    data: prjfinance,
                    backgroundColor: [
                      'rgba(255, 99, 132, 0.2)',
                      'rgba(255, 159, 64, 0.2)',
                      'rgba(255, 205, 86, 0.2)',
                      'rgba(75, 192, 192, 0.2)',
                      'rgba(54, 162, 235, 0.2)',
                      'rgba(153, 102, 255, 0.2)',
                      'rgba(201, 203, 207, 0.2)'
                    ],
                    borderColor: [
                      'rgb(255, 99, 132)',
                      'rgb(255, 159, 64)',
                      'rgb(255, 205, 86)',
                      'rgb(75, 192, 192)',
                      'rgb(54, 162, 235)',
                      'rgb(153, 102, 255)',
                      'rgb(201, 203, 207)'
                    ],
                    borderWidth: 1
                  }]
                },
                options: {
                  scales: {
                     yAxes: [{
                        ticks:{
                           beginAtZero: true,
                           max: 9999
                        }
                     }]
                  }
                }
              });
      }
   })
    

</script>
                </div>
                <!--  /darkblue panel -->
              </div>

                  </div>
               </div>

               <!-- /row -->


               <!-- /col-lg-9 END SECTION MIDDLE -->
               <!-- **********************************************************************************************************************************************************
              RIGHT SIDEBAR CONTENT
              *********************************************************************************************************************************************************** -->

               <!-- /col-lg-3 -->
            </div>
            <!-- /row -->
            
         </section>
      </section>

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
               Created with Dashio template by <a href="https://templatemag.com/">TemplateMag</a>
            </div>
            <a href="index.html#" class="go-top"> <i class="fa fa-angle-up"></i>
            </a>
         </div>
      </footer>
      <!--footer end-->
   </section>
 

	<script type="text/javascript">
    $(document).ready(function() {
      var unique_id = $.gritter.add({
        // (string | mandatory) the heading of the notification
        title: '어서오세요, ${emp.ename}님!',
        // (string | mandatory) the text inside the notification
        text: '　',
        // (string | optional) the image to display on the left
        image: '${path}/z01_HRFileupload/${emp.eimage}',
        // (bool | optional) if you want it to fade out on its own or just sit there
        sticky: false,
        // (int | optional) the time you want it to be alive for before fading out
        time: 8000,
        // (string | optional) the class name you want to apply to that specific message
        class_name: 'my-sticky-class'
      });

      return false;
    });
  </script>


</body>

</html>

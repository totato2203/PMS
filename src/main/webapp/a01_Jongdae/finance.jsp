<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Dashio - Bootstrap Admin Template</title>

  <!-- Favicons -->
  <link href="../Dashio/img/favicon.png" rel="icon">
  <link href="../Dashio/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="../Dashio/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="../Dashio/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link href="../Dashio/lib/advanced-datatable/css/demo_page.css" rel="stylesheet" />
  <link href="../Dashio/lib/advanced-datatable/css/demo_table.css" rel="stylesheet" />
  <link rel="stylesheet" href="../Dashio/lib/advanced-datatable/css/DT_bootstrap.css" />
  <!-- Custom styles for this template -->
  <link href="../Dashio/css/style.css" rel="stylesheet">
  <link href="../Dashio/css/style-responsive.css" rel="stylesheet">

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
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
      <!--logo start-->
      <a href="../Dashio/index.html" class="logo"><b>DASH<span>IO</span></b></a>
      <!--logo end-->
      <div class="nav notify-row" id="top_menu">
        <!--  notification start -->
        <ul class="nav top-menu">
          <!-- settings start -->
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="../Dashio/index.html#">
              <i class="fa fa-tasks"></i>
              <span class="badge bg-theme">4</span>
              </a>
            <ul class="dropdown-menu extended tasks-bar">
              <div class="notify-arrow notify-arrow-green"></div>
              <li>
                <p class="green">You have 4 pending tasks</p>
              </li>
              <li>
                <a href="../Dashio/index.html#">
                  <div class="task-info">
                    <div class="desc">Dashio Admin Panel</div>
                    <div class="percent">40%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                      <span class="sr-only">40% Complete (success)</span>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="../Dashio/index.html#">
                  <div class="task-info">
                    <div class="desc">Database Update</div>
                    <div class="percent">60%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                      <span class="sr-only">60% Complete (warning)</span>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="../Dashio/index.html#">
                  <div class="task-info">
                    <div class="desc">Product Development</div>
                    <div class="percent">80%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                      <span class="sr-only">80% Complete</span>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="../Dashio/index.html#">
                  <div class="task-info">
                    <div class="desc">Payments Sent</div>
                    <div class="percent">70%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
                      <span class="sr-only">70% Complete (Important)</span>
                    </div>
                  </div>
                </a>
              </li>
              <li class="external">
                <a href="../Dashio/#">See All Tasks</a>
              </li>
            </ul>
          </li>
          <!-- settings end -->
          <!-- inbox dropdown start-->
          <li id="header_inbox_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="../Dashio/index.html#">
              <i class="fa fa-envelope-o"></i>
              <span class="badge bg-theme">5</span>
              </a>
            <ul class="dropdown-menu extended inbox">
              <div class="notify-arrow notify-arrow-green"></div>
              <li>
                <p class="green">You have 5 new messages</p>
              </li>
              <li>
                <a href="../Dashio/index.html#">
                  <span class="photo"><img alt="avatar" src="../Dashio/img/ui-zac.jpg"></span>
                  <span class="subject">
                  <span class="from">Zac Snider</span>
                  <span class="time">Just now</span>
                  </span>
                  <span class="message">
                  Hi mate, how is everything?
                  </span>
                  </a>
              </li>
              <li>
                <a href="../Dashio/index.html#">
                  <span class="photo"><img alt="avatar" src="../Dashio/img/ui-divya.jpg"></span>
                  <span class="subject">
                  <span class="from">Divya Manian</span>
                  <span class="time">40 mins.</span>
                  </span>
                  <span class="message">
                  Hi, I need your help with this.
                  </span>
                  </a>
              </li>
              <li>
                <a href="../Dashio/index.html#">
                  <span class="photo"><img alt="avatar" src="../Dashio/img/ui-danro.jpg"></span>
                  <span class="subject">
                  <span class="from">Dan Rogers</span>
                  <span class="time">2 hrs.</span>
                  </span>
                  <span class="message">
                  Love your new Dashboard.
                  </span>
                  </a>
              </li>
              <li>
                <a href="../Dashio/index.html#">
                  <span class="photo"><img alt="avatar" src="../Dashio/img/ui-sherman.jpg"></span>
                  <span class="subject">
                  <span class="from">Dj Sherman</span>
                  <span class="time">4 hrs.</span>
                  </span>
                  <span class="message">
                  Please, answer asap.
                  </span>
                  </a>
              </li>
              <li>
                <a href="../Dashio/index.html#">See all messages</a>
              </li>
            </ul>
          </li>
          <!-- inbox dropdown end -->
          <!-- notification dropdown start-->
          <li id="header_notification_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="../Dashio/index.html#">
              <i class="fa fa-bell-o"></i>
              <span class="badge bg-warning">7</span>
              </a>
            <ul class="dropdown-menu extended notification">
              <div class="notify-arrow notify-arrow-yellow"></div>
              <li>
                <p class="yellow">You have 7 new notifications</p>
              </li>
              <li>
                <a href="../Dashio/index.html#">
                  <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                  Server Overloaded.
                  <span class="small italic">4 mins.</span>
                  </a>
              </li>
              <li>
                <a href="../Dashio/index.html#">
                  <span class="label label-warning"><i class="fa fa-bell"></i></span>
                  Memory #2 Not Responding.
                  <span class="small italic">30 mins.</span>
                  </a>
              </li>
              <li>
                <a href="../Dashio/index.html#">
                  <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                  Disk Space Reached 85%.
                  <span class="small italic">2 hrs.</span>
                  </a>
              </li>
              <li>
                <a href="../Dashio/index.html#">
                  <span class="label label-success"><i class="fa fa-plus"></i></span>
                  New User Registered.
                  <span class="small italic">3 hrs.</span>
                  </a>
              </li>
              <li>
                <a href="../Dashio/index.html#">See all notifications</a>
              </li>
            </ul>
          </li>
          <!-- notification dropdown end -->
        </ul>
        <!--  notification end -->
      </div>
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
          <li><a class="logout" href="../Dashio/login.html">Logout</a></li>
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
          <p class="centered"><a href="../Dashio/profile.html"><img src="../Dashio/img/ui-sam.jpg" class="img-circle" width="80"></a></p>
          <h5 class="centered">Sam Soffes</h5>
          <li class="mt">
            <a href="../Dashio/index.html">
              <i class="fa fa-dashboard"></i>
              <span>Dashboard</span>
              </a>
          </li>
          <li class="sub-menu">
            <a href="../Dashio/javascript:;">
              <i class="fa fa-desktop"></i>
              <span>UI Elements</span>
              </a>
            <ul class="sub">
              <li><a href="../Dashio/general.html">General</a></li>
              <li><a href="../Dashio/buttons.html">Buttons</a></li>
              <li><a href="../Dashio/panels.html">Panels</a></li>
              <li><a href="../Dashio/font_awesome.html">Font Awesome</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="../Dashio/javascript:;">
              <i class="fa fa-cogs"></i>
              <span>Components</span>
              </a>
            <ul class="sub">
              <li><a href="../Dashio/grids.html">Grids</a></li>
              <li><a href="../Dashio/calendar.html">Calendar</a></li>
              <li><a href="../Dashio/gallery.html">Gallery</a></li>
              <li><a href="../Dashio/todo_list.html">Todo List</a></li>
              <li><a href="../Dashio/dropzone.html">Dropzone File Upload</a></li>
              <li><a href="../Dashio/inline_editor.html">Inline Editor</a></li>
              <li><a href="../Dashio/file_upload.html">Multiple File Upload</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="../Dashio/javascript:;">
              <i class="fa fa-book"></i>
              <span>Extra Pages</span>
              </a>
            <ul class="sub">
              <li><a href="../Dashio/blank.html">Blank Page</a></li>
              <li><a href="../Dashio/login.html">Login</a></li>
              <li><a href="../Dashio/lock_screen.html">Lock Screen</a></li>
              <li><a href="../Dashio/profile.html">Profile</a></li>
              <li><a href="../Dashio/invoice.html">Invoice</a></li>
              <li><a href="../Dashio/pricing_table.html">Pricing Table</a></li>
              <li><a href="../Dashio/faq.html">FAQ</a></li>
              <li><a href="../Dashio/404.html">404 Error</a></li>
              <li><a href="../Dashio/500.html">500 Error</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="../Dashio/javascript:;">
              <i class="fa fa-tasks"></i>
              <span>Forms</span>
              </a>
            <ul class="sub">
              <li><a href="../Dashio/form_component.html">Form Components</a></li>
              <li><a href="../Dashio/advanced_form_components.html">Advanced Components</a></li>
              <li><a href="../Dashio/form_validation.html">Form Validation</a></li>
              <li><a href="../Dashio/contactform.html">Contact Form</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a class="active" href="../Dashio/javascript:;">
              <i class="fa fa-th"></i>
              <span>Data Tables</span>
              </a>
            <ul class="sub">
              <li><a href="../Dashio/basic_table.html">Basic Table</a></li>
              <li><a href="../Dashio/responsive_table.html">Responsive Table</a></li>
              <li class="active"><a href="../Dashio/advanced_table.html">Advanced Table</a></li>
            </ul>
          </li>
          <li>
            <a href="../Dashio/inbox.html">
              <i class="fa fa-envelope"></i>
              <span>Mail </span>
              <span class="label label-theme pull-right mail-info">2</span>
              </a>
          </li>
          <li class="sub-menu">
            <a href="../Dashio/javascript:;">
              <i class=" fa fa-bar-chart-o"></i>
              <span>Charts</span>
              </a>
            <ul class="sub">
              <li><a href="../Dashio/morris.html">Morris</a></li>
              <li><a href="../Dashio/chartjs.html">Chartjs</a></li>
              <li><a href="../Dashio/flot_chart.html">Flot Charts</a></li>
              <li><a href="../Dashio/xchart.html">xChart</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="../Dashio/javascript:;">
              <i class="fa fa-comments-o"></i>
              <span>Chat Room</span>
              </a>
            <ul class="sub">
              <li><a href="../Dashio/lobby.html">Lobby</a></li>
              <li><a href="../Dashio/chat_room.html"> Chat Room</a></li>
            </ul>
          </li>
          <li>
            <a href="../Dashio/google_maps.html">
              <i class="fa fa-map-marker"></i>
              <span>Google Maps </span>
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
        <h3><i class="fa fa-angle-right"></i>  비용 관리 <i class="fa fa-angle-right"></i>
        	프로젝트 <i class="fa fa-angle-right"></i> 로드맵</h3>
        <div class="row mb">
          <!-- page start-->
          <div class="content-panel">
            <div class="adv-table">
              <table cellpadding="0" cellspacing="0" border="0" class="display table table-bordered" id="hidden-table-info">
                <thead>
                  <tr>
                    <th>로드맵 명</th>
                    <th>예산</th>
                    <th class="hidden-phone">시작일</th>
                    <th class="hidden-phone">종료일</th>
                    <th class="hidden-phone">사용된 비용</th>
                    <th class="hidden-phone">예약된 비용</th>
                    <th class="hidden-phone">초과된 예상 비용(지나면 초과비용)</th>
                  </tr>
                </thead>
                <tbody>
                  <tr class="gradeX">
                    <td>CMS 범위 지정 시작</td>
                    <td>4000$</td>
                    <td class="hidden-phone">2022-07-04</td>
                    <td class="center hidden-phone">2022-07-14</td>
                    <td class="center hidden-phone">40$</td>
                    <td class="center hidden-phone">40$</td>
                    <td class="center hidden-phone">40$</td>
                  </tr>
                  <tr class="gradeC">
                    <td>IT 및 법무팀 검토</td>
                    <td>5000$</td>
                    <td class="hidden-phone">2022-07-15</td>
                    <td class="center hidden-phone">2022-07-23</td>
                    <td class="center hidden-phone">40$</td>
                    <td class="center hidden-phone">40$</td>
                    <td class="center hidden-phone">40$</td>
                  </tr>
                  <tr class="gradeA">
                    <td>웹 팀 이전</td>
                    <td>6000$</td>
                    <td class="hidden-phone">2022-07-24</td>
                    <td class="center hidden-phone">2022-08-03</td>
                    <td class="center hidden-phone">40$</td>
                    <td class="center hidden-phone">40$</td>
                    <td class="center hidden-phone">40$</td>
                  </tr>
                  
                </tbody>
              </table>
            </div>
          </div>
          <!-- page end-->
        </div>
        <!-- /row -->
      </section>
      <!-- /wrapper -->
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
          Created with Dashio template by <a href="../Dashio/https://templatemag.com/">TemplateMag</a>
        </div>
        <a href="../Dashio/advanced_table.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="../Dashio/lib/jquery/jquery.min.js"></script>
  <script type="text/javascript" language="javascript" src="../Dashio/lib/advanced-datatable/js/jquery.js"></script>
  <script src="../Dashio/lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="../Dashio/lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="../Dashio/lib/jquery.scrollTo.min.js"></script>
  <script src="../Dashio/lib/jquery.nicescroll.js" type="text/javascript"></script>
  <script type="text/javascript" language="javascript" src="../Dashio/lib/advanced-datatable/js/jquery.dataTables.js"></script>
  <script type="text/javascript" src="../Dashio/lib/advanced-datatable/js/DT_bootstrap.js"></script>
  <!--common script for all pages-->
  <script src="../Dashio/lib/common-scripts.js"></script>
  <!--script for this page-->
  <script type="text/javascript">
    /* Formating function for row details */
    function fnFormatDetails(oTable, nTr) {
      var aData = oTable.fnGetData(nTr);
      var sOut = '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">';
      sOut += '<tr><td>Rendering engine:</td><td>' + aData[1] + ' ' + aData[4] + '</td></tr>';
      sOut += '<tr><td>Link to source:</td><td>Could provide a link here</td></tr>';
      sOut += '<tr><td>Extra info:</td><td>And any further details here (images etc)</td></tr>';
      sOut += '</table>';

      return sOut;
    }

    $(document).ready(function() {
      /*
       * Insert a 'details' column to the table
       */
      var nCloneTh = document.createElement('th');
      var nCloneTd = document.createElement('td');
      nCloneTd.innerHTML = '<img src="../Dashio/lib/advanced-datatable/images/details_open.png">';
      nCloneTd.className = "center";

      $('#hidden-table-info thead tr').each(function() {
        this.insertBefore(nCloneTh, this.childNodes[0]);
      });

      $('#hidden-table-info tbody tr').each(function() {
        this.insertBefore(nCloneTd.cloneNode(true), this.childNodes[0]);
      });

      /*
       * Initialse DataTables, with no sorting on the 'details' column
       */
      var oTable = $('#hidden-table-info').dataTable({
        "aoColumnDefs": [{
          "bSortable": false,
          "aTargets": [0]
        }],
        "aaSorting": [
          [1, 'asc']
        ]
      });

      /* Add event listener for opening and closing details
       * Note that the indicator for showing which row is open is not controlled by DataTables,
       * rather it is done here
       */
      $('#hidden-table-info tbody td img').live('click', function() {
        var nTr = $(this).parents('tr')[0];
        if (oTable.fnIsOpen(nTr)) {
          /* This row is already open - close it */
          this.src = "../Dashio/lib/advanced-datatable/media/images/details_open.png";
          oTable.fnClose(nTr);
        } else {
          /* Open this row */
          this.src = "../Dashio/lib/advanced-datatable/images/details_close.png";
          oTable.fnOpen(nTr, fnFormatDetails(oTable, nTr), 'details');
        }
      });
    });
  </script>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <title>Stack-美食栈后台</title>

    <!-- Favicons -->
    <link href="${pageContext.request.contextPath }/Backstage/img/Stack.png" rel="icon">
    <link href="${pageContext.request.contextPath }/Backstage/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath }/Backstage/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!--external css-->
    <link href="${pageContext.request.contextPath }/Backstage/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/Backstage/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/Backstage/lib/gritter/css/jquery.gritter.css" />
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath }/Backstage/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/Backstage/css/style-responsive.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath }/Backstage/lib/chart-master/Chart.js"></script>


</head>

<body>
<section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
<%@ include file="../header/admin_header.jsp" %>
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
        <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered"><a href="${pageContext.request.contextPath}/Backstage/home.jsp"><img src="${sessionScope.admin.img }" class="img-circle" width="80"></a></p>
          <h5 class="centered">${sessionScope.admin.name }</h5>
          <li class="mt">
            <a href="${pageContext.request.contextPath}/Backstage/home.jsp">
              <i class="fa fa-refresh"></i>
              <span>数据</span>
              </a>
          </li>
          <li class="sub-menu">
            <a class="active" href="javascript:;">
              <i class="fa fa-cutlery"></i>
              <span>小吃管理</span>
              </a>
            <ul class="sub">
              <li class="active"><a href="${pageContext.request.contextPath}/Snack?method=snackUI">各地小吃</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-globe"></i>
              <span>菜谱管理</span>
              </a>
            <ul class="sub">
              <li><a href="${pageContext.request.contextPath}/ChineseMenu?method=menuUI">中国菜谱管理</a></li>
              <li><a href="${pageContext.request.contextPath}/ForeignMenu?method=menuUI">外国菜谱管理</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-book"></i>
              <span>厨房百科</span>
              </a>
            <ul class="sub">
              <li><a href="${pageContext.request.contextPath}/Kitchen?method=show">厨房百科维护</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-group"></i>
              <span>用户管理</span>
              </a>
            <ul class="sub">
              <li><a href="${pageContext.request.contextPath}/User?method=show">用户信息维护</a></li>
              <li><a href="${pageContext.request.contextPath}/Audit?method=show">用户审核</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-wrench"></i>
              <span>首页维护</span>
              </a>
            <ul class="sub">
              <li><a href="${pageContext.request.contextPath}/">首页推荐维护</a></li>
              <li><a href="${pageContext.request.contextPath}/">首页热搜维护</a></li>
            </ul>
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
        <section class="wrapper site-min-height">
            <div class="row mt">
                <div class="col-lg-8 col-lg-offset-2 detailed mt">
                    <h4 class="mb">新增小吃</h4>
                    <form role="form" class="form-horizontal" method="post" action="${pageContext.request.contextPath }/Snack?method=add&pageNo=${pageNo}" enctype="multipart/form-data">
                        <div class="form-group">
                            <label class="col-lg-2 control-label">小吃地名</label>
                            <div class="col-lg-6">
                                <select class="form-control" name = "fatherName">
                                		<option value = ""> </option>
                                    <c:forEach items="${snackList }" var="s">
                                    	<option value="${s.fatherName }">${s.fatherName }</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <br>
                        <div class="form-group">
                            <label class="col-lg-2 control-label">小吃名</label>
                            <div class="col-lg-6">
                                <input type="text" name = "name" id="addr2" class="form-control">
                            </div>
                        </div>
                        <br>
                        <div class="form-group">
                            <label class="col-lg-2 control-label">图片</label>
                            <div class="col-lg-6">
                                <input type="file" name="img" id="phone" class="form-control">
                            </div>
                        </div>
                        <br>
                        <div class="form-group">
                            <label class="col-lg-2 control-label">描述</label>
                            <div class="col-lg-6">
                                <textarea rows="4" cols="30" name = "title"></textarea>
                            </div>
                        </div>
                        <br>
                        <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                                <button class="btn btn-theme" type="submit">提交</button>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="${pageContext.request.contextPath }/ChineseMenu?method=menuUI&pageNo=${pageNo}"><button class="btn btn-theme04" type="button">退出</button></a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- /container -->
        </section>
        <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
    <!--footer start-->
    <footer class="site-footer">
        <div class="text-center">
            <p>
                &copy; Copyrights <strong>Stack</strong>. All Rights Reserved
            </p>
            <div class="credits">
                More Templates <a href="index.html" target="_blank" title="STACK">STACK</a> - Collect from <a href="index.html" title="STACK" target="_blank">STACK</a>
            </div>
            <a href="(数据)Data.html#" class="go-top">
                <i class="fa fa-angle-up"></i>
            </a>
        </div>
    </footer>
    <!--footer end-->
</section>
<!-- js placed at the end of the document so the pages load faster -->
<script src="${pageContext.request.contextPath }/Backstage/lib/jquery/jquery.min.js"></script>

<script src="${pageContext.request.contextPath }/Backstage/lib/bootstrap/js/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="${pageContext.request.contextPath }/Backstage/lib/jquery.dcjqaccordion.2.7.js"></script>
<script src="${pageContext.request.contextPath }/Backstage/lib/jquery.scrollTo.min.js"></script>
<script src="${pageContext.request.contextPath }/Backstage/lib/jquery.nicescroll.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/Backstage/lib/jquery.sparkline.js"></script>
<!--common script for all pages-->
<script src="${pageContext.request.contextPath }/Backstage/lib/common-scripts.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/Backstage/lib/gritter/js/jquery.gritter.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/Backstage/lib/gritter-conf.js"></script>
<!--script for this page-->
<script src="${pageContext.request.contextPath }/Backstage/lib/sparkline-chart.js"></script>
<script src="${pageContext.request.contextPath }/Backstage/lib/zabuto_calendar.js"></script>
<script type="application/javascript">
    $(document).ready(function() {
        $("#date-popover").popover({
            html: true,
            trigger: "manual"
        });
        $("#date-popover").hide();
        $("#date-popover").click(function(e) {
            $(this).hide();
        });

        $("#my-calendar").zabuto_calendar({
            action: function() {
                return myDateFunction(this.id, false);
            },
            action_nav: function() {
                return myNavFunction(this.id);
            },
            ajax: {
                url: "show_data.php?action=1",
                modal: true
            },
            legend: [{
                type: "text",
                label: "Special event",
                badge: "00"
            },
                {
                    type: "block",
                    label: "Regular event",
                }
            ]
        });
    });
    $('.contact-map').click(function() {

        //google map in tab click initialize
        function initialize() {
            var myLatlng = new google.maps.LatLng(40.6700, -73.9400);
            var mapOptions = {
                zoom: 11,
                scrollwheel: false,
                center: myLatlng,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }
            var map = new google.maps.Map(document.getElementById('map'), mapOptions);
            var marker = new google.maps.Marker({
                position: myLatlng,
                map: map,
                title: 'Dashio Admin Theme!'
            });
        }
        google.maps.event.addDomListener(window, 'click', initialize);
    });
    function myNavFunction(id) {
        $("#date-popover").hide();
        var nav = $("#" + id).data("navigation");
        var to = $("#" + id).data("to");
        console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
    }
</script>
</body>

</html>
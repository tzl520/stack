<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  <link href="img/Stack.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="css/zabuto_calendar.css">
  <link rel="stylesheet" type="text/css" href="lib/gritter/css/jquery.gritter.css" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">
  <script src="lib/chart-master/Chart.js"></script>

  
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
           <p class="centered"><a href="${pageContext.request.contextPath}/Backstage/home.jsp"><img src="${pageContext.request.contextPath}/${sessionScope.admin.img }" class="img-circle" width="80"></a></p>
          <h5 class="centered">${sessionScope.admin.name }</h5>
          <li class="mt">
            <a class="active" href="${pageContext.request.contextPath}/Backstage/home.jsp">
              <i class="fa fa-refresh"></i>
              <span>数据</span>
              </a>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-cutlery"></i>
              <span>小吃管理</span>
              </a>
            <ul class="sub">
              <li><a href="${pageContext.request.contextPath}/Snack?method=snackUI">各地小吃</a></li>
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
              <%-- <li><a href="${pageContext.request.contextPath}/">类型管理</a></li> --%>
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
          <div class="col-lg-12">
            <div class="row content-panel">
              <div class="col-md-4 profile-text mt mb centered">
                <div class="right-divider hidden-sm hidden-xs">
                  <h4 id="h4"></h4>
                  <h6>当前时间</h6>
                  <h4 id="hh"></h4>
                  <h6>今日注册人数</h6>
                  <h4 id="hhs"></h4>
                  <h6>总注册人数</h6>
                </div>
              </div>
               <div class="col-md-6 detailed">
                        <h4>浏览数量</h4>
                        <div class="row centered mt mb">
                          <div class="col-sm-4">
                            <h1><i class="fa fa-globe"></i></h1>
                            <h3>0</h3>
                            <h6>总计</h6>
                          </div>
                          <div class="col-sm-4">
                            <h1><i class="fa fa-comment"></i></h1>
                            <h3>0</h3>
                            <h6>留言</h6>
                          </div>
                          <div class="col-sm-4">
                            <h1><i class="fa fa-thumbs-up"></i></h1>
                            <h3>0</h3>
                            <h6>点赞</h6>
                          </div>
                        </div>
              <!-- /col-md-4 -->
            </div>
            <!-- /row -->
          </div>
          <!-- /col-lg-12 -->
          <div class="col-lg-12 mt">
            <div class="row content-panel">
              <div class="panel-heading">
                <ul class="nav nav-tabs nav-justified">
                  <li class="active">
                    <a data-toggle="tab" href="#overview">数据</a>
                  </li>
                  <!-- <li>
                    <a data-toggle="tab" href="#contact" class="contact-map">Contact</a>
                  </li>
                  <li>
                    <a data-toggle="tab" href="#edit">Edit Profile</a>
                  </li> -->
                </ul>
              </div>
              <!-- /panel-heading -->
              <div class="panel-body">
                <div class="tab-content">
                  <div id="overview" class="tab-pane active">
                    <div class="row">
                      <!-- /col-md-6 -->
                      <div class="col-md-6">
                      	<div id="left" style="width: 600px;height:400px;"></div>
                      </div>
                      <div class="col-md-6 detailed">
                      	<div id="right" style="width: 600px;height:400px;"></div>
                      </div>
                      
                    </div>
                    <!-- /OVERVIEW -->
                  </div>
                  <!-- /tab-pane -->
                      <!-- /col-md-6 -->
                    </div>
                    <!-- /row -->
                  </div>
                  <!-- /tab-pane -->
                  <!-- /tab-pane -->
                </div>
                <!-- /tab-content -->
              </div>
              <!-- /panel-body -->
            </div>
            <!-- /col-lg-12 -->
          </div>
          <!-- /row -->
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
  <script src="lib/jquery/jquery.min.js"></script>

  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="lib/jquery.scrollTo.min.js"></script>
  <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
  <script src="lib/jquery.sparkline.js"></script>
  <!--common script for all pages-->
  <script src="lib/common-scripts.js"></script>
  <script type="text/javascript" src="lib/gritter/js/jquery.gritter.js"></script>
  <script type="text/javascript" src="lib/gritter-conf.js"></script>
  <!--script for this page-->
  <script src="lib/sparkline-chart.js"></script>
  <script src="lib/zabuto_calendar.js"></script>
  <script type="text/javascript" src="lib/xchart/echarts.min.js"></script>
  <script type="application/javascript">
  	
  	function showTime(){
  		var date = new Date()
  	  	$('#h4').text(date.toLocaleString());
  	}
  	showTime();
  	setInterval(showTime, 1000);
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
      $.ajax({
  		type:"GET",
  		url:"${pageContext.request.contextPath}/Admin",
  		data:"method=getTime",
  		dataType:"json",
  		async:"false",
  		success:function(data){
  			$('#hh').text(data[0]);
  			$('#hhs').text(data[1]);
  		}
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
          title: 'Stack Admin Theme!'
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
    $.ajax({
  		type:"GET",
  		url:"${pageContext.request.contextPath}/Admin",
  		data:"method=getCount",
  		dataType:"json",
  		async:"false",
  		success:function(data){
  			 var myChart = echarts.init(document.getElementById('left'));

  		    // 指定图表的配置项和数据
  		    var option = {
  		        title: {
  		            text: ''
  		        },
  		        tooltip: {},
  		        legend: {
  		            data:['统计分析']
  		        },
  		        xAxis: {
  		            data: ["小吃","中国菜","外国菜"]
  		        	//data: data.c1
  		        },
  		        yAxis: {},
  		        series: [{
  		            name: '统计分析',
  		            type: 'bar',
  		           	/* data: [45, 63, 96] */
  		        	data: [data[0],data[1],data[2]]
  		        }]
  		    };
  		  myChart.setOption(option);
  		}
  	});
   

    var myCharts = echarts.init(document.getElementById('right'));
    setTimeout(function (){
    	 $.ajax({
    	  		type:"GET",
    	  		url:"${pageContext.request.contextPath}/Admin",
    	  		data:"method=getCount",
    	  		dataType:"json",
    	  		async:"false",
    	  		success:function(data){
    	  			option = {
    	  		            legend: {},
    	  		            tooltip: {
    	  		                trigger: 'axis',
    	  		                showContent: false
    	  		            },
    	  		            dataset: {
    	  		                source: [
    	  		                    ['数据', '2014', '2015', '2016', '2017', '2018', '2019'],
    	  		                    ['小吃', 0, 0, 0,0, 0, data[0]],
    	  		                    ['中国菜', 0, 0, 0,0, 0, data[1]],
    	  		                    ['家常菜', 0, 0, 0,0, 0, data[2]]
    	  		                ]
    	  		            },
    	  		            xAxis: {type: 'category'},
    	  		            yAxis: {gridIndex: 0},
    	  		            grid: {top: '55%'},
    	  		            series: [
    	  		                {type: 'line', smooth: true, seriesLayoutBy: 'row'},
    	  		                {type: 'line', smooth: true, seriesLayoutBy: 'row'},
    	  		                {type: 'line', smooth: true, seriesLayoutBy: 'row'},
    	  		                {
    	  		                    type: 'pie',
    	  		                    id: 'pie',
    	  		                    radius: '30%',
    	  		                    center: ['50%', '25%'],
    	  		                    label: {
    	  		                        formatter: '{b}: {@2014} ({d}%)'
    	  		                    },
    	  		                    encode: {
    	  		                        itemName: '数据',
    	  		                        value: '2014',
    	  		                        tooltip: '2014'
    	  		                    }
    	  		                }
    	  		            ]
    	  		        };

    	  		        myCharts.on('updateAxisPointer', function (event) {
    	  		            var xAxisInfo = event.axesInfo[0];
    	  		            if (xAxisInfo) {
    	  		                var dimension = xAxisInfo.value + 1;
    	  		                myCharts.setOption({
    	  		                    series: {
    	  		                        id: 'pie',
    	  		                        label: {
    	  		                            formatter: '{b}: {@[' + dimension + ']} ({d}%)'
    	  		                        },
    	  		                        encode: {
    	  		                            value: dimension,
    	  		                            tooltip: dimension
    	  		                        }
    	  		                    }
    	  		                });
    	  		            }
    	  		        });
         myCharts.setOption(option);
    	  		}
    	  	});
        
    });
  </script>
</body>

</html>
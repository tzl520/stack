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
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/Backstage/lib/bootstrap-datepicker/css/datepicker.css" />
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/Backstage/lib/bootstrap-daterangepicker/daterangepicker.css" />
  <!-- Custom styles for this template -->
  <link href="${pageContext.request.contextPath }/Backstage/css/style.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath }/Backstage/css/style-responsive.css" rel="stylesheet">

  
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
            <a class="active" href="javascript:;">
              <i class="fa fa-group"></i>
              <span>用户管理</span>
              </a>
            <ul class="sub">
              <li class="active"><a href="${pageContext.request.contextPath}/User?method=show">用户信息维护</a></li>
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
    <section id="main-content" style="height: 650px;">
      <section class="wrapper">
        <div class="row">
          <!-- /col-md-12 -->
          <div class="col-md-12 mt">
            <div class="content-panel">
              <table class="table table-hover">
                <h4><i class="fa fa-angle-right"></i>用户信息</h4>
                <hr>
                <thead>
                <tr>
                  <th>编号</th>
                  <th>用户名</th>
                  <th>昵称</th>
                  <th>邮箱</th>
                  <th>性别</th>
                  <th>电话</th>
                  <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${userList }" var="user">
                	<tr>
                  <td>${user.id }</td>
                  <td>${user.loginName }</td>
                  <td>${user.name }</td>
                  <td>${user.email }</td>
                  <td>
                  	<c:if test="${user.sex==1 }">男</c:if>
                  	<c:if test="${user.sex==0 }">女</c:if>
                  </td>
                  <td>${user.phone }</td>
                  <td>
                   		<a href="${pageContext.request.contextPath }/User?method=editUserUI&id=${user.id}&pageNo=${pageNo}"><button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></a>
                    	<a href="${pageContext.request.contextPath }/User?method=deleteUser&id=${user.id}&pageNo=${pageNo}"><button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button></a>
                  </td>
                </tr>
                </c:forEach>
                </tbody>
              </table>
            </div>
          </div>
          <!-- /col-md-12 -->
        </div>
        <%@include file="../header/admin_pageNo.jsp" %>
      </section>

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
  <!--common script for all pages-->
  <script src="${pageContext.request.contextPath }/Backstage/lib/common-scripts.js"></script>
  <!--script for this page-->
  <script src="${pageContext.request.contextPath }/Backstage/lib/jquery-ui-1.9.2.custom.min.js"></script>
  <!--custom switch-->
  <script src="${pageContext.request.contextPath }/Backstage/lib/bootstrap-switch.js"></script>
  <!--custom tagsinput-->
  <script src="${pageContext.request.contextPath }/Backstage/lib/jquery.tagsinput.js"></script>
  <!--custom checkbox & radio-->
  <script type="text/javascript" src="${pageContext.request.contextPath }/Backstage/lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/Backstage/lib/bootstrap-daterangepicker/date.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/Backstage/lib/bootstrap-daterangepicker/daterangepicker.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/Backstage/lib/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
  <script src="${pageContext.request.contextPath }/Backstage/lib/form-component.js"></script>

</body>

</html>

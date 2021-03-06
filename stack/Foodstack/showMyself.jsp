<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改个人资料</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/animate.min.css">
        <link rel="stylesheet" href="css/nice-select.css">
        <link rel="stylesheet" href="css/themify-icons.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/meanmenu.css">
		<link rel="stylesheet" href="css/fontawesome-all.min.css">
		<link rel="stylesheet" href="css/slick.css">
		<link rel="stylesheet" href="css/default.css">
		<link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" href="css/responsive.css">
		<link rel="stylesheet" href="css/base/base.css">
		<link rel="stylesheet" href="css/base/main.css">
		<link rel="stylesheet" href="css/base/tips.css">
		<link rel="stylesheet" href="css/base/user.css">
		<link rel="stylesheet" href="css/cs.css">
		<script type="text/javascript" src="https://s1.c.meishij.net/n/js/j.m.js?v=1551"></script><script type="text/javascript" src="https://s1.c.meishij.net/n/js/main.js?v=1516"></script><script type="text/javascript" src="https://s1.c.meishij.net/n/js/user.js"></script><script type="text/javascript" src="https://s1.c.meishij.net/n/js/tipswindown.js"></script><script src="https://dup.baidustatic.com/js/ds.js"></script><script>var _czc = _czc || [];var _hmt = _hmt || [];(function() {var hm = document.createElement("script");hm.src = "//hm.baidu.com/hm.js?01dd6a7c493607e115255b7e72de5f40";var s = document.getElementsByTagName("script")[0];s.parentNode.insertBefore(hm, s);})();</script>
		<style type="text/css">
			 .calendar-item {
		            height: 30px;
		            width: 200px;
		            padding-left: 10px;
		            line-height: 28px;
		            border: 1px solid #ccc;
		            border-radius: 2px;
		        }
		</style>
</head>
<body>
<header>
			<div id="sticky-header" class="header-top-area header-2 pr-60 pl-60">
				<div class="container-fluid">
					<div class="row">
						<div class="col-xl-3 col-lg-2">
							<div class="logo">
								<a href="index.jsp"><img src="img/logo/logo.png" alt="" height="105px" /></a>
							</div>
						</div>
						<%@ include file="header/home_header.jsp" %>
						<%@ include file="header/header_login.jsp" %>

					</div>
				</div>
			</div>
		</header>
<div class="main clearfix">
	<h1 class="bbtitles">修改个人资料</h1>
	<div class="user_main clearfix">
	<div class="user_inner_tab">
	<a href="index.jsp" class="user_backbtn1" title="返回我的首页"  alt="返回我的首页"></a>
	<ul class="user_inner_tab_ul"><li><a href="showMyself.jsp" class="current link">编辑个人资料</a></li><li><a href="photo.jsp" class="link">修改头像</a></li><li><a href="password.jsp" class="link">修改密码</a></li></ul>
</div>	<div class="sixin_list">
		<div class="sixin_list_w">
			<div class="useredit_w">
			<form method="post" action="${pageContext.request.contextPath }/HomeUser?method=updateMyself">
				<input type="hidden" value="${sessionScope.user.id }" name="id">
				<ul class="useredit_ul clearfix">
									<li><dl class="clearfix"><dt>邮箱：</dt><dd class="dd1"><span><input style="height: 30px" type="text" class="text" id="new_email" name="email" value="${sessionScope.user.email }"  > </span></dd><dd class="dd2"></dd></dl></li>
									<li><dl class="clearfix"><dt>昵称：</dt><dd class="dd1"><input style="height: 30px" type="text" class="text" name="name" value="${sessionScope.user.name }"  ></dd><dd class="dd2"></dd></dl></li>
					<li><dl class="clearfix"><dt>性别：</dt><dd class="dd1" style="margin-top: 13px">
						<input <c:if test="${sessionScope.user.sex==1 }">checked</c:if> type="radio" name="gender" value="1">男
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input <c:if test="${sessionScope.user.sex==0 }">checked</c:if> type="radio" name="gender" value="0">女
					</dd><dd class="dd2"></dd></dl></li>
						<li><dl class="clearfix"><dt>生日：</dt><dd class="dd1"><input type="text" value="${sessionScope.user.birthday }" name="birthday"  class="calendar-item"/></dd></dl></li>
						<li><dl class="clearfix"><dt>電話：</dt><dd class="dd1"><input style="height: 30px" type="text" class="text" name="phone" value="${sessionScope.user.phone }"  ></dd><dd class="dd2"></dd></dl></li>
						<li><dl class="clearfix"><dt></dt><dd class="dd1"><input type="submit" value="提交" class="submit"></dd><dd class="dd2"></dd></dl></li>
					</ul></form>
				</div>
		</div>
	</div>
	</div>
</div>
 <script src="js/vendor/modernizr-3.5.0.min.js"></script>
        <script src="js/vendor/jquery-1.12.4.min.js"></script>
        <script src="js/waypoints.min.js"></script>
        <script src="js/jquery.counterup.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/isotope.pkgd.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery.meanmenu.min.js"></script>
        <script src="js/slick.min.js"></script>
        <script src="js/ajax-form.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/imagesloaded.pkgd.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>
        <script src="js/jss.js"></script>
        <script type="text/javascript">
    Calendar.create({
        classN: 'calendar-item',
        callBack: function(bindElem, dateObj) {
            bindElem.value = dateObj.year + '-' + dateObj.month + '-' + dateObj.date;
        }
    })
</script>
</body>
</html>
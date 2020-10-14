<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册界面</title>
</head>
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
<!-- Place favicon.ico in the root directory -->
<script src="js/jquery-1.3.2.min.js">
	
</script>
<script>
	$(document).ready(function() {
		$("a.bj").hover(function() {
			$("a.bj").css("background", "white")
			$("div.address").show(1000);
		}, function() {
			$("a.bj").css("background", "transparent");
			$("div.address").hide();
		});
		$("div.address").hover(function() {
			$("a.bj").css("background", "white")
			$("div.address").show();
		}, function() {
			$("a.bj").css("background", "transparent");
			$("div.address").hide();
		})
		$(".address-li").hover(function() {
			$(this).css("background", "#bf9410")
		}, function() {
			$(".address-li").css("background", "transparent")
		})
		$(".center_left_li").hover(function() {
			$(this).css("color", "#bf9410")
		}, function() {
			$(".center_left_li").css("color", "white")
		})
	});
</script>
<!-- CSS here -->
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
<link rel="stylesheet" href="css/dlzc/login.css">

</head>

<body>
	<header>
	<div id="sticky-header" class="header-top-area header-2 pr-60 pl-60">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xl-3 col-lg-2">
					<div class="logo">
						<a href="index.jsp"><img src="img/logo/logo.png" alt=""
							height="105px" /></a>
					</div>
				</div>
<%@ include file="header/home_header.jsp" %>
				<div class="col-xl-3 col-lg-2">
					<div class="header-right f-right d-none d-md-none d-lg-block">
						<div class="header-button">
							<a href="menu.jsp">登录注册</a>
						</div>
						<ul>
							<li><a href="#" data-toggle="modal"
								data-target="#search-modal"><span class="ti-search"></span></a>
							</li>

						</ul>
					</div>
				</div>

			</div>
		</div>
	</div>
	</header>

	<div class="new_loginpage">

		<h3 class="nl_title">
			<span class="nl_t_left"></span>注册美食栈<span class="nl_t_right"></span>
		</h3>
		<div class="nl_loginbox_w" id="msj_loginbox">

			<form method="POST" action="${pageContext.request.contextPath }/HomeUser?method=register">
				<input type="hidden" value="" name="redirect" /> <input
					type="hidden" value="" name="redirect" />
				<div class="nl_loginitem">
					<input type="text" class="text" value="" name="loginname"
						placeholder="请输入您的登录名">
						<br>
						<span style="color:red;"></span>
				</div>
				<div class="nl_loginitem">
					<input type="text" class="text" name="username"
						placeholder="请输入您的用户名">
				</div>
				<div class="nl_loginitem">
					<input type="password" class="password" name="password"
						placeholder="请输入您的密码">
				</div>
				<div class="nl_loginitem">
					<input type="email" class="email" name="email"
						placeholder="请输入您的邮箱">
				</div>
				<div class="nl_loginitem">
					<input type="text" class="text" name="birthday"
						placeholder="请输入您的出生日期">
				</div>
				<div class="nl_loginitem">
					<tr>
			    <td align="right">请选择您的性别：</td>
				<td><input type="radio" name="gender" checked="checked" value="male"/>男
				<input type="radio" name="gender" value="female"/>女
				</td>
			</tr>
				</div>
				<div class="nl_loginitem" style="height: 33px;">
					<label><input type="checkbox" id="mobile_check"
						class="checkbox" checked="1"> 我已阅读并且同意<a href="协议.html">美食栈用户使用协议</a></label>
				</div>

				<div class="nl_loginitem" style="text-align: center;">
					<input type="submit" class="submit register_submit"
						id="nl_phone_submit_btn" value="注册">
				</div>
				<a
					onclick="_hmt.push(['_trackEvent', 'zhuce', 'click', '注册登录页_去注册']);"
					href=menu.jsp class="golink" id="nl_gozc" opened="0">已有账号？马上登录
				</a>
			</form>
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
		<script src="js/jquery-3.4.1.js"></script>
		<script type="text/javascript">
		$("input[name='loginname']").blur(function() {
			var _this = $(this);
			var _v = $(this).val();
			// 正则表达式。需要，用户名为6到12位字符数字下划线 或者为3位或者3位以上的汉字
			var reg = /^([a-zA-Z0-9_]{6,12})|([\u2E80-\u9FFF]{3,})$/;
			console.log(_v);
			if (reg.test(_v)) {
				// 判断这个值在数据库是否存在，因此要发送一个异步的请求Ajax
				// TYPE:GET/POST
				// url:提交给谁
				// data：提交给servlet的参数
				// async:请求是同步还是异步 true（默认）异步 false同步
				// success：叫做回调函数,响应成功之后，把响应的信息 给到 data
				$.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/HomeUser",
					data : "method=checkLoginName&name="+_v,
					dataType: "json",
					async: true,
					success : function(data) {
						// data = {"code":200,"msg":"当前用户可以使用","obj":null} ;
						if(data.code===200) {
							_this.next().next().show().html(data.msg);
						} else {
							_this.next().next().show().html(data.msg);
						}
					}
				});
			} else {
				$(this).next().next().show().html("失败");
			}
		});
		</script>
</body>

</html>

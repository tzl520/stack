<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>登录页面</title>
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
				<%@ include file="header/header_login.jsp" %>

			</div>
		</div>
	</div>
	</header>

	<div class="new_loginpage">

		<h3 class="nl_title">
			<span class="nl_t_left"></span>登录美食栈<span class="nl_t_right"></span>
		</h3>
		<div class="nl_loginbox_w" id="msj_loginbox">

			<form id="myform" action="${pageContext.request.contextPath }/HomeUser?method=login" method="post">
				<input type="hidden" value="" name="redirect" /> <input
					type="hidden" value="" name="redirect" />
				<div class="nl_loginitem">
					<input type="text" class="text" value="" name="loginname"
						placeholder="请输入您的登录名">
				</div>
				
				<div class="nl_loginitem">
					<input type="password" class="password" name="password"
						placeholder="请输入您的密码">
				</div>
				<div class="nl_loginitem" style="height: 90px;">
					<label><input type="checkbox" id="mobile_check"
						class="checkbox"> 我已阅读并且同意<a href="协议.html">美食栈用户使用协议</a></label>
						<br>
					<label>
					<input type="checkbox" id="mobile_check" name="ck" value="ok" class="checkbox"> 记住密码
					</label> 
					<label>
					<input type="checkbox" id="mobile_check" name="cks" value="ok" class="checkbox">
						自动登录
					</label>
				</div>

				<div class="nl_loginitem" style="text-align: center;">
					<input type="button" class="submit register_submit"
						id="nl_phone_submit_btn" value="登录">
				</div>
				<a
					onclick="_hmt.push(['_trackEvent', 'zhuce', 'click', '注册登录页_去注册']);"
					href=register.jsp class="golink" id="nl_gozc" opened="0">还没有账号？免费注册
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
			$('#nl_phone_submit_btn').click(function(){
				var $check = $('#mobile_check');
				if(!$check.is(':checked')){
					alert("未同意美食栈用户使用协议");
				}else{
					$('#myform').submit();
				}
			});
			var $username = '${cookie.username.value}' ;
			$username = decodeURI($username,"UTF-8");
			var $userpwd = '${cookie.userpwd.value}';
			$userpwd = decodeURI($userpwd,"UTF-8");
			var $cks = '${cookie.cks.value}';
			$cks = decodeURI($cks,"UTF-8");
			if(null===$username || $username.length ==0 && null ===$userpwd || $userpwd ==0) {
				$("input[name='loginname']").val("");
				$("input[name='password']").val("");
				$("input[name='ck']").prop('checked',false);
				$("input[name='cks']").prop('checked',false);
			} else {
				$("input[name='loginname']").val($username);
				$("input[name='password']").val($userpwd);
				$("input[name='ck']").prop('checked',true);
				if(null === $cks || $cks == 0){
					if(cks == "ok"){
						$('#myform').submit();
					}
				}
			}
		</script>
</body>

</html>

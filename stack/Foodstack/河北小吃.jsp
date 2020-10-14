<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>河北小吃</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
		<link rel="shortcut icon" type="image/x-icon" href="Foodstack/img/favicon.ico">
        <!-- Place favicon.ico in the root directory -->
 <script src="Foodstack/js/jquery-1.3.2.min.js">
    </script>
    <script>
        $(document).ready(function(){
       $("a.bj").hover(function () {
           $("a.bj").css("background","white")
               $("div.address").show(1000);
       },function(){
           $("a.bj").css("background","transparent");
               $("div.address").hide();
       });
       $("div.address").hover(function () {
           $("a.bj").css("background","white")
           $("div.address").show();
       },function(){
           $("a.bj").css("background","transparent");
           $("div.address").hide();
       })
            $(".address-li").hover(function () {
                $(this).css("background", "#bf9410")
            },function () {
                $(".address-li").css("background", "transparent")
            })
            $(".center_left_li").hover(function () {
                $(this).css("color", "#bf9410")
            },function () {
                $(".center_left_li").css("color", "white")
            })
        });


    </script>
		<!-- CSS here -->
        <link rel="stylesheet" href="Foodstack/css/bootstrap.min.css">
        <link rel="stylesheet" href="Foodstack/css/owl.carousel.min.css">
        <link rel="stylesheet" href="Foodstack/css/animate.min.css">
        <link rel="stylesheet" href="Foodstack/css/nice-select.css">
        <link rel="stylesheet" href="Foodstack/css/themify-icons.css">
        <link rel="stylesheet" href="Foodstack/css/magnific-popup.css">
        <link rel="stylesheet" href="Foodstack/css/meanmenu.css">
		<link rel="stylesheet" href="Foodstack/css/fontawesome-all.min.css">
		<link rel="stylesheet" href="Foodstack/css/slick.css">
		<link rel="stylesheet" href="Foodstack/css/default.css">
		<link rel="stylesheet" href="Foodstack/css/style.css">
		<link rel="stylesheet" href="Foodstack/css/responsive.css">
	</head>
    <body>
        <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

		<!-- header-start -->
		<header>
			<div id="sticky-header" class="header-top-area header-2 pr-60 pl-60">
				<div class="container-fluid">
					<div class="row">
						<div class="col-xl-3 col-lg-2">
							<div class="logo">
								<a href="index.jsp"><img src="Foodstack/img/logo/logo.png" alt="" height="105px"/></a>
							</div>
						</div>
						<%@ include file="header/home_header.jsp" %>
						<%@ include file="header/header_login.jsp" %>

					</div>
				</div>
			</div>
		</header>
		<!-- header-end -->
		<!-- breadcrumb-area-start -->
		<div class="breadcrumb-area pt-45 pb-45">
			<div class="container">
				<div class="row">
					<div class="col-xl-12">
						<div class="breadcrumb-text text-center">
							<h2>咸口味的河北小吃 </h2>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumb-area-end -->
		<!-- news-area-start -->
		<div class="news-area pt-100 pb-90">
			<div class="container">
				<div class="row">
				<c:forEach items="${scList }" var="s">
					<div class="col-xl-4 col-lg-4 col-md-6 mb-55">
						<div class="news-wrapper single-news">
							<div class="news-img">
								<a href="Foodstack/${s.name }.jsp"><img src="${s.img }" alt="" /></a>
							</div>
							<div class="news-text">
								<span>${s.fatherName }</span>
								<h3><a href="Foodstack/${s.name }.jsp">${s.name }</a></h3>
								<p>${s.title }</p>
								<a href="Foodstack/${s.name }.jsp">查看详情<i class="fas fa-long-arrow-alt-right"></i></a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<!-- news-area-end -->
		<!-- brand-area-start -->
		<div class="brand-area yellow-bg pt-75 pb-75">
			<div class="container">
				<div class="row justify-content-between">
					<div class="brand-active owl-carousel">
						<div class="col-xl-12">
							<div class="brand-wrapper">
								<div class="brand-img">
									<img src="Foodstack/img/brand/1.png" alt="" />
								</div>
							</div>
						</div>
						<div class="col-xl-12">
							<div class="brand-wrapper">
								<div class="brand-img">
									<img src="Foodstack/img/brand/2.png" alt="" />
								</div>
							</div>
						</div>
						<div class="col-xl-12">
							<div class="brand-wrapper">
								<div class="brand-img">
									<img src="Foodstack/img/brand/3.png" alt="" />
								</div>
							</div>
						</div>
						<div class="col-xl-12">
							<div class="brand-wrapper">
								<div class="brand-img">
									<img src="Foodstack/img/brand/4.png" alt="" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- brand-area-end -->
		<!-- footer-area-start -->
		<footer>
			<div class="footer-top-area footer2 pt-90 pb-80 black2-bg">
				<div class="container">
					<div class="row">
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="footer-wrapper mb-30">
								<div class="footer-logo">
									<a href="index.jsp"><img src="Foodstack/img/logo/logo.png" alt="" height="105px"/></a>
								</div>
								<div class="footer-text">
											<p>有两样东西别人抢不走，一是你吃进肚子里的食物，另一个是你藏在心里的梦想。所以说啊，做个有梦想的吃货，你就是无敌的!</p>
										</div>
										
									</div>
								</div>
								<div class="col-xl-3 col-lg-3 col-md-6">
									<div class="footer-wrapper mb-30">
										<h3 class="footer-title">友情链接</h3>
												<ul class="footer-menu">
													<li><a href="https://www.qq.com/"><i class="fas fa-caret-right"></i>腾讯网</a></li>
													<li><a href="https://tuijian.hao123.com/"><i class="fas fa-caret-right"></i>搜狐网</a></li>
													<li><a href="https://www.163.com/"><i class="fas fa-caret-right"></i>网易网</a></li>
													<li><a href="https://www.sina.com.cn/"><i class="fas fa-caret-right"></i>新浪网</a></li>
													<li><a href="https://www.hao123.com/?tn=92047105_hao_pg&web=121"><i class="fas fa-caret-right"></i>hao123</a></li>
													<li><a href="https://www.baidu.com/"><i class="fas fa-caret-right"></i>百度一下</a></li>
												</ul>
											</div>
										</div>
										<div class="col-xl-3 col-lg-3 col-md-6">
											<div class="footer-wrapper mb-30">
												<h3 class="footer-title">照片集</h3>
												<ul class="footer-img">
													<li><a href="#"><img alt="" src="Foodstack/img/instagram/1.jpg"></a></li>
													<li><a href="#"><img alt="" src="Foodstack/img/instagram/2.jpg"></a></li>
													<li><a href="#"><img alt="" src="Foodstack/img/instagram/3.jpg"></a></li>
													<li><a href="#"><img alt="" src="Foodstack/img/instagram/4.jpg"></a></li>
													<li><a href="#"><img alt="" src="Foodstack/img/instagram/5.jpg"></a></li>
													<li><a href="#"><img alt="" src="Foodstack/img/instagram/6.jpg"></a></li>
												</ul>
											</div>
										</div>
										<div class="col-xl-3 col-lg-3 col-md-6">
											<div class="footer-wrapper mb-30">
												<h3 class="footer-title">关于我们</h3>
												<div class="footer-info">
													<p>除了吃美食，还有比这个更美好的事吗？</p>
												</div>
												<ul class="footer-link">
													<li><i class="fas fa-home"></i>湖南生物机电</li>
													<li><i class="fas fa-phone"></i>+29 65 63 954</li>
													<li><i class="far fa-envelope"></i>联系我们</li>
												</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-bottom-area black-bg pt-25 pb-25">
			<div class="container">
				<div class="row">
					<div class="col-xl-12">
						<div class="copyright text-center">
							<p>Kettle ? All rights <a href="http://www.bootstrapmb.com/">reserved</a> 2018 ? Designed by Mugli</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		</footer>
		<!-- footer-area-end -->
		<!-- Modal Search -->
        <div class="modal fade" id="search-modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form>
                        <input type="text" placeholder="Search here...">
                        <button>
                            <i class="fa fa-search"></i>
                        </button>
                    </form>
                </div>
            </div>
        </div>
        <script src="Foodstack/js/vendor/modernizr-3.5.0.min.js"></script>
        <script src="Foodstack/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="Foodstack/js/waypoints.min.js"></script>
        <script src="Foodstack/js/jquery.counterup.min.js"></script>
        <script src="Foodstack/js/bootstrap.min.js"></script>
        <script src="Foodstack/js/owl.carousel.min.js"></script>
        <script src="Foodstack/js/isotope.pkgd.min.js"></script>
        <script src="Foodstack/js/jquery.nice-select.min.js"></script>
        <script src="Foodstack/js/jquery.meanmenu.min.js"></script>
        <script src="Foodstack/js/slick.min.js"></script>
        <script src="Foodstack/js/ajax-form.js"></script>
        <script src="Foodstack/js/wow.min.js"></script>
        <script src="Foodstack/js/jquery.scrollUp.min.js"></script>
        <script src="Foodstack/js/imagesloaded.pkgd.min.js"></script>
        <script src="Foodstack/js/jquery.magnific-popup.min.js"></script>
        <script src="Foodstack/js/plugins.js"></script>
        <script src="Foodstack/js/main.js"></script>
    </body>
</html>
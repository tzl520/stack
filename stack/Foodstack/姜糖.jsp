<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js" lang="zxx">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>姜糖</title>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
 <script src="js/jquery-1.3.2.min.js">
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
        <link rel="manifest" href="site.webmanifest">
		<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
        <!-- Place favicon.ico in the root directory -->

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
										<a href="index.jsp"><img src="img/logo/logo.png" alt="" height="105px" /></a>
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
							<h1>姜糖</h1>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumb-area-end -->
		<!-- news-area-start -->
		<div class="news-area pt-100 pb-70">
			<div class="container">
				<div class="row">
					<div class="col-xl-8 col-lg-8 mb-30">
						<div class="news-wrapper single-news">
							<div class="news-img">
								<img src="img/news/blog/凤凰姜糖.jpg"  height="700px" width="732px"/>
							</div>
							<div class="news-text">
								<span>湖南小吃</span>
								<h3>姜糖</h3>
								<p>在凤凰老街，你会看到现场拉制姜糖的场面，姜糖师傅会极其夸张地将姜糖团挂到门旁的铁钩上
拉长、绕圈、再拉长，如此这般地反复拉扯，现场表演成分大过买卖，然后出售还带着温热的姜糖。
								</p>

								<blockquote class="blockquote">
									<p>最超值的地方: </p>
							   </blockquote>
							   <p>色泽光亮、入口后甜、脆、浓、香，无异常口味。
							 </p>
						   </div>
							<div class="comment-form">
							<div class="leave-comment-form">
								<form action="#">
									<div class="row">
										
									</div>
								</form>
							</div>
						</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 mb-30">
						<div class="widget mb-35">
                            <div class="sidebar-form">
                                <form action="#">
                                    <button type="submit">
                                        <span class="ti-search"></span>
                                    </button>
                                </form>
                            </div>
                        </div>
						<div class="widget mb-55">
                            <h5 class="widget-title">配料</h5>
							<ul class="blog-menu">
								<li><a href="">生姜</a></li>
								<li><a href="">红糖</a></li>
								<li><a href="">纯净水</a></li>
								<li><a href="">姜汁</a></li>
								
								
									
																								
							</ul>
                        </div>
                        <div class="widget mb-55">
                            <h4 class="widget-title">火热小吃</h4>
                            <div class="sidebar-rc-post">
                                <ul>
                                    <li>
                                        <div class="rc-post-thumb">
                                            <a href="blog-details.jsp">
                                                <img src="img/news/blog-left/哈尔滨红肠.jpg" alt="">
                                            </a>
                                        </div>
                                        <div class="rc-post-content">
                                            <h4>
                                                <a href="blog-details.jsp">哈尔滨红肠</a>
                                            </h4>
                                            <div class="widget-date">黑龙江小吃</div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="rc-post-thumb">
                                            <a href="blog-details.jsp">
                                                <img src="img/news/blog-left/得莫利炖鱼.jpg" alt="">
                                            </a>
                                        </div>
                                        <div class="rc-post-content">
                                            <h4>
                                                <a href="blog-details.jsp">得莫利炖鱼</a>
                                            </h4>
                                            <div class="widget-date">黑龙江小吃</div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="rc-post-thumb">
                                            <a href="blog-details.jsp">
                                                <img src="img/news/blog-left/可可花生酥心糖.jpg" alt="">
                                            </a>
                                        </div>
                                        <div class="rc-post-content">
                                            <h4>
                                                <a href="blog-details.jsp">可可花生酥心糖</a>
                                            </h4>
                                            <div class="widget-date">黑龙江小吃</div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="widget">
                            <h4 class="widget-title">目录</h4>
                            <div class="widget-tags">
                                <ul class="sidebar-tad">
                                    <li>
                                        <a href="http://blog.sina.com.cn/lm/eatblog.html">美食BLOG</a>
                                    </li>
                                    <li>
                                        <a href="index.jsp">首页</a>
                                    </li>
                                    <li>
                                        <a href="blog-details.jsp">菜谱</a>
                                    </li>
                                    <li>
                                        <a href="Kitchen Encyclopedia.jsp">厨房百科</a>
                                    </li>
                                    <li>
                                        <a href="about-us.jsp"> 关于我们</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
					</div>
				</div>
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
									<img src="img/brand/1.png" alt="" />
								</div>
							</div>
						</div>
						<div class="col-xl-12">
							<div class="brand-wrapper">
								<div class="brand-img">
									<img src="img/brand/2.png" alt="" />
								</div>
							</div>
						</div>
						<div class="col-xl-12">
							<div class="brand-wrapper">
								<div class="brand-img">
									<img src="img/brand/3.png" alt="" />
								</div>
							</div>
						</div>
						<div class="col-xl-12">
							<div class="brand-wrapper">
								<div class="brand-img">
									<img src="img/brand/4.png" alt="" />
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
			<div class="footer-top-area footer2 pt-100 pb-70 black2-bg">
				<div class="container">
					<div class="row">
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="footer-wrapper mb-30">
								<div class="footer-logo">
									<a href="index.jsp"><img src="img/logo/logo.png" alt="" height="105px"/></a>
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
														<li><a href="#"><img alt="" src="img/instagram/1.jpg"></a></li>
														<li><a href="#"><img alt="" src="img/instagram/2.jpg"></a></li>
														<li><a href="#"><img alt="" src="img/instagram/3.jpg"></a></li>
														<li><a href="#"><img alt="" src="img/instagram/4.jpg"></a></li>
														<li><a href="#"><img alt="" src="img/instagram/5.jpg"></a></li>
														<li><a href="#"><img alt="" src="img/instagram/6.jpg"></a></li>
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
							<p>Kettle • All rights <a href="http://www.bootstrapmb.com/">reserved</a> 2018 • Designed by Mugli</p>
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





		<!-- JS here -->
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
    </body>
</html>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		<title>美食栈</title>
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<link rel="manifest" href="site.webmanifest">
		<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
		<!-- Place favicon.ico in the root directory -->
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
		<!-- slider start -->
		<div class="slider-area">
			<div class="slider-active">
				<div class="single-slider pt-300 pb-285 d-flex align-items-center" style="background-image:url(img/slider/slider2.jpg)">
					<div class="container">
						<div class="row ">
							<div class="col-xl-12">
								<div class="slider-content text-center">
									<span data-animation="fadeInUp" data-delay=".2s">Why do something you don’t like?</span>
									<h1 data-animation="fadeInUp" data-delay=".4s">美　　食　　棧</h1>

									<div class="slider-button">
										<a data-animation="fadeInLeft" data-delay=".8s" href="#" class="btn">purchase theme</a>
										<div class="slider-video" data-animation="fadeInRight" data-delay="1s">
											<a class="popup-video" href="https://www.youtube.com/watch?v=2D3bZE5pXEE"><i class="fas fa-play"></i></a>
											<span>Watch The Overview</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="single-slider pt-300 pb-285 d-flex align-items-center" style="background-image:url(img/slider/slider2.jpg)">
					<div class="container">
						<div class="row ">
							<div class="col-xl-12">
								<div class="slider-content text-center">
									<span data-animation="fadeInUp" data-delay=".2s">Why do something you don’t like?</span>
									<h1 data-animation="fadeInUp" data-delay=".4s">美食栈</h1>
									<div class="slider-link" data-animation="fadeInUp" data-delay=".6s">
										<ul>
											<li>FOUR PEOPLE</li>
											<li>FOUR CITIES</li>
											<li>FOUR STYLES</li>
											<li>FOUR IDEAS </li>
										</ul>
									</div>
									<div class="slider-button">
										<a data-animation="fadeInLeft" data-delay=".8s" href="#" class="btn">purchase theme</a>
										<div class="slider-video" data-animation="fadeInRight" data-delay="1s">
											<a class="popup-video"  href="img/lala.mp4"><i class="fas fa-play"></i></a>
											<span>Watch The Overview</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="single-slider pt-300 pb-285 d-flex align-items-center" style="background-image:url(img/slider/slider3.jpg)">
					<div class="container">
						<div class="row ">
							<div class="col-xl-12">
								<div class="slider-content text-center">
									<span data-animation="fadeInUp" data-delay=".2s">Why do something you don’t like?</span>
									<h1 data-animation="fadeInUp" data-delay=".4s">美食栈</h1>
									<div class="slider-link" data-animation="fadeInUp" data-delay=".6s">
										
									</div>
									<div class="slider-button">
										<a data-animation="fadeInLeft" data-delay=".8s" href="#" class="btn">purchase theme</a>
										<div class="slider-video" data-animation="fadeInRight" data-delay="1s">
											<a class="popup-video" href="https://www.youtube.com/watch?v=2D3bZE5pXEE"><i class="fas fa-play"></i></a>
											<span>Watch The Overview</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- slider end -->
		<!-- service-area-start -->
		<div class="service-area pt-80 pb-40 gray-bg">
			<div class="container">
				<div class="row">
					<div class="col-xl-4 col-lg-4 col-md-6">
						<div class="service-wrapper text-center mb-30">
							<div class="service-img">
								<img src="img/service/service1.png" alt="" />
							</div>
							<div class="service-text">
								<h3>We cook with passion</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
									dolore </p>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-6">
						<div class="service-wrapper text-center mb-30">
							<div class="service-img">
								<img src="img/service/service2.png" alt="" />
							</div>
							<div class="service-text">
								<h3>Book a table online</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
									dolore </p>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-6">
						<div class="service-wrapper text-center mb-30">
							<div class="service-img">
								<img src="img/service/service3.png" alt="" />
							</div>
							<div class="service-text">
								<h3>Free and fast delivery</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
									dolore </p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- service-area-end -->
		<!-- benefits-area-start -->
		<div class="benefits-area pt-100 pb-70">
			<div class="container">
				<div class="row">
					<div class="col-xl-6 col-lg-6 mb-30">
						<div class="benefits-wrapper">
							<div class="benefits-section">
								<span>Heathl</span>
								<h1>健康养生</h1>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiu smod tempor incididunt ut labore et
									dolore magna aliqua. </p>
							</div>
						</div>
						<div class="benefits-tab-area mt-25">
							<div class="row">
								<div class="col-xl-12">
									<ul class="nav benefits-tab mb-45" id="myTab" role="tablist">
										<li class="nav-item">
											<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home">home </a>
										</li>
										<li class="nav-item">
											<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile"> Food Design </a>
										</li>
										<li class="nav-item">
											<a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact"> Kitchen </a>
										</li>
										<li class="nav-item">
											<a class="nav-link" id="contact1-tab" data-toggle="tab" href="#contact1"> Cooking </a>
										</li>
									</ul>
									<div class="tab-content" id="myTabContent">
										<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
											<div class="row">
												<div class="col-xl-12">
													<div class="question-collapse">
														<div id="accordion">
															<div class="card">
																<div class="card-header" id="headingOne">
																	<h5 class="mb-0">
																		<button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true"
																		 aria-controls="collapseOne">
																			Our entertainment teamInteger
																		</button>
																	</h5>
																</div>

																<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
																	<div class="card-body">
																		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
																			labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="headingTwo">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo"
																		 aria-expanded="false" aria-controls="collapseTwo">
																			Important issues communication
																		</button>
																	</h5>
																</div>
																<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
																	<div class="card-body">
																		<p>Duis ac tellus et risus vulputate vehicula onec lobortis risus a elit tempe
																			corper ligula eu tempor congue eros est euismod turpis id tincidunt sapien
																			risuquam. Maecenas fermentum consequat mionec fermentum.</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="headingThree">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree"
																		 aria-expanded="false" aria-controls="collapseThree">
																			Where you can find all information
																		</button>
																	</h5>
																</div>
																<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
																	<div class="card-body">
																		<p>Duis ac tellus et risus vulputate vehicula onec lobortis risus a elit tempe
																			corper ligula eu tempor congue eros est euismod turpis id tincidunt sapien
																			risuquam. Maecenas fermentum consequat mionec fermentum.</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="headingFour">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour"
																		 aria-expanded="false" aria-controls="collapseFour">
																			Where you can find all information
																		</button>
																	</h5>
																</div>
																<div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
																	<div class="card-body">
																		<p>Duis ac tellus et risus vulputate vehicula onec lobortis risus a elit tempe
																			corper ligula eu tempor congue eros est euismod turpis id tincidunt sapien
																			risuquam. Maecenas fermentum consequat mionec fermentum.</p>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
											<div class="row">
												<div class="col-xl-12">
													<div class="question-collapse">
														<div id="accordion2">
															<div class="card">
																<div class="card-header" id="heading1">
																	<h5 class="mb-0">
																		<button class="btn btn-link" data-toggle="collapse" data-target="#collapse1" aria-expanded="true"
																		 aria-controls="collapse1">
																			Our entertainment teamInteger
																		</button>
																	</h5>
																</div>

																<div id="collapse1" class="collapse show" aria-labelledby="heading1" data-parent="#accordion2">
																	<div class="card-body">
																		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
																			labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading2">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse2" aria-expanded="false"
																		 aria-controls="collapse2">
																			Important issues communication
																		</button>
																	</h5>
																</div>
																<div id="collapse2" class="collapse" aria-labelledby="heading2" data-parent="#accordion2">
																	<div class="card-body">
																		<p>Duis ac tellus et risus vulputate vehicula onec lobortis risus a elit tempe
																			corper ligula eu tempor congue eros est euismod turpis id tincidunt sapien
																			risuquam. Maecenas fermentum consequat mionec fermentum.</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading3">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse3" aria-expanded="false"
																		 aria-controls="collapse3">
																			Where you can find all information
																		</button>
																	</h5>
																</div>
																<div id="collapse3" class="collapse" aria-labelledby="heading3" data-parent="#accordion2">
																	<div class="card-body">
																		<p>Duis ac tellus et risus vulputate vehicula onec lobortis risus a elit tempe
																			corper ligula eu tempor congue eros est euismod turpis id tincidunt sapien
																			risuquam. Maecenas fermentum consequat mionec fermentum.</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading4">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse4" aria-expanded="false"
																		 aria-controls="collapse4">
																			Where you can find all information
																		</button>
																	</h5>
																</div>
																<div id="collapse4" class="collapse" aria-labelledby="heading4" data-parent="#accordion2">
																	<div class="card-body">
																		<p>Duis ac tellus et risus vulputate vehicula onec lobortis risus a elit tempe
																			corper ligula eu tempor congue eros est euismod turpis id tincidunt sapien
																			risuquam. Maecenas fermentum consequat mionec fermentum.</p>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
											<div class="row">
												<div class="col-xl-12">
													<div class="question-collapse">
														<div id="accordion3">
															<div class="card">
																<div class="card-header" id="heading5">
																	<h5 class="mb-0">
																		<button class="btn btn-link" data-toggle="collapse" data-target="#collapse5" aria-expanded="true"
																		 aria-controls="collapse5">
																			Our entertainment teamInteger
																		</button>
																	</h5>
																</div>

																<div id="collapse5" class="collapse show" aria-labelledby="heading5" data-parent="#accordion3">
																	<div class="card-body">
																		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
																			labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading6">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse6" aria-expanded="false"
																		 aria-controls="collapse6">
																			Important issues communication
																		</button>
																	</h5>
																</div>
																<div id="collapse6" class="collapse" aria-labelledby="heading6" data-parent="#accordion3">
																	<div class="card-body">
																		<p>Duis ac tellus et risus vulputate vehicula onec lobortis risus a elit tempe
																			corper ligula eu tempor congue eros est euismod turpis id tincidunt sapien
																			risuquam. Maecenas fermentum consequat mionec fermentum.</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading7">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse7" aria-expanded="false"
																		 aria-controls="collapse7">
																			Where you can find all information
																		</button>
																	</h5>
																</div>
																<div id="collapse7" class="collapse" aria-labelledby="heading7" data-parent="#accordion3">
																	<div class="card-body">
																		<p>Duis ac tellus et risus vulputate vehicula onec lobortis risus a elit tempe
																			corper ligula eu tempor congue eros est euismod turpis id tincidunt sapien
																			risuquam. Maecenas fermentum consequat mionec fermentum.</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading8">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse8" aria-expanded="false"
																		 aria-controls="collapse8">
																			Where you can find all information
																		</button>
																	</h5>
																</div>
																<div id="collapse8" class="collapse" aria-labelledby="heading8" data-parent="#accordion3">
																	<div class="card-body">
																		<p>Duis ac tellus et risus vulputate vehicula onec lobortis risus a elit tempe
																			corper ligula eu tempor congue eros est euismod turpis id tincidunt sapien
																			risuquam. Maecenas fermentum consequat mionec fermentum.</p>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="tab-pane fade" id="contact1" role="tabpanel" aria-labelledby="contact-tab">
											<div class="row">
												<div class="col-xl-12">
													<div class="question-collapse">
														<div id="accordion4">
															<div class="card">
																<div class="card-header" id="heading9">
																	<h5 class="mb-0">
																		<button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true"
																		 aria-controls="collapse9">
																			Our entertainment teamInteger
																		</button>
																	</h5>
																</div>

																<div id="collapse9" class="collapse show" aria-labelledby="heading9" data-parent="#accordion4">
																	<div class="card-body">
																		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
																			labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading10">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse10" aria-expanded="false"
																		 aria-controls="collapseTwo">
																			Important issues communication
																		</button>
																	</h5>
																</div>
																<div id="collapse10" class="collapse" aria-labelledby="heading10" data-parent="#accordion4">
																	<div class="card-body">
																		<p>Duis ac tellus et risus vulputate vehicula onec lobortis risus a elit tempe
																			corper ligula eu tempor congue eros est euismod turpis id tincidunt sapien
																			risuquam. Maecenas fermentum consequat mionec fermentum.</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading11">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse11" aria-expanded="false"
																		 aria-controls="collapse11">
																			Where you can find all information
																		</button>
																	</h5>
																</div>
																<div id="collapse11" class="collapse" aria-labelledby="heading11" data-parent="#accordion4">
																	<div class="card-body">
																		<p>Duis ac tellus et risus vulputate vehicula onec lobortis risus a elit tempe
																			corper ligula eu tempor congue eros est euismod turpis id tincidunt sapien
																			risuquam. Maecenas fermentum consequat mionec fermentum.</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading12">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse12" aria-expanded="false"
																		 aria-controls="collapse12">
																			Where you can find all information
																		</button>
																	</h5>
																</div>
																<div id="collapse12" class="collapse" aria-labelledby="heading12" data-parent="#accordion4">
																	<div class="card-body">
																		<p>Duis ac tellus et risus vulputate vehicula onec lobortis risus a elit tempe
																			corper ligula eu tempor congue eros est euismod turpis id tincidunt sapien
																			risuquam. Maecenas fermentum consequat mionec fermentum.</p>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6">
						<div class="benefits-img mb-30">
							<img src="img/benefits/benefits1.jpg" alt="" />
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- benefits-area-end -->
		<!-- special-menu-area-start -->
		<div class="special-menu-area pb-100">
			<div class="container">
				<div class="row">
					<div class="col-xl-12">
						<div class="section-title text-center mb-55">
							<h1>热搜排行榜</h1>
							<span>CHECK OUT OUR MENU</span>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-12">
						<ul class="nav special-menu-tab justify-content-center mb-50" id="myTab2" role="tablist">
							<li class="nav-item">
								<a class="nav-link active" id="home1-tab" data-toggle="tab" href="#home1">all</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="profile1-tab" data-toggle="tab" href="#profile1">BREAKFAST</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="contact11-tab" data-toggle="tab" href="#contact11"> SOUP </a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="contact22-tab" data-toggle="tab" href="#contact22"> GRILL </a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="contact33-tab" data-toggle="tab" href="#contact33"> PASTA </a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="contact44-tab" data-toggle="tab" href="#contact44"> PIZZA </a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="contact4-tab" data-toggle="tab" href="#contact4"> DRINK </a>
							</li>
						</ul>
						<div class="tab-content" id="myTabContent2">
							<div class="tab-pane fade show active" id="home1" role="tabpanel" aria-labelledby="home1-tab">
								<div class="row">
									<div class="col-xl-6 col-lg-6 col-md-12">
										<div class="special-menu-wrapper mb-30">
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/1.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$11.95</span>
													</div>
													<h4>Special Wonthan</h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/2.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$13.95</span>
													</div>
													<h4>Chicken Ball </h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/3.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$15.95</span>
													</div>
													<h4>Prawn toast</h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-6 col-lg-6 col-md-12">
										<div class="special-menu-wrapper mb-30">
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/4.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$18.95</span>
													</div>
													<h4>French Fry</h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/5.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$21.95</span>
													</div>
													<h4>Vegetable Pakura </h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/6.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$9.95</span>
													</div>
													<h4>Cheese cake</h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-12">
										<div class="special-menu-button text-center pt-40">
											<a href="#">LOAD MORE</a>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane fade" id="profile1" role="tabpanel" aria-labelledby="profile1-tab">
								<div class="row">
									<div class="col-xl-6 col-lg-6 col-md-12">
										<div class="special-menu-wrapper mb-30">
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/1.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$11.95</span>
													</div>
													<h4>Special Wonthan</h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/2.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$13.95</span>
													</div>
													<h4>Chicken Ball </h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/3.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$15.95</span>
													</div>
													<h4>Prawn toast</h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-6 col-lg-6 col-md-12">
										<div class="special-menu-wrapper mb-30">
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/4.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$18.95</span>
													</div>
													<h4>French Fry</h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/5.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$21.95</span>
													</div>
													<h4>Vegetable Pakura </h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-12">
										<div class="special-menu-button text-center pt-40">
											<a href="#">LOAD MORE</a>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane fade" id="contact11" role="tabpanel" aria-labelledby="contact11-tab">
								<div class="row">
									<div class="col-xl-6 col-lg-6 col-md-12">
										<div class="special-menu-wrapper mb-30">
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/1.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$11.95</span>
													</div>
													<h4>Special Wonthan</h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/2.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$13.95</span>
													</div>
													<h4>Chicken Ball </h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/3.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$15.95</span>
													</div>
													<h4>Prawn toast</h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-6 col-lg-6 col-md-12">
										<div class="special-menu-wrapper mb-30">
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/4.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$18.95</span>
													</div>
													<h4>French Fry</h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/5.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$21.95</span>
													</div>
													<h4>Vegetable Pakura </h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/6.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$9.95</span>
													</div>
													<h4>Cheese cake</h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-12">
										<div class="special-menu-button text-center pt-40">
											<a href="#">LOAD MORE</a>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane fade" id="contact22" role="tabpanel" aria-labelledby="contact22-tab">
								<div class="row">
									<div class="col-xl-6 col-lg-6 col-md-12">
										<div class="special-menu-wrapper mb-30">
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/1.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$11.95</span>
													</div>
													<h4>Special Wonthan</h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/2.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$13.95</span>
													</div>
													<h4>Chicken Ball </h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/3.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$15.95</span>
													</div>
													<h4>Prawn toast</h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-6 col-lg-6 col-md-12">
										<div class="special-menu-wrapper mb-30">
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/4.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$18.95</span>
													</div>
													<h4>French Fry</h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/5.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$21.95</span>
													</div>
													<h4>Vegetable Pakura </h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-12">
										<div class="special-menu-button text-center pt-40">
											<a href="#">LOAD MORE</a>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane fade" id="contact33" role="tabpanel" aria-labelledby="contact33-tab">
								<div class="row">
									<div class="col-xl-6 col-lg-6 col-md-12">
										<div class="special-menu-wrapper mb-30">
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/1.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$11.95</span>
													</div>
													<h4>Special Wonthan</h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/2.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$13.95</span>
													</div>
													<h4>Chicken Ball </h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/3.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$15.95</span>
													</div>
													<h4>Prawn toast</h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-6 col-lg-6 col-md-12">
										<div class="special-menu-wrapper mb-30">
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/4.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$18.95</span>
													</div>
													<h4>French Fry</h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/5.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$21.95</span>
													</div>
													<h4>Vegetable Pakura </h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/6.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$9.95</span>
													</div>
													<h4>Cheese cake</h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-12">
										<div class="special-menu-button text-center pt-40">
											<a href="#">LOAD MORE</a>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane fade" id="contact44" role="tabpanel" aria-labelledby="contact44-tab">
								<div class="row">
									<div class="col-xl-6 col-lg-6 col-md-12">
										<div class="special-menu-wrapper mb-30">
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/1.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$11.95</span>
													</div>
													<h4>Special Wonthan</h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/2.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$13.95</span>
													</div>
													<h4>Chicken Ball </h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/3.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$15.95</span>
													</div>
													<h4>Prawn toast</h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-6 col-lg-6 col-md-12">
										<div class="special-menu-wrapper mb-30">
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/4.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$18.95</span>
													</div>
													<h4>French Fry</h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-12">
										<div class="special-menu-button text-center pt-40">
											<a href="#">LOAD MORE</a>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane fade" id="contact4" role="tabpanel" aria-labelledby="contact4-tab">
								<div class="row">
									<div class="col-xl-6 col-lg-6 col-md-12">
										<div class="special-menu-wrapper mb-30">
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/1.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$11.95</span>
													</div>
													<h4>Special Wonthan</h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/2.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$13.95</span>
													</div>
													<h4>Chicken Ball </h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/3.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$15.95</span>
													</div>
													<h4>Prawn toast</h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-6 col-lg-6 col-md-12">
										<div class="special-menu-wrapper mb-30">
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/4.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$18.95</span>
													</div>
													<h4>French Fry</h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/5.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$21.95</span>
													</div>
													<h4>Vegetable Pakura </h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/6.png" alt="" />
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$9.95</span>
													</div>
													<h4>Cheese cake</h4>
													<p>Blackened Chicken, Cherry Tomatoes, Green Pepper, Onion, Marinara, Mozzarella & Parmesan</p>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-12">
										<div class="special-menu-button text-center pt-40">
											<a href="#">LOAD MORE</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- special-menu-area-end -->
		<!-- gallery-area-start -->
		<div class="gallery-area gray2-bg pb-120 pt-90">
			<div class="container-fluid">
				<div class="row">
					<div class="col-xl-12">
						<div class="section-title text-center mb-75">
							<h1>中外菜品</h1>
							<span>- What we make -</span>
						</div>
					</div>
				</div>
				<div class="gallery-active owl-carousel no-gutters">
					<div class="gallery-item">
						<div class="gallery-wrapper">
							<div class="gallery-img">
								<a class="image-link" href="img/gallery/gallery1.jpg"><img src="img/gallery/gallery1.jpg" alt="" /></a>
								<div class="gallery-text">
									<h3><a href="#">Snow Roll Uramaki</a></h3>
									<span>Snow crab, avocado, cucumber, tobiko</span>
								</div>
							</div>
						</div>
					</div>
					<div class="gallery-item">
						<div class="gallery-wrapper">
							<div class="gallery-img">
								<a class="image-link" href="img/gallery/gallery2.jpg"><img src="img/gallery/gallery2.jpg" alt="" /></a>
								<div class="gallery-text">
									<h3><a href="#">Snow Roll Uramaki</a></h3>
									<span>Snow crab, avocado, cucumber, tobiko</span>
								</div>
							</div>
						</div>
					</div>
					<div class="gallery-item">
						<div class="gallery-wrapper">
							<div class="gallery-img">
								<a class="image-link" href="img/gallery/gallery3.jpg"><img src="img/gallery/gallery3.jpg" alt="" /></a>
								<div class="gallery-text">
									<h3><a href="#">Snow Roll Uramaki</a></h3>
									<span>Snow crab, avocado, cucumber, tobiko</span>
								</div>
							</div>
						</div>
					</div>
					<div class="gallery-item">
						<div class="gallery-wrapper">
							<div class="gallery-img">
								<a class="image-link" href="img/gallery/gallery4.jpg"><img src="img/gallery/gallery4.jpg" alt="" /></a>
								<div class="gallery-text">
									<h3><a href="#">Snow Roll Uramaki</a></h3>
									<span>Snow crab, avocado, cucumber, tobiko</span>
								</div>
							</div>
						</div>
					</div>
					<div class="gallery-item">
						<div class="gallery-wrapper">
							<div class="gallery-img">
								<a href="#"><img src="img/gallery/gallery1.jpg" alt="" /></a>
								<div class="gallery-text">
									<h3><a href="#">Snow Roll Uramaki</a></h3>
									<span>Snow crab, avocado, cucumber, tobiko</span>
								</div>
							</div>
						</div>
					</div>
					<div class="gallery-item">
						<div class="gallery-wrapper">
							<div class="gallery-img">
								<a class="image-link" href="img/gallery/gallery2.jpg"><img src="img/gallery/gallery2.jpg" alt="" /></a>
								<div class="gallery-text">
									<h3><a href="#">Snow Roll Uramaki</a></h3>
									<span>Snow crab, avocado, cucumber, tobiko</span>
								</div>
							</div>
						</div>
					</div>
					<div class="gallery-item">
						<div class="gallery-wrapper">
							<div class="gallery-img">
								<a class="image-link" href="img/gallery/gallery3.jpg"><img src="img/gallery/gallery3.jpg" alt="" /></a>
								<div class="gallery-text">
									<h3><a href="#">Snow Roll Uramaki</a></h3>
									<span>Snow crab, avocado, cucumber, tobiko</span>
								</div>
							</div>
						</div>
					</div>
					<div class="gallery-item">
						<div class="gallery-wrapper">
							<div class="gallery-img">
								<a class="image-link" href="img/gallery/gallery4.jpg"><img src="img/gallery/gallery4.jpg" alt="" /></a>
								<div class="gallery-text">
									<h3><a href="#">Snow Roll Uramaki</a></h3>
									<span>Snow crab, avocado, cucumber, tobiko</span>
								</div>
							</div>
						</div>
					</div>
					<div class="gallery-item">
						<div class="gallery-wrapper">
							<div class="gallery-img">
								<a class="image-link" href="img/gallery/gallery1.jpg"><img src="img/gallery/gallery1.jpg" alt="" /></a>
								<div class="gallery-text">
									<h3><a href="#">Snow Roll Uramaki</a></h3>
									<span>Snow crab, avocado, cucumber, tobiko</span>
								</div>
							</div>
						</div>
					</div>
					<div class="gallery-item">
						<div class="gallery-wrapper">
							<div class="gallery-img">
								<a class="image-link" href="img/gallery/gallery2.jpg"><img src="img/gallery/gallery2.jpg" alt="" /></a>
								<div class="gallery-text">
									<h3><a href="#">Snow Roll Uramaki</a></h3>
									<span>Snow crab, avocado, cucumber, tobiko</span>
								</div>
							</div>
						</div>
					</div>
					<div class="gallery-item">
						<div class="gallery-wrapper">
							<div class="gallery-img">
								<a class="image-link" href="img/gallery/gallery3.jpg"><img src="img/gallery/gallery3.jpg" alt="" /></a>
								<div class="gallery-text">
									<h3><a href="#">Snow Roll Uramaki</a></h3>
									<span>Snow crab, avocado, cucumber, tobiko</span>
								</div>
							</div>
						</div>
					</div>
					<div class="gallery-item">
						<div class="gallery-wrapper">
							<div class="gallery-img">
								<a class="image-link" href="img/gallery/gallery4.jpg"><img src="img/gallery/gallery4.jpg" alt="" /></a>
								<div class="gallery-text">
									<h3><a href="#">Snow Roll Uramaki</a></h3>
									<span>Snow crab, avocado, cucumber, tobiko</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- gallery-area-end -->
		<!-- news-area-start -->
		<div class="news-area pt-90 pb-80">
			<div class="container">
				<div class="row">
					<div class="col-xl-12">
						<div class="section-title text-center mb-40">
							<h1>厨房百科</h1>
							<span>Delicious food</span>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-6 col-lg-6 col-md-12 mb-30">
						<div class="row">
							<div class="col-xl-6 col-lg-6 col-md-6">
								<div class="news-img">
									<a href="blog-details.jsp"><img src="img/news/news1.jpg" alt="" /></a>
								</div>
							</div>
							<div class="col-xl-6 col-lg-6 col-md-6">
								<div class="news-wrapper">
									<div class="news-text">
										<span>20 JUNE 2019</span>
										<h3><a href="blog-details.jsp">5 best foods to make you fresh & healthy</a></h3>
										<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy...</p>
										<a href="blog-details.jsp">READ ARTICLE <i class="fas fa-long-arrow-alt-right"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-12 mb-30">
						<div class="row">
							<div class="col-xl-6 col-lg-6 col-md-6">
								<div class="news-img">
									<a href="blog-details.jsp"><img src="img/news/news2.jpg" alt="" /></a>
								</div>
							</div>
							<div class="col-xl-6 col-lg-6 col-md-6">
								<div class="news-wrapper">
									<div class="news-text">
										<span>20 JUNE 2019</span>
										<h3><a href="blog-details.jsp">24 Reasons To Seek Out Fresh Figs</a></h3>
										<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy...</p>
										<a href="blog-details.jsp">READ ARTICLE <i class="fas fa-long-arrow-alt-right"></i></a>
									</div>
								</div>
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
			<div class="footer-top-area pt-100 pb-70 gray2-bg">
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
			<div class="footer-bottom-area pt-25 pb-25">
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div class="copyright text-center">
								
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

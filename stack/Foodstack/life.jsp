<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>厨房百科</title>
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
								<a href="index.html"><img src="img/logo/logo.png" alt="" height="105px" /></a>
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
							<h1>厨房百科</h1>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumb-area-end -->
		<!-- benefits-area-start -->
		<div class="benefits-area pt-100 pb-70">
			<div class="container">
				<div class="row">
					<div class="col-xl-6 col-lg-6 mb-30">
						<div class="benefits-wrapper">
							<div class="benefits-section">
								<h2>生活妙招</h2>
							</div>
						</div>
						<div class="benefits-tab-area mt-25">
							<div class="row">
								<div class="col-xl-12">
									
									<div class="tab-content" id="myTabContent">
										<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
											<div class="row">
												<div class="col-xl-12">
													<div class="question-collapse">
														<div id="accordion">
															<div class="card">
																<div class="card-header" id="headingOne">
																	<h5 class="mb-0">
																		<button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
																			简单快手开椰子的做法
																		</button>
																	</h5>
																</div>
																<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
																	<div class="card-body">
																		<p>

1、
一个椰子 一把菜刀 看到那三根棱了吧 用刀背，注意是刀背，垂直对着那线砍下去。<br />

2、
砍完以后是这样，砍完一圈后，就可以轻松的用手直接将壳起起来了<br />

3、
看到白白的椰肉了

</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="headingTwo">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
																			你会洗龙虾吗？
																		</button>
																	</h5>
																</div>
																<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
																	<div class="card-body">
																		<p>
1.准备工作：左手戴手套，拇指跟食指捏住虾钳腿的下半部分。<br />

2.龙虾尾部有3片，只要扯中间那片，轻轻掐开中间那片尾巴的左右两边，然后用拇指的指甲紧紧捏住一扯，肠子就会连着这片尾巴一起被带出了。
<br />
3.
除了钳子以外的脚，分左右两边，先捏住一边的所有小脚，然后朝着另一个方向扯，这样就会连着里面的腮一起拽出来了。另一边也用同样的方法
<br />
4.如果龙虾比较小的话，可以把两边的龙虾脚放在一起朝着龙虾的尾部扯【除了钳子的脚】，这样就会直接全部拽出来了
</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="headingThree">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
																			咸中有风险：6个控盐小妙招儿
																		</button>
																	</h5>
																</div>
																<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
																	<div class="card-body">
																		<p>1、减少烹调用盐，建议使用盐勺

　　现在的食盐袋里大都会装有一个2g的小盐勺，每人每天吃的全部食物用盐量别超过3小勺。超市中也都有不同规格的量勺出售，不妨买一个放在厨房中，做饭时控制盐量。这样一来，你可能会发现原来做一个菜要放那么多盐!
<br />
　　2、如果用了味精、酱油、酱等含钠盐的调味品，减少或不放盐

　　一般20ml酱油中含有3g食盐，10g黄酱中含盐1.5g。如果做菜时用了这些调味料，一是控制量别放太多了，同时还要相应减少盐的用量。同时别忘了，味精、鸡精中都含有钠，鸡精的40%都是盐。蚝油、辣酱、一些番茄酱等调料中也含有相当数量的钠盐，用了这些调料，就要相应减少盐量，最好就别再放盐了。
<br />
　　3、炒菜时临出锅时再放盐

　　过早放盐，盐会渗入食物中，使味道淡化，这样的菜吃起来咸味就不明显了。如果出锅前再放，会使盐集中在食物表面，吃起来咸味比较明显。<br />

　　4、少吃或不吃含钠盐量较高的各类加工食品

　　如咸菜、酱菜、火腿、咸肉、香肠等都含有不低的盐量。有些火腿肠，一小根(100克)里就有3克盐。<br />

　　5、警惕不咸的加工食品

　　不要以为不咸的食物里没有盐。几乎所有天然、加工食品里都有或多或少的钠盐。像面条、挂面的制作中都要加入很多盐，有些挂面的含盐量能达到3g/100g，而面条本身并没太多咸味。待煮好面条，通常还会加些咸味的调料，这样这一碗面条中的含盐量就相当惊人了，已经超过全天需要量的一半了。

　　另外油条、油饼等食物中也有大量的盐，吃的时候要有这个意识：这些食物的含盐量都不低，所以要注意控制其他食物的盐量。<br />

　　6、减少加工休闲食品的摄入

　　市售加工零食几乎都会加入不少钠盐，一方面可以起到防腐作用，另一方面可以提升味道。而在吃这些食物时，很少会有人考虑到其中的盐。所以加工食品是盐摄入的一大途径。

　　我见过含盐量最高的零食是话梅，有些话梅的含盐量能超过12000mg/100g。这是什么概念呢?就是100克话梅里能有大概30克的盐——实在太恐怖了!

</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="headingFour">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
																			三分钟快速削菠萝
																		</button>
																	</h5>
																</div>
																<div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
																	<div class="card-body">
																		<p>1、 用大刀切去菠萝头部和底部<br />

2、 将去头去尾的菠萝对半切开<br />

3、 再分成八个小块(这个数量可大可小，分成四块、六块或者更多都可以)<br />

4、 取其中的一小块，竖着切成N个小块
<br />
5、 再用水果刀贴着菠萝皮切过去，菠萝就切好了，如果喜欢更小的块，可以继续切</p>
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
																		<button class="btn btn-link" data-toggle="collapse" data-target="#collapse1" aria-expanded="true" aria-controls="collapse1">
																			Our entertainment teamInteger
																		</button>
																	</h5>
																</div>

																<div id="collapse1" class="collapse show" aria-labelledby="heading1" data-parent="#accordion2">
																	<div class="card-body">
																		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading2">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse2" aria-expanded="false" aria-controls="collapse2">
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
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse3" aria-expanded="false" aria-controls="collapse3">
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
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse4" aria-expanded="false" aria-controls="collapse4">
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
										
									
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6">
						<div class="benefits-img mb-30">
							<img src="img/benefits/benefit2.png" alt="" />
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- benefits-area-end -->
		<!-- counter-area-start -->
	
		<footer>
			<div class="footer-top-area footer2 pt-100 pb-70 black2-bg">
				<div class="container">
					<div class="row">
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="footer-wrapper mb-30">
								<div class="footer-logo">
									<a href="index.jsp"><img src="img/logo/logo.png" style="width: 193px; height:105px"  /></a>
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

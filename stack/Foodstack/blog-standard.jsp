<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>各地热门</title>
        <meta charset="utf-8">
        <title>各地热门</title>
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
    	   /* $.ajax({
       		type:"GET",
       		url:"${pageContext.request.contextPath }/HomeSnack",
       		data:"method=list",
       		dataType:"json",
       		async:"false",
       		success:function(data){
       			$("#lu").empty();
       			for(var i = 0;i < data.length; i++){
       				$('#lu').append("<li class='address-li'><a href='${pageContext.request.contextPath }/HomeSnack?method=show&snacks"+data[i].name+"'>"+data[i].name+"</a></li>"); 
       			}
       		}
       	}); */
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
    <style type="text/css">
    .bigger { transition:transform 1s; }
			.bigger:hover{ transform: scale(1.1,1.1); }</style>
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
								<a href="index.jsp"><img src="img/logo/logo.png" alt="" height="105px"/></a>
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
							<h2>各地热门</h2>
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
					<div class="col-xl-4 col-lg-4 col-md-6 mb-55">
						<div class="news-wrapper single-news">
							<div class="news-img">
								<a href="耗牛火锅.jsp"><img src="img/news/blog/耗牛火锅.jpg" alt="耗牛火锅" class="bigger"/></a>
							</div>
							<div class="news-text">
								<span>云南小吃</span>
								<h3><a href="耗牛火锅.jsp">耗牛火锅</a></h3>
								<p>"到丽江往往让人忽略了它的美食——因为有太多的景致。其实单单牦牛火锅，就足以让你彻底爱上丽江的。牦牛生活在无污染的高原，食草而生、肉质细嫩，是藏家的最爱。除了牦牛火锅，汉族人现在还没有其它途径一品牦牛肉的鲜美。"</p>
								<a href="耗牛火锅.jsp">查看详情  <i class="fas fa-long-arrow-alt-right"></i></a>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-6 mb-55">
						<div class="news-wrapper single-news">
							<div class="news-img">
								<a href="蜜饯.jsp"><img src="img/news/blog/蜜饯.jpg" alt="蜜饯" class="bigger"/></a>
							</div>
							<div class="news-text">
								<span>云南小吃</span>
								<h3><a href="蜜饯.jsp">蜜饯</a></h3>
								<p>"丽江蜜饯口味琳琅满目：苹果、辣椒、海棠果、小白芨、冬瓜、梅子、红薯、番茄、木瓜、海棠果、莲藕、茄子、柚子、桔子等，块块晶莹透亮，似成色极佳的黄玉，味道五花八门。虽然种类很多但却只有一个共同意思，既“甜蜜蜜”。"</p>
								<a href="蜜饯.jsp">查看详情  <i class="fas fa-long-arrow-alt-right"></i></a>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-6 mb-55">
						<div class="news-wrapper single-news">
							<div class="news-img">
								<a href="野生菌.jsp"><img src="img/news/blog/野生菌.jpg" alt="野生菌" class="bigger"/></a>
							</div>
							<div class="news-text">
								<span>云南小吃</span>
								<h3><a href="野生菌.jsp">野生菌</a></h3>
								<p>野生菌是指生长在野外纯净无污染环境中的食用菌，它们属于高营养的绿色食品，而且口感鲜嫩，能炒食也能煲汤，人们食用这些野生菌以后对身体有诸多好处。</p>
								<a href="野生菌.jsp">查看详情  <i class="fas fa-long-arrow-alt-right"></i></a>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-6 mb-55">
						<div class="news-wrapper single-news">
							<div class="news-img">
								<a href="红薯粑粑.jsp"><img src="img/news/blog/红薯粑粑.jpg" alt="红薯粑粑" class="bigger"/></a>
							</div>
							<div class="news-text">
								<span>湖南小吃</span>
								<h3><a href="红薯粑粑.jsp">红薯粑粑</a></h3>
								<p>"红薯在日常生活中也是比较常见的一种蔬菜了，每次上街，看到卖薯丁粑粑的，我必定要买上一个尝尝，对油炸食品没丝毫的抵抗力呢，再说红薯本来就是我最喜欢的食品之一，这次试着自己做了次薯丁粑粑，口感和街上了一模一样呢，超好吃。"</p>
								<a href="红薯粑粑.jsp">查看详情  <i class="fas fa-long-arrow-alt-right"></i></a>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-6 mb-55">
						<div class="news-wrapper single-news">
							<div class="news-img">
								<a href="刮凉粉.jsp"><img src="img/news/blog/刮凉粉.jpg" alt="" class="bigger"/></a>
							</div>
							<div class="news-text">
								<span>湖南小吃</span>
								<h3><a href="刮凉粉.jsp">刮凉粉</a></h3>
								<p>"长沙街头的夏天，最受欢迎的莫过于刮凉粉了，
								只要你冲着摊主喊一声“来碗刮凉粉！”摊主便会麻利地拿出模具，很快便刮出一条条细长白嫩而且光滑的凉粉来，装进碗里后配上红红的辣椒油、
								翠绿的葱花和香喷喷的花生碎，那就是夏日里最大的满足了。"</p>
								<a href="刮凉粉.jsp">查看详情  <i class="fas fa-long-arrow-alt-right"></i></a>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-6 mb-55">
						<div class="news-wrapper single-news">
							<div class="news-img">
								<a href="腌萝卜干.jsp"><img src="img/news/blog/腌萝卜干.jpg" alt="腌萝卜干" class="bigger"/></a>
							</div>
							<div class="news-text">
								<span>湖南小吃</span>
								<h3><a href="腌萝卜干.jsp">腌萝卜干</a></h3>
								<p>湖南腌菜是一种以湿态发酵方式加工制成的浸制品，为泡菜的一种。泡菜制作容易，成本低廉，营养卫生，风味可口，利于贮存。湖南腌菜的主要原料是各种蔬菜，营养丰富，咸酸适度，味美而嫩脆，能增进食欲，帮助消化。</p>
								<a href="腌萝卜干.jsp">查看详情  <i class="fas fa-long-arrow-alt-right"></i></a>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-6 mb-55">
						<div class="news-wrapper single-news">
							<div class="news-img">
								<a href="白斩鸡.jsp"><img src="img/news/blog/白斩鸡.jpg" alt="白斩鸡" class="bigger"/></a>
							</div>
							<div class="news-text">
								<span>上海小吃</span>
								<h3><a href="白斩鸡.jsp">白斩鸡</a></h3>
								<p>"提到上海的特色风味菜，白斩鸡似乎是上海人的至爱，上海滩上经营白斩鸡的店家之多、品名之繁就是明证。
白斩鸡是冷盘，因烹鸡时不加调味白煮而成，食用时随吃随斩，故称白斩鸡。"</p>
								<a href="白斩鸡.jsp">查看详情  <i class="fas fa-long-arrow-alt-right"></i></a>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-6 mb-55">
						<div class="news-wrapper single-news">
							<div class="news-img">
								<a href="上海粢饭糕.jsp"><img src="img/news/blog/上海粢饭糕.jpg" alt="上海粢饭糕" class="bigger"/></a>
							</div>
							<div class="news-text">
								<span>上海小吃</span>
								<h3><a href="上海粢饭糕.jsp">上海粢饭糕</a></h3>
								<p>"上海传统早餐以“四大金刚”“大饼、油条、粢饭、豆浆”而闻名，据另一种说法，是将粢饭糕取代粢饭排入“四大金刚”之列，可见其在上海的受欢迎程度，粢饭糕为干货一般配豆浆享用。"</p>
								<a href="上海粢饭糕.jsp">查看详情  <i class="fas fa-long-arrow-alt-right"></i></a>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-6 mb-55">
						<div class="news-wrapper single-news">
							<div class="news-img">
								<a href="上海炸猪排.jsp"><img src="img/news/blog/上海炸猪排.jpg" alt="上海炸猪排" class="bigger"/></a>
							</div>
							<div class="news-text">
								<span>上海小吃</span>
								<h3><a href="上海炸猪排.jsp">上海炸猪排</a></h3>
								<p>"炸猪排是一道经典的上海菜，但同时它也是地道的舶来品。用猪大排先敲后上味，再要拍粉挂蛋糊最后裹上一层面包糠，经过油炸之后，最正宗的吃法是用辣酱油一起，味道鲜香解腻，让人欲罢不能。"</p>
								<a href="上海炸猪排.jsp">查看详情  <i class="fas fa-long-arrow-alt-right"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-12 pt-40">
						<div class="pagination text-center">
							<ul>
							</ul>
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
			<div class="footer-top-area footer2 pt-90 pb-80 black2-bg">
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

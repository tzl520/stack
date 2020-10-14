<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>厨房百科</title>
        <meta charset="utf-8">
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
								<h2>烹饪技巧</h2>
							</div>
						</div>
						<div class="benefits-tab-area mt-25">
							<div class="row">
								<div class="col-xl-12">
									<!-- <ul class="nav benefits-tab mb-45" id="myTab" role="tablist">
									  <li class="nav-item">
										<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home">home </a>
									  </li>
									  <li class="nav-item">
										<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile">  Food Design </a>
									  </li>
									  <li class="nav-item">
										<a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact">  Kitchen  </a>
									  </li>
									  <li class="nav-item">
										<a class="nav-link" id="contact1-tab" data-toggle="tab" href="#contact1"> Cooking  </a>
									  </li>
									</ul> -->
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
																			炒制重庆老火锅底料的方法
																		</button>
																	</h5>
																</div>

																<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
																	<div class="card-body">
																		<p>一、先准备材料：牛油50斤、干辣椒13斤(根据吃的辣度选择种类，我选的新一代+石柱红，绝对够辣)在烧开的水中煮2分钟，将煮好的辣椒的三分二打成糍粑海椒、上好的花椒3斤、高梁酒1斤、醪糟2斤、郫县豆瓣3斤、豆母子3两、芽菜3两、大葱3斤破开、洋葱1斤切片、老姜5斤切片
<br />
二、现在开始炒料：<br />

1、先将牛油放入大锅中大火烧化，烧到7成热，改为中火，将大葱和洋葱放入油锅爆干水分，捞出不要<br />

2、将老姜放入油中爆香到水气较少时，下入豆瓣，豆母子，芽菜，大锅铲不停铲动，以免巴锅，炒到水分快干时下糍粑海椒，改大火，这时锅铲不能停<br />

3、锅里沸腾10分钟的时侯改中火，下入余下的海椒继续炒<br />

4、炒至海椒颜色开始变深时，下醪糟，继续炒<br />

5、炒至海椒翻沙时，改小火,倒入高梁酒，下花椒，继续炒5分钟<br />

6、起锅，加盖焖5-12小时就可以用了<br />

三、打锅：底料8两至1斤半(根据自己吃辣的程度)，鸡精50克、味精50克、老姜几片，大蒜适量，胡椒粉1小勺、高梁酒1勺，花椒50克、干海椒节适量、醪糟汁1小勺，生牛油1大砣，老油和高汤按7比3的比例兑入
.这是煮了两个多小时的锅底，就可以涮火锅吃了</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="headingTwo">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
																			五步教你学会做戚风蛋糕
																		</button>
																	</h5>
																</div>
																<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
																	<div class="card-body">
																		<p>首先准备工作：要选用冰鸡蛋，这样冰蛋的蛋白和蛋黄比新鲜鸡蛋更容易分开;分离蛋黄和蛋白，蛋白一定要保证放入无油无水的容器中，才能打发后蛋白；
<br />
　　第二步调制蛋黄糊：蛋黄加入白糖后，一定要搅打至呈乳白色;再加入色拉油牛奶，混合均匀，加入两样目的是使蛋糕更加滋润柔软;最后在蛋黄液中加入低筋面粉和精盐混合，注意一定要将面粉过筛，这样能保证蛋糕细腻的口感；
<br />
　　第三步打发蛋白：蛋白的搅打质量是制作戚风蛋糕的关键，而影响蛋白发泡的因素却有很多：搅打蛋白的器具要洁净，不能沾有油脂和水;糖能帮助蛋白形成稳定和持久的泡沫，因此在蛋白搅打呈粗白泡沫开始时分两, 三次加入糖打发也很关键;直到蛋白搅拌至硬性发泡，也就是提起打蛋器，见蛋白的尖峰挺立，就可以啦;这时我们再加入点白醋(替代化学品塔塔粉)继续搅打，它能起到帮助蛋白气泡稳定的作用；
<br />
　　第四步蛋黄糊与蛋白的混合：应先用部分打发的蛋白来稀释蛋黄糊，然后把稀释过的蛋黄糊再与打发蛋白混合，蛋黄糊和蛋白应在短时间内混合均匀，注意混合手法，将底部的混合体从下往上挑起，这样更有利于气泡的进入;并且拌制动作要轻要快，不要拌得太久或太用力；
<br />
　　最后就是烘焙：戚风蛋糕模具(或烤盘)不能涂油脂，烘烤前必须让烤箱预热，设定好温度，按照蛋糕体积大小调整好相应温度;烤好蛋糕后，应立即从烤箱内取出倒扣，否则会引起收缩;再趁着有余温时从蛋糕模具中取出。

　　经过这五步后， 你就可以吃到非常松软， 口感细致， Q润且弹性十足的戚风蛋糕啦。</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="headingThree">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
																			五步做好美味清蒸虾
																		</button>
																	</h5>
																</div>
																<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
																	<div class="card-body">
																		<p>第一步：挑虾——清蒸的虾要选用虾壳比较硬的小龙虾， 这样蒸出来的肉质饱满而且能保持鲜嫩; 相反做油焖大虾等就要选择虾壳比较软的虾，这样炒出来更容易入味；
<br />
第二步：清洗——现在的小龙虾虽然是养殖的， 但还是比较脏， 特别是虾腹部， 因此抓住虾背， 用牙刷在流水下刷洗干净；(注意小心不要被虾钳扎到手，可以抓虾的手带只厚点手套)
<br />
第三步：处理——小龙虾在下锅之前， 要将虾线去除， 我们左手抓住虾背， 右手从虾尾巴三片中间一片捏紧后向外拉， 就能很方便的抽出虾线；
<br />
第四步：调味——按照个人不同的口味调出自己喜爱的料汁， 不过一定要加入点姜末， 因为虾和大多数海鲜是寒性， 所以需要阳性的姜来中和平衡;放入姜末后一定要静置十分钟， 让姜的热性散发出来；
<br />
第五步：蒸虾——蒸虾时一定要水已经烧开， 再开始蒸，只要十分钟即可， 时间过长会让虾肉老。

　　经过五步简单的处理后，这么一大盘美味鲜嫩的小龙虾就端上桌了， 是不是已经迫不及待了? 趁着小龙虾开始大量上市的季节， 赶紧也买回家做着吃吧。</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="headingFour">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
																			3个小窍门搞定北京火爆小吃鸡蛋灌饼
																		</button>
																	</h5>
																</div>
																<div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
																	<div class="card-body">
																		<p>1、40度左右的温盐水和面，这样和出的面柔软、劲道；<br>

2、擀开的饼皮抹油，成品层次丰富，口感酥脆；<br />

3、饼尽量擀的薄一些，很快就会鼓起来，方便灌入蛋液</p>
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
							<img src="img/benefits/benefit5.png" alt="" />
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
									<a href="index.html"><img src="img/logo/logo.png" style="width: 193px; height:105px"  /></a>
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

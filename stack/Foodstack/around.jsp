<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <meta charset="utf-8">
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
								<h2>摆盘周边</h2>
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
																			吃水果也要讲究情调
																		</button>
																	</h5>
																</div>
																<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
																	<div class="card-body">
																		<p>
																			  吃水果也要小资啊！更要讲究点情调呢！这夏天已经来了！今年的夏天，似乎是让我相当的~~~~怎么说呢？
																			  应该是过的舒心吧！不会像前两年那么的闷热，终于是神清气爽了啊！自己家，怎么呆着都舒服！
																			  嘿嘿，闲的没事，把那普通的水果，都让它们过些小资的日子，然后被我及其优雅的——吃掉！
																			  </br>
																			  哇咔咔——今天做的，是用香蕉，猕猴桃，还有小番茄的椰树！
																			  </br>
																			  原料：香蕉、猕猴桃、小番茄
																			  </br>
																			  做法：
																			  </br>
																			  1.小番茄洗净，先斜着切去1/3，然后切口朝下，对半切开，斜切口那边对着拼上，就成了心形的样子
																			  </br>
																			  2.香蕉切去两头，对半切开
																			  </br>
																			  3.将香蕉切段，大小随意，做椰树的树干
																			  </br>
																			  4.猕猴桃去皮，对半切开以后，从中间位置开始，切薄片，做椰树的叶子
																			  </br>
																			  5.切好的材料码在大一点的平盘里，特简单的一种吃水果的方式
																			  </p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="headingTwo">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
																			西瓜果盘的几种优雅切法
																		</button>
																	</h5>
																</div>
																<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
																	<div class="card-body">
																		<p>
																			 没有西瓜的夏天是不完整的夏天你爱怎么吃西瓜？
																			 我最喜欢捧半个西瓜窝在沙发上用勺子挖着吃，而且是从最中央开始自己吃西瓜，这就是最爽的吃法~不过，
																			 要是一家人或者来了朋友，那就得换个吃法~西瓜汁水多，一不小心就会吃得很狼狈，学了几种西瓜的切法，
																			 吃起来绝对不会满脸瓜汁，也不会弄脏手指，直接吃或者用水果叉、牙签就能搞定，适合聚会小食~西瓜季开始了，随意选一种切法招待客人，一起优雅地吃西瓜~
																			 </br>
																			 第一种切法：
																			 </br>
																			        拿起来直接吃~多余的一半瓜皮方便捏握，而且不脏手~
																			 </br>
																			 1、取西瓜1/4个。
																			 </br>
																			 2、顺着瓜皮用刀切成1.5厘米厚度的片状。
																			 </br>
																			 3、再将西瓜切成大小均匀的6—8等份。
																			 </br>
																			 4、取其中一份，用刀切去一半瓜皮即可。
																			 </br>
																			 5、依次切好摆盘食用。
																			 </br>
																			 第二种切法：
																			 </br>
																			        和第一种略有不同~这样切出来的西瓜，吃着有天然冰棒的感觉~
																			 </br>
																			 1、取西瓜1/4个。
																			 </br>
																			 2、顺着瓜皮用刀切成1.5厘米厚度的片状。
																			 </br>
																			 3、再将西瓜切成大小均匀的6—8等份。
																			 </br>
																			 4、取其中一块，把瓜皮等分成三份各去两端。
																			 </br>
																			 5、依次切好摆盘即可。
																			 </br>
																			        像不像天然冰棒或是棵树~
																			 </br>
							
																			 第三种方法：
																			 </br>
																			 1、取西瓜1/4个。
																			 </br>
																			 2、顺着瓜皮用刀切成1.5厘米厚度的片状。
																			 </br>
																			 3、再将西瓜切成大小均匀的4等份。
																			 </br>
																			 4、取其中一份，切去瓜皮，再等分成四小块。
																			 </br>
																			 5、依次切好摆盘。
																			 </br>
																			 </p>


																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="headingThree">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
																			番茄黄瓜制作的拼盘
																		</button>
																	</h5>
																</div>
																<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
																	<div class="card-body">
																		<p> 一盘好菜，我们常常用“色香味俱全”来形容。在此，“色”在头位，可想而知一碟菜的摆盘是多么重要。
																		而我们在酒楼食肆，又或是亲朋宴客时看到的冷盘，往往摆盘精美，色彩鲜艳，尚未闻到菜香，光看着就已赏心悦目。
																		对于零厨艺的懒人们来说，刀功可不是一两日便可练就的神功，我们如何能让笨刀功们的美食也赏心悦目呢？
																		以下懒人示范简单的黄光菱形切法与简单的西红柿盘边装饰切法，保证让零厨艺笨刀功们瞬间弄出简单却惊艳的摆盘。
																		</br>
																		黄瓜的菱形切法：
																		</br>
																		1.黄瓜去头去尾，斜切成段
																		</br>
																		2.切面朝上，垂直切片，切出来就是漂亮的菱形片了
																		</br>
																		3.为了使菱形片们能在摆盘时“站立”，可根据实际情况在尾部横切一刀，把尾部切平
																		</br>
																		西红柿的盘边装饰切法：
																		</br>
																		1.西红柿一切为八
																		</br>
																		2.在西红柿的蒂部斜切一小刀，一来把果蒂切掉，二来，能让西红柿“站立”
																		</br>
																		3.用刀把皮和肉切开，注意，只切2/3，留下1/3，不能完全切断
																		</br>
																		4.把皮朝外卷，并把西红柿“竖立”起来摆在碟边即可
																		</br>
																		</p>


																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="headingFour">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
																			另类插花：水果花篮

																		</button>
																	</h5>
																</div>
																<div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
																	<div class="card-body">
																		<p>
																			平时大家都做过水果拼盘，估计水果花篮很少有人尝试吧，呵呵，
																			节日或宴客时代替鲜花放在餐桌上可以增色不少呢，既有观赏价值又有食用价值，
																			并且吃起来像糖葫芦一样也怪方便，有巧克力机的话可以顺便吃个巧克力火锅，流口水了吗？可惜我没有巧克力机，呵呵。
																			</br>
																			原料：特小凤500g、菠萝500g、苹果300g、草莓300g、小番茄200g、橙子200g、萝卜适量、竹签适量
																			</br>
																			做法：
																			</br>
																			1.准备好水果，提前清洗干净
																			</br>
																			2.用几个萝卜放在花篮底部当花插
																			</br>
																			3.苹果去皮切片，用花模压出形状
																			</br>
																			4.在淡盐水里泡泡以免氧化
																			</br>
																			5.特小凤切片压成星星
																			</br>
																			6.菠萝挖成球
																			</br>
																			7.橙子切成小块
																			</br>
																			8.用牙签串好
																			</br>
																			9.将串好的水果插在萝卜上，中间的空隙可以将特小凤的皮填充
																			</br>
																			小贴士：容易氧化的水果要在淡盐水泡过后才不会发黑，花插除了萝卜也可以用包菜之类的代替，插的时候要左右高低一致，可以插三角形也可以插半球形、半月形等。


																		</p>
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
							<img src="img/benefits/benefit1.png" alt="" />
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

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta charset="utf-8">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		<title>美食栈</title>
		<meta name="description" content="">
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="manifest" href="site.webmanifest">
		<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
		<!-- Place favicon.ico in the root directory -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<!--[if lt IE 7]><script>try { document.execCommand('BackgroundImageCache', false, true); } catch (e) {}</script><![endif]-->
<!--[if IE 6]><script type="text/javascript" src="https://s1.c.meishij.net/n/js/EvPng.js"></script><script language="javascript" type="text/javascript">EvPNG.fix(".pngFix,.pngFix:hover");</script><![endif]-->
<link rel="stylesheet" type="text/css" media="all"
	href="https://s1.c.meishij.net/n/css/ss_base.css?v=1517" />
<link rel="stylesheet" type="text/css" media="all"
	href="https://s1.c.meishij.net/n/css/main.css?v=1040" />
<link rel="stylesheet" type="text/css" media="all"
	href="https://s1.c.meishij.net/n/css/index.css?v=2133" />
<meta http-equiv="X-UA-Compatible" content="IE=100">
<meta http-equiv="Expires" content="Wed, 18 Dec 2019 04:40:05 GMT">
		<script src="js/jquery-3.4.1.js"></script>
		
<script>
	var _hmt = _hmt || [];
	(function() {
		var hm = document.createElement("script");
		hm.src = "//hm.baidu.com/hm.js?01dd6a7c493607e115255b7e72de5f40";
		var s = document.getElementsByTagName("script")[0];
		s.parentNode.insertBefore(hm, s);
	})();
</script>
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
		<style type="text/css">
			* {padding: 0;margin: 0;font-family: "微软雅黑";font-size: 14px;}
			ul,li {list-style: none;}
			a {text-decoration: none;color: black;}
			.box{width: 600px;height: 400px;overflow: hidden;position: relative;
		margin-top: 100px;margin-left: 100px;}
			.box-1 ul{}
			.box-1 ul li{width: 500;height: 400px;position: relative;}
			.box-1 ul li img{display:block;width: 600px; height: 400px;}
			
			.box-2{position: absolute;right: 10px;bottom: 14px;}
			.box-2 ul li{float:left;width: 12px;height: 12px;overflow: hidden; margin: 0 5px; border-radius: 50%;
							background: rgba(0,0,0,0.5);text-indent: 100px;cursor: pointer;}
			.box-2 ul .on{background: rgba(255,0,0,0.6);}
			.box-3 span{position: absolute;color: white;background: rgba(125,125,120,.3);width: 50px;height: 80px;
							top:50%; font-family: "宋体";line-height: 80px;font-size:60px;margin-top: -40px;
							text-align: center;cursor: pointer;}
			.box-3 span::selection{background: transparent;}
			.box-3 span:hover{background: rgba(125,125,120,.8);}
			.bigger { transition:transform 1s; }
			.bigger:hover{ transform: scale(1.1,1.1); }
		</style>
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
						<div class="col-xl-6 col-lg-8">
							<div class="main-menu text-center">
								<nav id="mobile-menu">
									<ul>
										<li class="active"><a href="index.jsp">首页</a>
											<ul class="sub-menu text-left">
												<li><a href="https://www.baidu.com/">百度一下吧</a></li>
												<li><a href="http://www.4399.com/">玩个小游戏吧</a></li>
												<li><a href="https://www.kugou.com/">听歌休息一下吧</a></li>
											</ul>
										</li>
										<li><a href="shop.jsp">菜谱</a>
											<ul class="sub-menu text-left">
												<li><a href="shop.jsp">中国菜谱</a></li>
												<li><a href="shop-single.jsp">外国菜谱</a></li>
											</ul>
										</li>
										<li><a href="blog-standard.jsp" class="bj">各地小吃</a>
										</li>
										<li><a href="http://blog.sina.com.cn/lm/eatblog.html">美食BLOG</a>
										</li>
										<li><a href="Kitchen Encyclopedia.jsp">厨房百科</a></li>
										<li><a href="about-us.jsp">关于</a></li>
										<c:if test="${sessionScope.user != null}">
											<li><a href="${pageContext.request.contextPath }/HomeAudit?method=show">美食分享</a></li>
											<li><a href="${pageContext.request.contextPath }/HomeUser?method=loginOut">退出</a></li>
											<li><a href="${pageContext.request.contextPath }/HomeUser?method=list" ><span class="ti-search"></span></a></li>
										</c:if>
									</ul>
								</nav>
							</div>
							<div class="mobile-menu"></div>
						</div>
						<%@ include file="header/header_login.jsp" %>
					</div>
				</div>
			</div>
		</header>
		<!-- header-end -->
		<!-- slider start -->
		<div class="slider-area">
			<div class="slider-active">
				<div class="single-slider pt-300 pb-285 d-flex align-items-center" style="background-image:url(img/slider/slider1.jpg)">
					<div class="container">
						<div class="row ">
							<div class="col-xl-12">
								<div class="slider-content text-center">
									<span data-animation="fadeInUp" data-delay=".2s">Why do something you don’t like?</span>
									<h1 data-animation="fadeInUp" data-delay=".4s">美　　食　　棧</h1>

									<div class="slider-button">
										<a data-animation="fadeInLeft" data-delay=".8s" href="#" class="btn">WELCOME</a>
										<div class="slider-video" data-animation="fadeInRight" data-delay="1s">
											<a class="popup-video" href="img/lala.mp4"><i class="fas fa-play" style="margin-top: 15px"></i></a>
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
									<h1 data-animation="fadeInUp" data-delay=".4s">美　　食　　棧</h1>
									<div class="slider-link" data-animation="fadeInUp" data-delay=".6s">
										
									</div>
									<div class="slider-button">
										<a data-animation="fadeInLeft" data-delay=".8s" href="#" class="btn">WELCOME</a>
										<div class="slider-video" data-animation="fadeInRight" data-delay="1s">
											<a class="popup-video" href="img/lala.mp4"><i class="fas fa-play" style="margin-top: 15px"></i></a>
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
									<h1 data-animation="fadeInUp" data-delay=".4s">美　　食　　棧</h1>
									<div class="slider-link" data-animation="fadeInUp" data-delay=".6s">
										
									</div>
									<div class="slider-button">
										<a data-animation="fadeInLeft" data-delay=".8s" href="#" class="btn">WELCOME</a>
										<div class="slider-video" data-animation="fadeInRight" data-delay="1s">
											<a class="popup-video" href="img/lala.mp4"><i class="fas fa-play" style="margin-top: 15px"></i></a>
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
<%@ include file="header/try.jsp" %>
		<!-- service-area-end -->
		<!-- benefits-area-start -->
		<div class="benefits-area pt-100 pb-70">
			<div class="container">
				<div class="row">
					<div class="col-xl-6 col-lg-6 mb-30">
						<div class="benefits-wrapper">
							<div class="benefits-section">
								<span>Heathly</span>
								<h1>健康养生</h1>
								<p>戌时宜清淡晚餐，是养心包的最佳时机，可通过散步、沐浴来缓解疲劳 </p>
							</div>
						</div>
						<div class="benefits-tab-area mt-25">
							<div class="row">
								<div class="col-xl-12">
									<ul class="nav benefits-tab mb-45" id="myTab" role="tablist">
										<li class="nav-item">
											<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home">油炸食品类 </a>
										</li>
										<li class="nav-item">
											<a class="nav-link active" id="profile-tab" data-toggle="tab" href="#profile"> 腌制食品类 </a>
										</li>
										<li class="nav-item" >
											<a class="nav-link active" id="contact-tab" data-toggle="tab" href="#contact"> 加工肉品类 </a>
										</li>
										<li class="nav-item">
											<a class="nav-link active" id="contact1-tab" data-toggle="tab" href="#contact1">汽水可乐类 </a>
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
																			缺少蛋白质应该吃什么？了解下蛋白粉的功效与作用
																		</button>
																	</h5>
																</div>

																<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
																	<div class="card-body">
																		<p>在人体必需的各类营养元素中，蛋白质的作用十分关键。不仅日常活动离不开它，在生病、受伤、虚弱时，还需要专门补充蛋白质来加快康复。
																		可以说，蛋白质是我们的一道营养健康防线。然而实际上，越来越多的人却出现蛋白质摄入不足的情况，形成了隐性的“营养不良”。如果缺少蛋
																		白质，人往往容易疲劳、抵抗力下降、 易感冒、身体瘦弱 ，出现贫血、血压低等情况。那么缺少蛋白质该吃什么呢？</p><br />
																		<p>一、动物蛋白</p><br />
																		<p>动物性优质蛋白主要来源于肉、蛋、奶类食品，其氨基酸种类和结构更加接近人体，能更好地被我们吸收和利用。对于肥胖人群，或者冠心病、
																		高血压、动脉硬化患者来说，鱼、虾、鸡、鸭等高蛋白低脂肪的食物更适合每天食用。100克鱼肉就可以提供人体每天所需蛋白质的一半。</p><br />
																		<p>蛋类食物每百克大约含有13克蛋白质，而牛奶、羊奶以及奶制品，每百克大约含有3克蛋白质。</p><br />
																		<p>二、植物蛋白</p><br />
																		<p>豆类富含植物蛋白质，平均含量在20%~40%之间，甚至有少数能达到60%。其中，黄豆、黑豆和青豆等大豆类所含蛋白质与动物蛋白近似
																		容易吸收，而且其含量是鸡蛋的2倍。至于谷物，在精细加工过之后，已经流失了大部分的蛋白质。最好是和全谷物搭配起来食用，比如糙米、
																		燕麦、藜麦等，会使营养更加全面。</p><br />
																		<p>三、蛋白粉</p><br />
																		<p>除以上食物外，很多追求健康的人，已经开始选用一种营养配比科学的膳食营养补充剂，将优质蛋白质补充了进去。那么，这到底是什么呢？</p><br />
																		<p>这就是蛋白粉，所谓蛋白粉，一般是采用提纯的大豆蛋白、酪蛋白、乳清蛋白、豌豆蛋白或上述几种蛋白的组合构成的粉剂，其蛋白粉的功效
																		与作用是快速便捷的为缺乏蛋白质的人补充蛋白质。</p><br />
																		<p>市场上的蛋白粉牌子有很多，在这里推荐选用汤臣倍健。</p><br />
																		<p>汤臣倍健拥有行业内第一个“透明工厂”，是全球最先进、品控最严格的膳食营养补充剂生产基地之一，率先在行业内开放供各界参观，
																		全球原料可追溯,生产过程全透明。汤臣倍健检测中心制定了近200项严于国家标准的检测项目，以严苛要求打造让人放心的高品质产品。</p><br />
																		<p>在蛋白粉的原材料选择上，汤臣倍健精选东北非转基因大豆蛋白和新西兰进口的乳清蛋白，能够同时补充植物性和动物性两种来源的
																		蛋白质，均衡提供8种人体必需氨基酸，营养全面，而且蛋白质含量高达80%，消化率达90%以上，每天吃一勺，就能为人体补充8g蛋白质。营养价值颇高！</p><br />
																		<p>缺少蛋白质吃什么？汤臣倍健蛋白粉您的健康好选择！</p><br />
									
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="headingTwo">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo"
																		 aria-expanded="false" aria-controls="collapseTwo">
																			办公室常备三类健康零食
																		</button>
																	</h5>
																</div>
																<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
																	<div class="card-body">
																		<p>眼睛干涩、肚子饿、感觉身体被掏空没点精神，相信很多上班一族经常会有这些感觉。每到这种时候，除了必要的休息之外，
																		吃零食是很多人的选择。不过，零食虽然要吃，但要吃的健康哦。</p><br />
																		<p>护眼零食：枸杞、蓝莓</p><br />
																		<p>枸杞自古有“红宝”之称，它富含的天然色素β胡萝卜素作为维生素A的前体，可预防维生素A不足，能护眼明目。
																		长时间注视电脑、电视、游戏机等，都会使得维生素A消耗量增大，要格外注意补充。蓝莓富含花青素，具有保护微血管改善眼睛供血的作用。</p><br />
																		<p>解饿零食：全麦面包、坚果</p><br />
																		<p>全麦面包属于复合性碳水化合物，不会让血糖快速波动，且高纤维会带来饱腹感，让人不容易饿。原味花生、杏仁、核桃等各种坚果
																		含有丰富的植物性蛋白质、健康的不饱和油脂及纤维，可提供饱腹感，延缓胃排空的速度。但坚果的油脂太多，每天只宜吃一汤匙的量，否则容易增肥。</p><br />
																		<p>提神零食：绿茶、黑巧克力</p><br />
																		<p>绿茶含有茶氨酸，这是一种有放松大脑功效的抗氧化剂，能让人迅速从紧张焦虑中解脱出来。绿茶中富含的咖啡碱能促使人体中枢神经兴奋，
																		起到提神益智的效果，但不建议喝绿茶饮料。研究显示，黑巧克力能增加大脑供血，每天仅需吃9.3克黑巧力就能预防年龄增加导致的记忆衰退。
																		此外，黑巧克力还能刺激大脑释放感觉良好的化学物——神经介质，让人注意力更集中。</p><br />
																		<p>除了以上的3类零食之外，很多办公族会经常觉得焦虑、压力大，这种时候，可以吃一些具有缓解焦虑和压力的食物。</p><br />
																		<p>5种食物缓解焦虑和压力</p><br />
																		<p>1、 香蕉。香蕉中含有一种称为生物碱的物质，可以振奋人的精神和提高信心。而且香蕉是色胺酸和维生素b6的来源，这些都可帮助大脑制造血清素。</p><br />
																		<p>2、 樱桃。樱桃被西方医生称为自然的阿斯匹林。因为樱桃中有一种叫做花青素的物质，能够制造快乐。密芝根大学的科学家认为，人们在心情不好的时候吃20颗樱桃比吃任何药物都有效。</p><br />
																		<p>3、 葡萄柚。葡萄柚里含高量的维生素c，不仅可以维持红细胞的浓度，增强身体的抵抗力，而且维生素c也可以抗压。最重要的是，在制造多巴胺、肾上腺素时，维生素c是重要成分之一。</p><br />
																		<p>4、 芹菜。压力影响睡眠，你会发现还没入睡多久就醒了，这是一种常见的高压症状。芹菜中的色氨酸有助于身体产生大脑血清素，对维持积极的情绪以及健康的睡眠是必不可少的。
																		芹菜梗加上无糖花生酱可以帮助保证整晚的睡眠质量以及维持血糖水平在一常量。</p><br />
																		<p>5、 牛奶。钙是天然的神经系统稳定剂。人在受到某种压力时，通过小便排出体外的钙就会增加。因此，备战考生要注意选择含钙高的牛奶、酸奶、虾皮、蛋黄等食物，有安定情绪的效果。</p><br />
																														
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="headingThree">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree"
																		 aria-expanded="false" aria-controls="collapseThree">
																			20款助眠健康食物名单
																		</button>
																	</h5>
																</div>
																<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
																	<div class="card-body">
																		<p>总是失眠睡不着?不用急，安眠食物帮你忙，让你一挨床就睡的香!睡前吃什么有助睡眠呢?百合、香蕉、葡萄……这20种食物是好睡眠的最佳帮手，睡前适当食用让你再也不失眠!</p><br />
																		<p>1、百合</p><br />
																		<p>百合所含百合苷有镇静和催眠的作用。每晚睡眠前，服用百合汤或百合粥，有明显改善睡眠和提高睡眠质量的作用，对中度失眠者有效。</p><br />
																		<p>2、香蕉</p><br />
																		<p>减肥香蕉实际上就是包着果皮的“安眠药”，除了能平稳血清素和褪黑素外，它还含有可具有让肌肉松弛效果的镁元素。另外，睡前吃香蕉不会引起发胖，因为它卡路里低，
																		且食物纤维含量丰富，可以促进排便。</p><br />
																		<p>3、葡萄</p><br />
																		<p>葡萄对改善失眠有很好的作用。其原因在于，葡萄中含有能辅助睡眠的物质--褪黑素。它可以帮助调节睡眠周期，使不正常的睡眠情况得到改善。专家还说，
																		葡萄酒中由于含有抗氧化剂和酒精，其所含有的褪黑素含量可能更高一些，更有助于安眠。</p><br />
																		<p>4、杏仁露</p><br />
																		<p>杏仁中不但有丰富的蛋白质、维生素等营养成分，同时含有色氨酸和舒缓肌肉的良药--镁，经常吃有助于缓解焦虑情绪，有助于睡眠。另外，杏仁中含有大量纤维和不饱和脂肪，
																		不但有利于心脏健康，还能帮你“清洁”肠道。</p><br />
																		<p>5、火鸡</p><br />
																		<p>火鸡也是一种着名的催眠食物。面对一盘焦香美味的火鸡，很多人可能大快朵颐，一不小心吃多了，反而不利于入睡。不过，火鸡富含色氨酸，如果适量食用，确实可以提高睡眠质量。</p><br />
																		<p>6、大比目鱼</p><br />
																		<p>大比目鱼中有两种物质帮助人们更好地睡眠：色氨酸以及维生素B6，而它的温和的口味以及厚实的口感定能吸引那些挑剔的海鲜食客。</p><br />
																		<p>7、蜂蜜</p><br />
																		<p>蜂蜜富含葡萄糖，可抑制促食素分泌，有助于睡眠。蜂蜜可直接用温水冲泡或加入花茶中饮用，热饮也能够体高体温，有助睡前放松。</p><br />
																		<p>8、小米</p><br />
																		<p>在所有谷物中，小米含色氨酸最为丰富。此外，小米含有大量淀粉，吃后容易让人产生温饱感，可以促进胰岛素的分泌，提高进入脑内的色氨酸数量。</p><br />
																		<p>9、酸樱桃干</p><br />
																		<p>一把干樱桃不仅提供凝神所必需的碳水化合物，它同样是褪黑激素的食源之一。褪黑激素被认为是增进睡眠质量并降低时差反应的物质。但是，樱桃干中含有抗衰老的抗氧化剂。</p><br />
																		<p>10、麋鹿肉</p><br />
																		<p>根据《读者文摘》(Reader’sDigest)，麋鹿肉的色氨酸含量几乎是火鸡的两倍!所以，晚上吃点麋鹿肉应该对促进睡眠很有帮助。</p><br />
																		<p>1、食醋</p><br />
																		<p>长期处于紧张状态下，身体会产生大量的乳酸，导致大脑神经受刺激而产生紧张性疲劳。醋酸不仅能有效地抑制乳酸的生成，还可以加速乳酸的氧化，
																		减少它在机体内的蓄积程度，从而消除或减轻紧张性疲劳感，使人轻松入眠。此外，食入酸甜性食物可以转化为阴气，从而有效促进睡眠。</p><br />
																		<p>12、莴笋</p><br />
																		<p>每次削莴笋皮的时候都会看到白色的乳液，原本会想这个东西有什么用处，其实你不知道就是这白色的乳液具有安神镇静作用，且没有毒性，最适宜神经衰弱失眠者。</p><br />
																		<p>13、全麦面包</p><br />
																		<p>如果睡前真的想吃点东西，全麦面包则是最健康的选择，它含有较多的纤维和蛋白质，比起白面包更能让人充满饱腹感。全麦面包中含有丰富的B族维生素，它具有消除烦躁不安、促进睡眠的作用。</p><br />
																		<p>14、燕麦片</p><br />
																		<p>燕麦是很有价值的睡前佳品，含有富足的n-乙酰-5-甲氧基色胺。煮一小碗谷类，加少许蜂蜜混合其中是再合适不过了。试试大口大口的用力咀嚼，足以填补你的牙洞了。有减肥功效!
																		同时燕麦片能诱使产生褪黑素，一小碗就能起到促进睡眠的效果，如果大量咀嚼燕麦片，效果会更佳。</p><br />
																		<p>15、温牛奶</p><br />
																		<p>睡前喝杯温奶有助于睡眠的说法早已众人皆知，因为牛奶中包含一种色氨酸，它能够象氨基酸那样发挥镇静的功效。放心，睡前喝牛奶不但不会胖，反而还可以补充身体里的钙。</p><br />
																		<p>16、鲜藕</p><br />
																		<p>鲜藕中含有大量的碳水化合物及丰富的钙、磷、铁等多种维生素，具有清热、养血、除烦等功效，特别适用于血虚失眠的症状。鲜藕可以添加到很多的美食当中，
																		如有鲜藕直接制作煲汤，或者用来炖煮糖水，或者制作成糯米藕那样的甜品。</p><br />
																		<p>17、酸奶</p><br />
																		<p>酸奶中的酪氨酸对于缓解心理压力过大、高度紧张和焦虑而引发的人体疲惫等有很大的帮助。经过乳酸菌发酵，酸奶中的蛋白质、肽、氨基酸等颗粒变得微小，游离酪氨酸的含量大大提高，吸收起来也更容易。</p><br />
																		<p>18、葵花子</p><br />
																		<p>葵花子含多种氨基酸和维生素，可调节新陈代谢，改善脑细胞抑制机能，起到镇静安神的作用。晚餐后嗑一些葵花子，还可以促进消化液分泌，有利于消食化滞，帮助睡眠。</p><br />
																		<p>19、大枣</p><br />
																		<p>含有丰富的蛋白质、维生素C、钙、磷、铁等营养成分，有补五脏、益脾胃、养血安神的作用。对气血虚弱引起的多梦、失眠、精神恍惚有显着疗效。晚饭后用大枣煮汤喝，或取红枣去核加水煮烂，
																		加冰糖、阿胶文火煨成膏，睡前食1～2调羹。</p><br />
																		<p>20、土豆</p><br />
																		<p>大家都知道土豆能减肥的秘方，但是你知道吗?它还能帮助你睡眠哦!它能清除掉对可诱发睡眠的色胺酸起干扰作用的酸。为了达到这种效果，你只要将烤马铃薯捣碎后掺入温牛奶中食用即可。
																		一个小小的烤土豆是不会破坏你的胃肠道的，相反它能够清除那些妨碍色氨酸发挥催眠作用的酸化合物。如果混合温奶做成土豆泥的话，效果会更加的棒哦!</p><br />
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="headingFour">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour"
																		 aria-expanded="false" aria-controls="collapseFour">
																			多吃4种食物能调理肠胃赶走便秘
																		</button>
																	</h5>
																</div>
																<div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
																	<div class="card-body">
																		<p>1、酸奶</p><br />
																		<p>酸奶中除了含有牛奶的全部营养素外，还含有丰富的乳酸，它能将奶中的乳糖分解为乳酸。乳酸能抑制体内霉菌的生长，防止腐败菌分解蛋白质产生的毒物堆积，并且具有防癌的作用。
																		因此对于胃肠道缺乏乳酸酶或喝鲜牛奶容易腹泻的人来说，可以改喝酸奶。</p><br />
																		<p>2、燕麦粥</p><br />
																		<p>燕麦中含有一种很特别的纤维——葡聚糖，它具有非常好的降低胆固醇的作用，同时还可以提升身体的免疫系统功能。燕麦中既混合了可降低胆固醇的可溶性纤维，
																		也混合了可帮助消化系统保持畅通的不可溶性纤维，因此对于预防便秘非常有好处。</p><br />
																		<p>3、玉米</p><br />
																		<p>虽然我们最常见最常吃的玉米都是跟阳光一样明媚的黄色玉米，但其实玉米的种类有很多种，从粉色到蓝色到黑色，每一种都有它自身特别的抗氧化营养物。每根玉米或半杯玉米粒差不多含有2克纤维，
																		这对于调理肠胃、预防便秘是非常有帮助的。</p><br />
																		<p>4、苹果</p><br />
																		<p>众所周知，苹果不仅有益于身体健康，还能够美容养颜。苹果中的维生素C更是心血管的保护神、心脏病患者的健康元素。可苹果除了富含丰富的维生素之外，其含有的纤维素还可以刺激肠蠕动，
																		加速排便，因此也有通便作用哦，对于预防便秘是非常不错的。</p><br />
																		
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
							<div class="box">
								<div class="box-1">
									<ul>
										<li>
											<img src="img/benefits/benefit1.png" alt="生姜搭档"></img>
										</li>
										<li>
											<img src="img/benefits/benefit2.png" alt="经典牛排"></img>
										</li>
										<li>
											<img src="img/benefits/benefit3.png" alt="串串香"></img>
										</li>
										<li>
											<img src="img/benefits/benefit4.png" alt="诱人汉堡"></img>
										</li>
										<li>
											<img src="img/benefits/benefit5.png" alt="新鲜鸡蛋"></img>
										</li>
									</ul>
								</div>
								<div class="box-2">
									<ul>
										
									</ul>
								</div>
								
							</div>
							</div>
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
							<span>THE HOT LIST</span>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-12">
						<ul class="nav special-menu-tab justify-content-center mb-50" id="myTab2" role="tablist">
							<li class="nav-item">
								<a class="nav-link active" id="home1-tab" data-toggle="tab" href="#home1">全部</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="profile1-tab" data-toggle="tab" href="#profile1">早餐</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="contact11-tab" data-toggle="tab" href="#contact11"> 汤品 </a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="contact22-tab" data-toggle="tab" href="#contact22"> 特色小吃 </a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="contact33-tab" data-toggle="tab" href="#contact33"> 披萨 </a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="contact44-tab" data-toggle="tab" href="#contact44"> 菜品</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="contact4-tab" data-toggle="tab" href="#contact4"> 饮品 </a>
							</li>
						</ul>
						<div class="tab-content" id="myTabContent2">
							<div class="tab-pane fade show active" id="home1" role="tabpanel" aria-labelledby="home1-tab">
								<div class="row">
									<div class="col-xl-6 col-lg-6 col-md-12">
										<div class="special-menu-wrapper mb-30">
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/1.png" alt=""  class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>￥99</span>
													</div>
													<h4>特色西餐</h4>
													<p>西餐，顾名思义是西方国家的餐食。西方国家，是相对于东亚而言的欧洲白人世界文化圈，西餐的准确称呼应为欧洲美食，或欧式餐饮。其菜式料理与中国菜不同，一般使用橄榄油、黄油、番茄酱、沙拉酱等调味料。不同的主食相同的都是搭配上一些蔬菜，如番茄、西兰花等。</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/2.png" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>￥13.95</span>
													</div>
													<h4>鸡肉丸子 </h4>
													<p>鸡肉丸子是由鸡肉等材料制成的一种菜品，是汝南一带的传统风味名菜，属于豫菜系。当丸子做好之后，它能有很多种吃法，可以红烧、蒸炸、煲汤等等。
鸡肉蛋白质含量较高，且易被人体吸收入利用，有增强体力，强壮身体的作用.</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/3.png" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>￥15.95</span>
													</div>
													<h4>虾多士</h4>
													<p>1.虾仁洗净沥干；葱、姜洗净切碎末备用。
	2.将作法1的虾仁用刀背拍碎成虾泥，再加入所有调味料拌匀至有黏性后，均分成四等份备用。
	3.土司片去边后，对切成长方形四等份备用。
	4.先将蛋打匀后，再将蛋液均匀的涂抹于一面土司片上。
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-6 col-lg-6 col-md-12">
										<div class="special-menu-wrapper mb-30">
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/4.png" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>￥18.95</span>
													</div>
													<h4>奥尔良烤鸡腿</h4>
													<p>新奥尔良鸡腿是指奥尔良口味的鸡腿，制作原料主要有鸡翅、水（冰水或凉水）、新奥尔良鸡腿腌料等。该鸡腿具有新奥尔良的甜香及辣香，表面富有光泽；气味鲜香诱人，饱满的鸡肉的鲜香味，非常能够引人食欲；甜味与辣味很好的融合在一起，相互衬托，使得口味饱满，回味十足；</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/5.png" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>￥21.95</span>
													</div>
													<h4>蔬菜沙拉 </h4>
													<p>蔬菜沙拉是一道 以圆白菜、番茄、黄瓜等作为主要食材制作而成的美食。蔬菜沙拉是一种非常营养健康的饮食方法。首先它大多不必加热，这样会最大限度的保持住蔬菜中的各种营养不至于被破坏或流失。</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/6.png" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>￥9.95</span>
													</div>
													<h4>风味烤串</h4>
													<p>因自身具备麻辣爽口的属性，又被人们称为麻辣排骨串，因有辣味在舌尖点缀，所以吃起来才会格外香。</p>
												</div>
											</div>
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
													<img src="img/special-menu/餐蛋另类三明治.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$9.99</span>
													</div>
													<h4>餐蛋另类三明治</h4>
													<p>午餐肉和鸡蛋，是港式小吃中常常会用到的食材，方便快捷，深受白领阶层的喜爱，也是香港人自创的港式快餐，
													比如经典的港式餐蛋面，方便食物只要用心去料理，也是可以是健康和美味的，这款另类三明治纯属自创。</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/滑嫩豆花.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$6.59</span>
													</div>
													<h4>滑嫩豆花 </h4>
													<p>豆花滑滑嫩嫩，像极了布丁的口感，可以根据自己的口味选择加糖还是做成咸水的，
													加上焦糖，红豆绿豆之类也是非常不错的。我做的份量比较多，一般，用我
													三分之一的量就够三口之家吃了。</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/鸡蛋卷.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$10.68</span>
													</div>
													<h4>鸡蛋卷</h4>
													<p>鸡蛋卷是一道菜品，制作原料主要有鸡蛋、黄油、奶酪末等。可根据个人口味和习惯添加洋葱、青椒、火腿、培根、蘑菇等食材。</p>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-6 col-lg-6 col-md-12">
										<div class="special-menu-wrapper mb-30">
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/鸡蛋蔬菜吐司面包.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$12.65</span>
													</div>
													<h4>鸡蛋蔬菜吐司面包</h4>
													<p>吐司，是英文toast的音译，粤语（广东话）叫多士，实际上就是用长方形带盖或不带盖的烤听制作的听型面包。
用带盖烤听烤出的面包经切片后呈正方形，夹入火腿或蔬菜后即为三明治。用不带盖烤听烤出的面包为长方圆顶形，类似长方形大面包。</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/花生燕麦米糊.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$9.89</span>
													</div>
													<h4>花生燕麦米糊</h4>
													<p>花生含有蛋白质、脂肪、糖类、维生素A、维生素B6、维生素E、维生素K，以及矿物质钙、磷、铁等营养成分，
													具有促生长、抗衰老、抗抑郁、止血造血、提高记忆的作用。</p>
												</div>
												
											</div>
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
													<img src="img/special-menu/榴莲炖鸡.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$65.79</span>
													</div>
													<h4>榴莲炖鸡</h4>
													<p>榴莲炖鸡是用榴莲、鸡制作的一道色香味俱全的地方名肴，属于粤菜系。此汤补而不燥，而且性质温和，还具有多种食疗功效，
													包括补血益气、滋润养阴。榴莲炖鸡是药膳偏方，具有多种食疗功效，但因热量偏高所以不宜多食。
													</p>


												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/萝卜牛肉汤.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$48.46</span>
													</div>
													<h4>萝卜牛肉汤</h4>
													<p>萝卜具有清热生津、凉血止血、消食化滞、开胃健脾、顺气化痰的功效；
												       牛肉有补中益气，滋养脾胃，强健筋骨，止渴止涎之功效，适宜于中气下隐、气短体虚、筋骨酸软、贫血久病及面黄目眩之人食用。
													白萝卜炖牛肉的营养价值特高，所以家里尤其是这个季节倒是经常炖的。隔几天喝上这样的一碗汤会觉得很舒服又营养！</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/萝卜丝鲫鱼汤.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$38.76</span>
													</div>
													<h4>萝卜丝鲫鱼汤</h4>
													<p>萝卜丝鲫鱼汤是一道色香味俱全的汉族名菜，属于湘菜系减脂瘦身汤，适合秋冬季节饮用，不仅可以化痰止咳、开胃消食、消脂瘦身，还可以提高人体免疫力和预防感冒。</p>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-6 col-lg-6 col-md-12">
										<div class="special-menu-wrapper mb-30">
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/百合猪心汤.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$32.86</span>
													</div>
													<h4>百合猪心汤</h4>
													<p>猪心是一种营养十分丰富的食品，它含有蛋白质、脂肪、钙、磷、铁、维生素B1、维生素B2、维生素c以及烟酸等，这对加强心肌营养，增强心肌收缩 力有很大的作用，还有补虚，安神定惊，养心补血的功效。</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/薏米冬瓜猪手汤.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$45.98</span>
													</div>
													<h4>薏米冬瓜猪手汤</h4>
													<p>冬瓜味甘、淡、性凉，入肺、大肠、小肠、膀胱经；具有润肺生津，化痰止渴，利尿消肿，清热祛暑，解毒排脓的功效；
													可用于暑热口渴、痰热咳喘、水肿、脚气、胀满、消渴、痤疮、面斑、脱肛、痔疮等，还能解鱼、酒毒。
													冬瓜皮以利尿见长；冬瓜子以健脾养颜、止咳化痰见长。</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/冰糖银耳莲子汤.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$26.85</span>
													</div>
													<h4>冰糖银耳莲子汤</h4>
													<p>冬季来一碗银耳莲子羹，既能滋润干燥的季付，也能润肺，帮助抵抗雾霾天气，这道甜汤非常适合北方的天气，而且非常滋补，
													现在空气质量下降，人的身体和情绪都要慢慢适应这种变化，因此吃些能安心宁神、敛绪平气的食物，可以帮助人体较好地度过这段时期。
													而莲子不仅能安神，还养肺，所以用同样滋阴润燥的银耳来搭配。</p>
												</div>
											</div>
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
													<img src="img/special-menu/肉松面包卷.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$13.76</span>
													</div>
													<h4>肉松面包卷</h4>
													<p>肉松面包卷，即在面包上加上肉松或加入肉松做内馅制成的包点，是我国著名特产之一。
													用猪的瘦肉或鱼肉、鸡肉除去水分后而制成，因其质地疏松而得其名。肉松具有营养丰富，味美可口，携带方便等特点，故十分受人们欢迎。
													肉松是我国著名的特产，具有营养丰富，味美可口，携带方便等特点。肉松是以瘦肉除去水分而制成，像猪肉、牛肉、鸡肉和鱼肉等瘦肉都可以加工肉松。</p>

												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/广式莲蓉蛋黄月饼.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$26.98</span>
													</div>
													<h4>广式莲蓉蛋黄月饼 </h4>
													<p>广式莲蓉蛋黄月饼是一种美味的美食，以低筋面粉、咸蛋黄等为原料，以转化糖浆、花生油等为调料。该美食主要通过烘烤的方法制作而成。</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/蜜汁猪肉脯.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$24.56</span>
													</div>
													<h4>蜜汁猪肉脯</h4>
													<p>蜜汁猪肉脯是由猪肉馅等作为主要食材，老抽、白芝麻、黑胡椒等作为主要调料所做成的一道菜品。该道菜品是通过烤的做法制作而成的。</p>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-6 col-lg-6 col-md-12">
										<div class="special-menu-wrapper mb-30">
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/东北烤冷面.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$15.17</span>
													</div>
													<h4>东北烤冷面</h4>
													<p>东北烤冷面，是一道黑龙江常见的地方特色小吃。油炸烤冷面制作方法简单，可以用鸡蛋，香肠等辅助材料，主要由酱料作为调味剂。
													当时师大夜市有碳烤、铁板烤和油炸三种，味道各有差异。所用冷面早期为普通冷面，后期使用特制冷面（比平常市面常见的冷面要薄、软，且加工后不需要经过晾晒的过程），柔软，可直接食用。
													</p>
													
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/麻辣鸭脖.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$24.65</span>
													</div>
													<h4>麻辣鸭脖</h4>
													<p>麻辣鸭脖，精品鸭脖选择六和品牌的一级樱桃谷鸭，无淤血、无表皮破损，有我们的专业采购员精选为：重量40-50g，每千克为6根，长度为24cm每根，比普通鸭脖含肉量更多。
</p>
												</div>
											</div>
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
													<img src="img/special-menu/海鲜披萨.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$56.25</span>
													</div>
													<h4>海鲜披萨</h4>
													<p>海鲜披萨是一种美食，主要材料有虾仁、蛤蜊、洋葱、大蒜、番茄酱、番茄、面粉、白蘑菇、大葱、奶酪等。</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/水果披萨.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$19.67</span>
													</div>
													<h4>水果披萨 </h4>
													<p>披萨是一种发源于意大利的食品，受到了全球人们的喜爱，做法简单，这款水果披萨放入了各种水果，能补充多种营养，也可以放入自己喜爱的水果。</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/吐司小披萨.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$26.68</span>
													</div>
													<h4>吐司小披萨</h4>
													<p>吐司小披萨是一款菜品，制作原料主要有土司、火腿、杏鲍菇、玉米粒、紫色洋葱、马苏里拉芝士等。
</p>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-6 col-lg-6 col-md-12">
										<div class="special-menu-wrapper mb-30">
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/馒头披萨.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$22.87</span>
													</div>
													<h4>馒头披萨</h4>
													<p>馒头披萨是一道美食，主料是老面馒头，辅料是原味芝士、香肚、洋葱、红椒、西兰花、番茄沙司。</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/米饭披萨.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$23.57</span>
													</div>
													<h4>米饭披萨</h4>
													<p>米饭披萨是一道食物，制作原料主要有米饭、黄油、番茄酱等，口味不错，制作简单。烤箱预热后放入，用190度的温度，烘烤约12分钟后拿出，再撒一层奶酪丝，放回烤箱再烤5分钟即可。
</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/脆底香肠披萨.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$36.98</span>
													</div>
													<h4>脆底香肠披萨</h4>
													<p>面粉和酵母倒入盆中，慢慢加入温水搅拌成雪片状，再揉和成光滑面团。 包上保鲜膜，放温暖处发酵至2倍大。 香肠斜切成薄片。</p>
												</div>
											</div>
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
													<img src="img/special-menu/手抓肉.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$63.26</span>
													</div>
													<h4>手抓肉</h4>
													<p>手抓肉是从哈萨克族中传来的一种羊肉食用法，因用手抓吃，故得名。做法较简单，即先将带骨的羊肉剁成块，放入清水中煮熟，捞出后上面撒上洋葱末、盐、再浇点滚汤即成。</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/柚香腊鸭.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$57.97</span>
													</div>
													<h4>柚香腊鸭 </h4>
													<p>柚香腊鸭是一道中国民间传统家庭美食，由鸭腿、食盐、桂皮、料酒等制作而成。</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/白灼肥牛.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$54.87</span>
													</div>
													<h4>白灼肥牛</h4>
													<p>英文名是Scalded Beef，为川菜系列。其主原料：切片肥牛肉一盒
调料：料酒 葱段 姜丝 辣椒 蚝油 生抽 香油 糖 醋</p>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-6 col-lg-6 col-md-12">
										<div class="special-menu-wrapper mb-30">
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/清汤鱼翅.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$79.97</span>
													</div>
													<h4>清汤鱼翅</h4>
													<p>清汤鱼翅是一道美味可口的传统名菜，属于浙菜系。此菜汤色碧清，鸡鲜味浓，鱼翅透明而糯，猪肺洁白细嫩如豆腐。制作简单，味道鲜美，营养价值极高。</p>
												</div>
											</div>
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
													<img src="img/special-menu/黑凉粉.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$8.57</span>
													</div>
													<h4>黑凉粉</h4>
													<p>黑凉粉是是贵溪夏秋季节的一种流行传统风味美食。黑凉粉爽滑芳香，吃后全身凉爽，暑气全消，千百年来，每到夏季，人们采鲜仙草到市场出售，大家争相购买，加工成别具风味的黑凉粉
</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/姜丝可乐.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$13.95</span>
													</div>
													<h4>姜丝可乐 </h4>
													<p>姜丝可乐，即用鲜姜丝若干，加入可乐中一同煮沸。煮沸后继续煮5-10分钟，或煮至姜丝辛辣味消失，热饮。能预防感冒。但不能治愈感冒。</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/牛油果奶昔.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$28.47</span>
													</div>
													<h4>牛油果奶昔</h4>
													<p>清爽不油腻的牛油果奶昔。牛油果的营养非常的丰富。牛油果含有大量的膳食纤维和不饱和脂肪酸，
													在食用之后膳食纤维会在胃内吸收大量的水分膨胀，增加人的饱腹感，同时还能刺进胃肠蠕动，
													减少对食物中脂肪成分的吸收；而不饱和脂肪酸可促进饱和脂肪酸的代谢，减少脂肪的形成和囤积，起到辅助减肥瘦身作用</p>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-6 col-lg-6 col-md-12">
										<div class="special-menu-wrapper mb-30">
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/抹茶拿铁.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$17.08</span>
													</div>
													<h4>抹茶拿铁</h4>
													<p>抹茶拿铁是由抹茶粉和牛奶混合而成的软料，有丰富的营养成分和微量元素。优质抹茶、蒸奶以及细腻奶泡加以经典风味酱融合于一杯饮品，柔顺香甜，清雅脱俗。

本饮品不含咖啡。</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/百香果果酱.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$26.09</span>
													</div>
													<h4>百香果果酱 </h4>
													<p>百香果果酱，甜点名称，清爽可口，简单易学的美味小食品。原料/调料]百香果 600公克、麦芽糖 150公克、细砂糖 150公克、柠檬 1/2个，口味香甜可口</p>
												</div>
											</div>
											<div class="single-special">
												<div class="special-menu-img">
													<img src="img/special-menu/冰镇酸梅汤.jpg" alt="" class="bigger"/>
												</div>
												<div class="special-menu-text">
													<div class="special-right">
														<span>$14.56</span>
													</div>
													<h4>冰镇酸梅汤</h4>
													<p>冰镇酸梅汤，该汤消食合中，行气散淤，生津止渴，收敛肺气，除烦安神，是炎热夏季不可多得的保健饮品。</p>
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
		<!-- special-menu-area-end -->
		<!-- gallery-area-start -->
		<div class="gallery-area gray2-bg pb-120 pt-90">
			<div class="container-fluid">
				<div class="row">
					<div class="col-xl-12">
						<div class="section-title text-center mb-75">
							<h1>中外甜品</h1>
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
									<h3><a href="#">蜜桃切件</a></h3>
									<span>Peach cut</span>
								</div>
							</div>
						</div>
					</div>
					<div class="gallery-item">
						<div class="gallery-wrapper">
							<div class="gallery-img">
								<a class="image-link" href="img/gallery/gallery2.jpg"><img src="img/gallery/gallery2.jpg" alt="" /></a>
								<div class="gallery-text">
									<h3><a href="#">巴巴乐菠萝软心饼</a></h3>
									<span>Le Baba cake pineapple soft heart</span>
								</div>
							</div>
						</div>
					</div>
					<div class="gallery-item">
						<div class="gallery-wrapper">
							<div class="gallery-img">
								<a class="image-link" href="img/gallery/gallery3.jpg"><img src="img/gallery/gallery3.jpg" alt="" /></a>
								<div class="gallery-text">
									<h3><a href="#">水果沙拉</a></h3>
									<span>Fresh Fruit Salad</span>
								</div>
							</div>
						</div>
					</div>
					<div class="gallery-item">
						<div class="gallery-wrapper">
							<div class="gallery-img">
								<a class="image-link" href="img/gallery/gallery4.jpg"><img src="img/gallery/gallery4.jpg" alt="" /></a>
								<div class="gallery-text">
									<h3><a href="#">萝卜酥</a></h3>
									<span>Turnip cake</span>
								</div>
							</div>
						</div>
					</div>
					<div class="gallery-item">
						<div class="gallery-wrapper">
							<div class="gallery-img">
								<a href="img/gallery/gallery5.jpg"><img src="img/gallery/gallery5.jpg" alt="" /></a>
								<div class="gallery-text">
									<h3><a href="#">栗子忌廉饼</a></h3>
									<span>Chestnut cream cake</span>
								</div>
							</div>
						</div>
					</div>
					<div class="gallery-item">
						<div class="gallery-wrapper">
							<div class="gallery-img">
								<a class="image-link" href="img/gallery/gallery6.jpg"><img src="img/gallery/gallery6.jpg" alt="" /></a>
								<div class="gallery-text">
									<h3><a href="#">浓咖啡朱古力忌廉饼</a></h3>
									<span>Coffee chocolate cake</span>
								</div>
							</div>
						</div>
					</div>
					<div class="gallery-item">
						<div class="gallery-wrapper">
							<div class="gallery-img">
								<a class="image-link" href="img/gallery/gallery7.jpg"><img src="img/gallery/gallery7.jpg" alt="" /></a>
								<div class="gallery-text">
									<h3><a href="#">牛角卷</a></h3>
									<span> Grilled Stuffed Chicken Rolls</span>
								</div>
							</div>
						</div>
					</div>
					<div class="gallery-item">
						<div class="gallery-wrapper">
							<div class="gallery-img">
								<a class="image-link" href="img/gallery/gallery8.jpg"><img src="img/gallery/gallery8.jpg" alt="" /></a>
								<div class="gallery-text">
									<h3><a href="#">泰式黑米糕</a></h3>
									<span>Thai-style dark rice pudding</span>
								</div>
							</div>
						</div>
					</div>
					<div class="gallery-item">
						<div class="gallery-wrapper">
							<div class="gallery-img">
								<a class="image-link" href="img/gallery/gallery9.jpg"><img src="img/gallery/gallery9.jpg" alt="" /></a>
								<div class="gallery-text">
									<h3><a href="#">栗子蛋糕</a></h3>
									<span>chestrut cake</span>
								</div>
							</div>
						</div>
					</div>
					<div class="gallery-item">
						<div class="gallery-wrapper">
							<div class="gallery-img">
								<a class="image-link" href="img/gallery/gallery10.jpg"><img src="img/gallery/gallery10.jpg" alt="" /></a>
								<div class="gallery-text">
									<h3><a href="#">苦味朱古力蛋糕</a></h3>
									<span>Bitter chocolate cake</span>
								</div>
							</div>
						</div>
					</div>
					<div class="gallery-item">
						<div class="gallery-wrapper">
							<div class="gallery-img">
								<a class="image-link" href="img/gallery/gallery11.jpg"><img src="img/gallery/gallery11.jpg" alt="" /></a>
								<div class="gallery-text">
									<h3><a href="#">草莓蛋糕</a></h3>
									<span>Sreawberry and peach cake</span>
								</div>
							</div>
						</div>
					</div>
					<div class="gallery-item">
						<div class="gallery-wrapper">
							<div class="gallery-img">
								<a class="image-link" href="img/gallery/gallery12.jpg"><img src="img/gallery/gallery12.jpg" alt="" /></a>
								<div class="gallery-text">
									<h3><a href="#">巧克力蛋糕</a></h3>
									<span>Chocolate cake</span>
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
							<span>Kitchen Encyclopedia</span>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-6 col-lg-6 col-md-12 mb-30">
						<div class="row">
							<div class="col-xl-6 col-lg-6 col-md-6">
								<div class="news-img">
									<a href="blog-details.jsp"><img src="img/news/blog/news1.jpg" alt="" /></a>
								</div>
							</div>
							<div class="col-xl-6 col-lg-6 col-md-6">
								<div class="news-wrapper">
									<div class="news-text">
										<span>3 December 2019</span>
										<h3><a href="blog-details.jsp">挑选山竹小妙招</a></h3>
										<p>山竹现在大量上市，现在价格一斤18元，还是特别小个的，以前买山竹感觉都是靠运气，
										经常买了1斤，掰开来里面肉都是有一半坏掉，有黄色粘液，只能扔掉，有点心疼，能吃的核
										有的还挺大，感觉自己又被坑了，尽花冤枉钱。所以自己就总结出购买山竹几个要点，一起分享吧！</p>
										
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-12 mb-30">
						<div class="row">
							<div class="col-xl-6 col-lg-6 col-md-6">
								<div class="news-img">
									<a href="blog-details.jsp"><img src="img/news/blog/news2.jpg" alt="" /></a>
								</div>
							</div>
							<div class="col-xl-6 col-lg-6 col-md-6">
								<div class="news-wrapper">
									<div class="news-text">
										<span>3 December 2019</span>
										<h3><a href="blog-details.jsp">如何挑选香甜的香蕉？</a></h3>
										<p>香蕉味美香甜，营养丰富，老少皆宜。但对于如何挑选香蕉，人们还有很多疑问。
										最近自己经常想吃香蕉所以经常购买所以比较熟络，所以现在有一些购买香甜的香蕉
										小技巧分享给爱吃香蕉的大家！
										</p>
										
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
		<!-- <script src="js/ajax-form.js"></script> -->
		<script src="js/wow.min.js"></script>
		<script src="js/jquery.scrollUp.min.js"></script>
		<script src="js/imagesloaded.pkgd.min.js"></script>
		<script src="js/jquery.magnific-popup.min.js"></script>
		<script src="js/plugins.js"></script>
		<script src="js/main.js"></script>
		<script type="text/javascript"src="https://s1.c.meishij.net/n/js/j.m.js"></script>
		<script type="text/javascript"src="js/list.js?v=1108"></script>
		<script type="text/javascript"src="js/main2.js?v=1515"></script>
		<script type="text/javascript" src="https://cbjs.baidu.com/js/m.js"></script>



		
		

		<!-- JS here -->
		<script type="text/javascript">
		
						function $(param) {
							
							if(arguments[1]===true) {
								return document.querySelectorAll(param);
							} else {
								return document.querySelector(param);
							}
						}
						var _box = $(".box");
						var _box1 = $(".box-1 ul li",true) ;
						var _box2 = $(".box-2 ul");
						var _box3 = $(".box-3");
						var _length = _box1.length ;
						// 动态的为box2的ul添加li
						var str = ""  ;
						for(var i = 0 ;i<_length ;i++) {
							if(i === 0) {
								str = '<li class="on">'+(i+1)+'</li>'
							} else {
								str += '<li>'+(i+1)+'</li>'
							}
						}
						_box2.innerHTML = str ;
						
						// 定时任务
						var timer = setInterval(go,3000);
						var currentIndex = 0 ;
						function go() {
							// 我让所有的图片都隐藏
							// 让box2里面的所有的li都移除样式
							for(var j = 0 ;j <_length;j++) {
								_box1[j].style.display ="none" ;
								_box2.children[j].className ="" ;
							}
							if(currentIndex == _length) {
								currentIndex  = 0 ;
							}
							// 当前的这个选中
							_box1[currentIndex].style.display ="block";
							_box2.children[currentIndex].className="on";
							currentIndex++ ;
						}
						// 鼠标放到图片上面的时候清除定时任务，鼠标移除的时候，继续定时任务
						for(var k = 0 ;k <_length ;k++) {
							// 绑定鼠标移入事假
							_box1[k].onmouseover = function() {
								clearInterval(timer) ;
							}
							_box1[k].onmouseout = function() {
								timer = setInterval(go,3000);
								//go 加括号就是会马上执行
							}
						}
						//  找到所有的box2下面的li
						for(var u= 0;u <_length;u++) {
							_box2.children[u].index = u ;
							_box2.children[u].onmouseover = function() {
								clearInterval(timer) ;
								// 去除所有li的样式
								
								for(var m = 0 ;m<_length;m++) {
									_box1[m].style.display ="none" ;
									_box2.children[m].className ="" ;
								}
								_box1[this.index].style.display ="block";
								_box2.children[this.index].className ="on";
								currentIndex = this.index + 1;
							}
							_box2.children[u].onmouseout = function() {
								timer = setInterval(go,1000);
							}
						}
						// 把鼠标放入到box3里面的孩子上，然后跟他绑定鼠标移入和移出事件
						
						
							
							// 当前的显示
							if(currentIndex === 0) {
								currentIndex = _length ;
							}
							_box1[currentIndex-1].style.display ="block";
							_box2.children[currentIndex-1].className ="on";
							currentIndex-- ;
						
					
		</script>
	</body>
</html>



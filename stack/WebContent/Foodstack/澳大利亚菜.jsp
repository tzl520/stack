<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>外国菜系</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
<!-- Place favicon.ico in the root directory -->
<link rel="stylesheet" href="css/caipu/shop.css">
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
	<!-- header-end -->
	<!-- breadcrumb-area-start -->
	<div class="breadcrumb-area pt-45 pb-45">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="breadcrumb-text text-center">
						<div class="other_c listnav_con clearfix">
							<dl class="listnav_dl_style1 w990 bb1 clearfix">
								<dt>外国菜系</dt>
								<dd>
									<a href="shop-single.jsp">韩国料理</a>
								</dd>
								<dd>
									<a href="日本料理.jsp">日本料理</a>
								</dd>
								<dd>
									<a href="西餐面点.jsp">西餐面点</a>
								</dd>
								<dd>
									<a href="法国菜.jsp">法国菜</a>
								</dd>
								<dd>
									<a href="意大利餐.jsp">意大利餐</a>
								</dd>
								<dd>
									<a href="美国家常菜.jsp">美国家常菜</a>
								</dd>
								<dd>
									<a href="东南亚菜.jsp">东南亚菜</a>
								</dd>
								<dd>
									<a href="墨西哥菜.jsp">墨西哥菜</a>
								</dd>
								<dd>
									<a href="澳大利亚菜.jsp">澳大利亚菜</a>
								</dd>
								<dd>
									<a href="#">其他国家</a>
								</dd>
							</dl>
							<!-- <dl class="listnav_dl_style1 w990 clearfix">
									<dt>上菜顺序</dt>
									<dd><a href="#">餐前小吃</a></dd>
									<dd><a href="#">汤品</a></dd>
									<dd><a href="#">主菜</a></dd>
									<dd><a href="#">主食</a></dd>
									<dd><a href="#">饮品</a></dd>
									<dd><a href="#">甜点</a></dd>
								</dl> -->
						</div>
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
						<div class="liststyle1_w clearfix">
							<div class="fliterstyle1" id="fliterstyle1">
								<div class="fliterstyle1_main">
									<ul class="tab">
										<li class="li1" po="1"><a href="####">普通筛选</a></li>
										<li class="li2 current" po="2"><a href="####">食材筛选</a><span
											class="littletips_new"></span></li>
									</ul>
									<div class="tabcon" po="1" style="display: none;">
										<dl class="clearfix">
											<dt class="pngFix">选择难度</dt>
											<dd class="clearfix">
												<a href="/list.php?sortby=update&words=10064&lm=64&md=1">新手尝试</a><a
													href="/list.php?sortby=update&words=10064&lm=64&md=2">初级入门</a><a
													href="/list.php?sortby=update&words=10064&lm=64&md=3">初中水平</a><a
													href="/list.php?sortby=update&words=10064&lm=64&md=4">中级掌勺</a><a
													href="/list.php?sortby=update&words=10064&lm=64&md=5">高级厨师</a><a
													href="/list.php?sortby=update&words=10064&lm=64&md=6">厨神级</a>
											</dd>
										</dl>
										<dl class="clearfix">
											<dt class="pngFix">选择工艺</dt>
											<dd class="clearfix bb0">
												<a href="/list.php?sortby=update&words=10064&lm=64&gy=192">炒</a><a
													href="/list.php?sortby=update&words=10064&lm=64&gy=156">蒸</a><a
													href="/list.php?sortby=update&words=10064&lm=64&gy=194">煮</a><a
													href="/list.php?sortby=update&words=10064&lm=64&gy=124">炖</a><a
													href="/list.php?sortby=update&words=10064&lm=64&gy=141">拌</a><a
													href="/list.php?sortby=update&words=10064&lm=64&gy=149">烧</a><a
													href="/list.php?sortby=update&words=10064&lm=64&gy=129">煎</a><a
													href="/list.php?sortby=update&words=10064&lm=64&gy=153">炸</a><a
													href="/list.php?sortby=update&words=10064&lm=64&gy=220">烘焙</a><a
													href="/list.php?sortby=update&words=10064&lm=64&gy=251">微波</a>
												<div class="others">
													<a href="/list.php?sortby=update&words=10064&lm=64&gy=130">烤</a><a
														href="/list.php?sortby=update&words=10064&lm=64&gy=147">煲</a><a
														href="/list.php?sortby=update&words=10064&lm=64&gy=144">焖</a><a
														href="/list.php?sortby=update&words=10064&lm=64&gy=136">冻</a><a
														href="/list.php?sortby=update&words=10064&lm=64&gy=252">烙</a><a
														href="/list.php?sortby=update&words=10064&lm=64&gy=148">砂锅</a><a
														href="/list.php?sortby=update&words=10064&lm=64&gy=134">腌</a><a
														href="/list.php?sortby=update&words=10064&lm=64&gy=138">卤</a><a
														href="/list.php?sortby=update&words=10064&lm=64&gy=132">酱</a><a
														href="/list.php?sortby=update&words=10064&lm=64&gy=127">烩</a><a
														href="/list.php?sortby=update&words=10064&lm=64&gy=112">扒</a><a
														href="/list.php?sortby=update&words=10064&lm=64&gy=114">爆</a><a
														href="/list.php?sortby=update&words=10064&lm=64&gy=140">炝</a><a
														href="/list.php?sortby=update&words=10064&lm=64&gy=142">熘</a><a
														href="/list.php?sortby=update&words=10064&lm=64&gy=139">熏</a><a
														href="/list.php?sortby=update&words=10064&lm=64&gy=123">汆</a><a
														href="/list.php?sortby=update&words=10064&lm=64&gy=113">拔丝</a><a
														href="/list.php?sortby=update&words=10064&lm=64&gy=253">榨汁</a><a
														href="/list.php?sortby=update&words=10064&lm=64&gy=193">灼</a><a
														href="/list.php?sortby=update&words=10064&lm=64&gy=256">泡</a><a
														href="/list.php?sortby=update&words=10064&lm=64&gy=133">腊</a><a
														href="/list.php?sortby=update&words=10064&lm=64&gy=119">糖蘸</a><a
														href="/list.php?sortby=update&words=10064&lm=64&gy=255">干锅</a><a
														href="/list.php?sortby=update&words=10064&lm=64&gy=262">焗</a><a
														href="/list.php?sortby=update&words=10064&lm=64&gy=260">干煸</a><a
														href="/list.php?sortby=update&words=10064&lm=64&gy=261">煨</a><a
														href="/list.php?sortby=update&words=10064&lm=64&gy=259">其他</a>
												</div>
											</dd>
											<dd class="long clearfix filter_otherbtn">展开全部 >></dd>
										</dl>
										<dl class="clearfix">
											<dt class="pngFix">选择口味</dt>
											<dd class="clearfix">
												<a href="/list.php?sortby=update&words=10064&lm=64&kw=168">家常味</a><a
													href="/list.php?sortby=update&words=10064&lm=64&kw=187">香辣味</a><a
													href="/list.php?sortby=update&words=10064&lm=64&kw=160">咸鲜味</a><a
													href="/list.php?sortby=update&words=10064&lm=64&kw=185">甜味</a><a
													href="/list.php?sortby=update&words=10064&lm=64&kw=182">酸甜味</a><a
													href="/list.php?sortby=update&words=10064&lm=64&kw=180">酸辣味</a><a
													href="/list.php?sortby=update&words=10064&lm=64&kw=177">麻辣味</a><a
													href="/list.php?sortby=update&words=10064&lm=64&kw=170">酱香味</a><a
													href="/list.php?sortby=update&words=10064&lm=64&kw=257">奶香味</a><a
													href="/list.php?sortby=update&words=10064&lm=64&kw=183">蒜香味</a>
												<div class="others">
													<a href="/list.php?sortby=update&words=10064&lm=64&kw=188">鱼香味</a><a
														href="/list.php?sortby=update&words=10064&lm=64&kw=162">葱香味</a><a
														href="/list.php?sortby=update&words=10064&lm=64&kw=166">果味</a><a
														href="/list.php?sortby=update&words=10064&lm=64&kw=186">五香味</a><a
														href="/list.php?sortby=update&words=10064&lm=64&kw=173">咖喱味</a><a
														href="/list.php?sortby=update&words=10064&lm=64&kw=171">椒麻味</a><a
														href="/list.php?sortby=update&words=10064&lm=64&kw=179">茄汁味</a><a
														href="/list.php?sortby=update&words=10064&lm=64&kw=266">酸味</a><a
														href="/list.php?sortby=update&words=10064&lm=64&kw=174">苦香味</a><a
														href="/list.php?sortby=update&words=10064&lm=64&kw=169">姜汁味</a><a
														href="/list.php?sortby=update&words=10064&lm=64&kw=165">怪味</a><a
														href="/list.php?sortby=update&words=10064&lm=64&kw=172">芥末味</a><a
														href="/list.php?sortby=update&words=10064&lm=64&kw=167">红油味</a><a
														href="/list.php?sortby=update&words=10064&lm=64&kw=164">豆瓣味</a><a
														href="/list.php?sortby=update&words=10064&lm=64&kw=176">麻酱味</a><a
														href="/list.php?sortby=update&words=10064&lm=64&kw=264">黑椒味</a><a
														href="/list.php?sortby=update&words=10064&lm=64&kw=265">糊辣味</a><a
														href="/list.php?sortby=update&words=10064&lm=64&kw=189">其他</a>
												</div>
											</dd>
											<dd class="long clearfix filter_otherbtn">展开全部 >></dd>
										</dl>
										<dl class="clearfix">
											<dt class="pngFix">选择时间</dt>
											<dd class="clearfix">
												<a href="/list.php?sortby=update&words=10064&lm=64&mt=1">
													<5分钟</a> <a
													href="/list.php?sortby=update&words=10064&lm=64&mt=2">
													<10分钟</a> <a
													href="/list.php?sortby=update&words=10064&lm=64&mt=3">
													<15分钟</a> <a
													href="/list.php?sortby=update&words=10064&lm=64&mt=4">
													<30分钟</a> <a
													href="/list.php?sortby=update&words=10064&lm=64&mt=5">
													<60分钟</a> <a
													href="/list.php?sortby=update&words=10064&lm=64&mt=6">
													<90分钟</a> <a
													href="/list.php?sortby=update&words=10064&lm=64&mt=7">
													<2小时</a> <a
													href="/list.php?sortby=update&words=10064&lm=64&mt=8">
													<!-- <数小时 -->
												</a> <a href="/list.php?sortby=update&words=10064&lm=64&mt=9">
													<!-- 	<一天 -->
												</a> <a href="/list.php?sortby=update&words=10064&lm=64&mt=10">
													<!-- <数天 -->
												</a>
											</dd>
										</dl>
									</div>
									<div class="tabcon" po="2">
										<div class="tabcon_scsearch">
											<div class="w">
												<input type="text" class="text" name="q" id="yl_q"
													defaultval="请输入您想查找的食材" value="请输入您想查找的食材"
													autocomplete="off"
													onfocus="if(this.value=='请输入您想查找的食材'){this.value='';}$(this).css('color','#333');"
													onblur="if(this.value==''){this.value='请输入您想查找的食材';$(this).css('color','#999');}">
												<input type="button" onclick="list_add_shicai()"
													class="submit pngFix" value=" ">
											</div>
										</div>
										<dl class="clearfix on">
											<dt class="pngFix">按数量排序</dt>
											<dd class="clearfix row2">
												<a href="/list.php?sortby=update&words=10064&lm=64&yl=88"><span
													class="yjtip">应季</span><strong>土豆</strong><em>91</em></a><a
													href="/list.php?sortby=update&words=10064&lm=64&yl=25063"><span
													class="yjtip">应季</span><strong>牛肉</strong><em>76</em></a><a
													href="/list.php?sortby=update&words=10064&lm=64&yl=469"><span
													class="yjtip">应季</span><strong>苹果</strong><em>62</em></a><a
													href="/list.php?sortby=update&words=10064&lm=64&yl=25353"><span
													class="yjtip">应季</span><strong>虾</strong><em>59</em></a><a
													href="/list.php?sortby=update&words=10064&lm=64&yl=236"><span
													class="yjtip">应季</span><strong>黄瓜</strong><em>55</em></a><a
													href="/list.php?sortby=update&words=10064&lm=64&yl=822"><span
													class="yjtip">应季</span><strong>鸡腿</strong><em>43</em></a><a
													href="/list.php?sortby=update&words=10064&lm=64&yl=241"><span
													class="yjtip">应季</span><strong>南瓜</strong><em>39</em></a><a
													href="/list.php?sortby=update&words=10064&lm=64&yl=219"><span
													class="yjtip">应季</span><strong>西红柿</strong><em>39</em></a><a
													href="/list.php?sortby=update&words=10064&lm=64&yl=611"><span
													class="yjtip">应季</span><strong>香蕉</strong><em>26</em></a><a
													href="/list.php?sortby=update&words=10064&lm=64&yl=608"><span
													class="yjtip">应季</span><strong>芒果</strong><em>25</em></a>
												<div class="others">
													<a href="/list.php?sortby=update&words=10064&lm=64&yl=609"><span
														class="yjtip">应季</span><strong>木瓜</strong><em>24</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=1064"><span
														class="yjtip">应季</span><strong>鱿鱼</strong><em>19</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=178"><span
														class="yjtip">应季</span><strong>白萝卜</strong><em>18</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=584"><span
														class="yjtip">应季</span><strong>橙</strong><em>14</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=488"><span
														class="yjtip">应季</span><strong>梨</strong><em>12</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=910"><strong>鸡蛋</strong><em>193</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=56"><strong>米饭</strong><em>158</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25243"><strong>低筋面粉</strong><em>158</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=1507"><strong>面粉</strong><em>146</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25397"><strong>意大利面</strong><em>118</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=21763"><strong>荷兰乳牛</strong><em>110</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25241"><strong>高筋面粉</strong><em>110</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=106"><strong>黄豆</strong><em>103</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=1545"><strong>胡萝卜</strong><em>77</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=261"><strong>洋葱</strong><em>55</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=872"><strong>牛奶</strong><em>51</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=31"><strong>大米</strong><em>49</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=24471"><strong>南山益生</strong><em>48</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25384"><strong>枣（鲜）</strong><em>40</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25127"><strong>白糖</strong><em>39</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=50"><strong>糯米</strong><em>39</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25538"><strong>白菜</strong><em>37</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25230"><strong>淡奶油</strong><em>37</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=583"><strong>草莓</strong><em>36</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25047"><strong>三文鱼</strong><em>35</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25202"><strong>五花肉</strong><em>35</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25487"><strong>牛排</strong><em>34</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=17967"><strong>长寿深山</strong><em>34</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=736"><strong>香肠</strong><em>32</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=1099"><strong>年糕</strong><em>32</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=2025"><strong>水</strong><em>31</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=1244"><strong>冰淇淋</strong><em>30</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=24917"><strong>培根</strong><em>30</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=820"><strong>鸡胸脯肉</strong><em>30</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25484"><strong>吐司</strong><em>29</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=903"><strong>黄油</strong><em>28</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25260"><strong>辣白菜</strong><em>28</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25256"><strong>花生</strong><em>27</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25124"><strong>鸡肉</strong><em>27</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25021"><strong>猪肉</strong><em>27</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=24997"><strong>猪肉馅</strong><em>27</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=114"><strong>豆腐</strong><em>27</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=149"><strong>绿豆</strong><em>25</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25476"><strong>糯米粉</strong><em>25</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=889"><strong>奶酪</strong><em>24</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=89"><strong>马铃薯丁</strong><em>23</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25475"><strong>紫薯</strong><em>23</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=452"><strong>香菇</strong><em>23</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=626"><strong>西瓜</strong><em>22</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=1795"><strong>虾仁</strong><em>22</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=743"><strong>火腿</strong><em>21</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=22359"><strong>西米</strong><em>20</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=1309"><strong>冰糖</strong><em>20</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=24482"><strong>元贞糖</strong><em>20</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=107"><strong>黑豆</strong><em>19</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25472"><strong>泡菜</strong><em>19</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=350"><strong>姜</strong><em>18</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=1166"><strong>面包</strong><em>18</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=597"><strong>柠檬</strong><em>18</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=22053"><strong>乐惠紫菜</strong><em>17</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25363"><strong>玉米</strong><em>17</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=1400"><strong>番茄酱</strong><em>17</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25183"><strong>紫菜</strong><em>17</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25497"><strong>蘑菇</strong><em>17</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=246"><strong>西葫芦</strong><em>17</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=24723"><strong>芝麻</strong><em>16</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=821"><strong>鸡翅</strong><em>16</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=24790"><strong>通心粉</strong><em>16</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25092"><strong>牛肉馅</strong><em>16</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=12"><strong>面条（生</strong><em>16</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=24789"><strong>咖啡</strong><em>15</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=21382"><strong>蒙牛南洋</strong><em>15</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25096"><strong>菊花</strong><em>15</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=457"><strong>银耳</strong><em>15</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=688"><strong>猪大排</strong><em>15</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25490"><strong>牛腩</strong><em>15</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25855"><strong>毛豆腐</strong><em>14</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=20500"><strong>午后红茶</strong><em>14</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25575"><strong>杏仁粉</strong><em>14</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=285"><strong>卷心菜</strong><em>14</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25199"><strong>猪里脊肉</strong><em>14</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25258"><strong>莲子</strong><em>13</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=25283"><strong>牛里脊</strong><em>13</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=308"><strong>生菜</strong><em>13</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=24614"><strong>金枪鱼罐</strong><em>13</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=443"><strong>口蘑</strong><em>12</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=333"><strong>芦笋</strong><em>12</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=1957"><strong>海苔</strong><em>12</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=1460"><strong>酵母(干)</strong><em>12</em></a><a
														href="/list.php?sortby=update&words=10064&lm=64&yl=1235"><strong>可可粉</strong><em>11</em></a>
												</div>
											</dd>
											<dd class="long clearfix filter_otherbtn">展开全部 >></dd>
										</dl>
									</div>
								</div>
								<div style="padding-top: 20px; width: 232px; overflow: hidden;">
									<script>
										(function() {
											var s = "_"
													+ Math.random()
															.toString(36)
															.slice(2);
											document
													.write('<div id="' + s + '"></div>');
											(window.slotbydup = window.slotbydup
													|| []).push({
												id : '502312',
												container : s,
												size : '230,300',
												display : 'inlay-fix'
											});
										})();
									</script>
								</div>
							</div>
							<div class="listtyle1_w" id="listtyle1_w">
								<div class="listtyle1_list clearfix" id="listtyle1_list">
									<div class="listtyle1">
										<a target="_blank"
											href="#"
											title="澳洲谷饲西冷牛排" class="big"> <img class="img"
											alt="澳洲谷饲西冷牛排"
											src="http://s1.st.meishij.net/r/243/83/4020993/a4020993_143986456746163.jpg">
											<div class="i_w">
												<div class="i" style="margin-top: 0px;">
													<div class="c1">
														<strong>澳洲谷饲西冷牛排</strong><span>36 评论 32728 人气</span><em>只管吃</em>
													</div>
													<div class="c2">
														<ul>
															<li class="li1">13步 / 大概15分钟</li>
															<li class="li2">煎 / 咸鲜味</li>
														</ul>
													</div>
												</div>
											</div> <strong class="gx"><span>骨质疏松</span></strong>
										</a>
									</div>
									<div class="listtyle1">
										<a target="_blank"
											href="#"
											title="9道澳大利亚特色菜" class="big"> <img class="img"
											alt="9道澳大利亚特色菜"
											src="http://s1.ig.meishij.net/p/20091207/17bfd46d155a1ecc1581d6e4b46b2b4d_150x150.jpg">
											<div class="i_w">
												<div class="i" style="margin-top: 0px;">
													<div class="c1">
														<strong>9道澳大利亚特色菜</strong><span>8 评论 22067 人气</span>
													</div>
													<div class="c2">
														<ul>
															<li class="li1">9步</li>
															<li class="li2">烤 / 酱香味</li>
														</ul>
													</div>
												</div>
											</div>
										</a>
									</div>
									<div class="listtyle1">
										<a target="_blank"
											href="#"
											title="咖喱苹果肉片" class="big"> <img class="img" alt="咖喱苹果肉片"
											src="http://s1.ig.meishij.net/p/20100525/4cdc200e12e22723f4c3458857ed03c9_150x150.jpg">
											<div class="i_w">
												<div class="i" style="margin-top: 0px;">
													<div class="c1">
														<strong>咖喱苹果肉片</strong><span>2 评论 7927 人气</span>
													</div>
													<div class="c2">
														<ul>
															<li class="li2">焖 / 咖喱味</li>
														</ul>
													</div>
												</div>
											</div> <strong class="gx"><span>抗衰老</span></strong>
										</a>
									</div>
									<div class="listtyle1">
										<a target="_blank"
											href="#"
											title="起司火腿炸猪排" class="big"> <img class="img"
											alt="起司火腿炸猪排"
											src="http://s1.ig.meishij.net/p/20100525/b3baec16c45caaf16a879ef7364dc9a0_150x150.jpg">
											<div class="i_w">
												<div class="i" style="margin-top: 0px;">
													<div class="c1">
														<strong>起司火腿炸猪排</strong><span>8 评论 12861 人气</span>
													</div>
													<div class="c2">
														<ul>
															<li class="li2">炸 / 咸鲜味</li>
														</ul>
													</div>
												</div>
											</div> <strong class="gx"><span>抗衰老</span></strong>
										</a>
									</div>
									<div class="listtyle1">
										<a target="_blank"
											href="#"
											title="斜切通心粉沙拉" class="big"> <img class="img"
											alt="斜切通心粉沙拉"
											src="http://s1.ig.meishij.net/p/20100525/153f71f6645cf6c84580a6bf48448393_150x150.jpg">
											<div class="i_w">
												<div class="i" style="margin-top: 0px;">
													<div class="c1">
														<strong>斜切通心粉沙拉</strong><span>1 评论 7396 人气</span>
													</div>
													<div class="c2">
														<ul>
															<li class="li2">煮 / 其它口味</li>
														</ul>
													</div>
												</div>
											</div> <strong class="gx"><span>润肠</span></strong>
										</a>
									</div>
									<div class="listtyle1">
										<a target="_blank"
											href="#"
											title="鸡肉起司卷" class="big"> <img class="img" alt="鸡肉起司卷"
											src="http://s1.ig.meishij.net/p/20100525/1d080f2d4f88649758828e31eb969701_150x150.jpg">
											<div class="i_w">
												<div class="i" style="margin-top: 0px;">
													<div class="c1">
														<strong>鸡肉起司卷</strong><span>22 评论 34177 人气</span>
													</div>
													<div class="c2">
														<ul>
															<li class="li2">煎 / 其它口味</li>
														</ul>
													</div>
												</div>
											</div> <strong class="gx"><span>抗衰老</span></strong>
										</a>
									</div>
									<div class="listtyle1">
										<a target="_blank"
											href="#"
											title="咖喱土豆鸡肉饭" class="big"> <img class="img"
											alt="咖喱土豆鸡肉饭"
											src="http://s1.ig.meishij.net/p/20100526/d1d5b6469499a8ed003a819f9cd8bdc3_150x150.jpg">
											<div class="i_w">
												<div class="i" style="margin-top: 0px;">
													<div class="c1">
														<strong>咖喱土豆鸡肉饭</strong><span>40 评论 122174 人气</span><em>YOYO食色空间</em>
													</div>
													<div class="c2">
														<ul>
															<li class="li1">10步</li>
															<li class="li2">煮 / 咖喱味</li>
														</ul>
													</div>
												</div>
											</div> <strong class="gx"><span>美容</span></strong>
										</a>
									</div>
									<div class="listtyle1">
										<a target="_blank"
											href="#"
											title="澳洲肉眼牛扒" class="big"> <img class="img" alt="澳洲肉眼牛扒"
											src="http://s1.ig.meishij.net/p/20100525/7495ac38696798625ef0fdbdb272a25d_150x150.jpg">
											<div class="i_w">
												<div class="i" style="margin-top: 0px;">
													<div class="c1">
														<strong>澳洲肉眼牛扒</strong><span>11 评论 16790 人气</span>
													</div>
													<div class="c2">
														<ul>
															<li class="li2">烤 / 椒麻味</li>
														</ul>
													</div>
												</div>
											</div> <strong class="gx"><span>美容</span></strong>
										</a>
									</div>
									<div class="listtyle1">
										<a target="_blank"
											href="#"
											title="黑椒牛扒" class="big"> <img class="img" alt="黑椒牛扒"
											src="http://s1.ig.meishij.net/p/20100525/1bb367bb6cabf72cb5cd245f142b589c_150x150.jpg">
											<div class="i_w">
												<div class="i" style="margin-top: 0px;">
													<div class="c1">
														<strong>黑椒牛扒</strong><span>4 评论 21619 人气</span><em>老鱼家的戏</em>
													</div>
													<div class="c2">
														<ul>
															<li class="li1">2步 / 大概15分钟</li>
															<li class="li2">烤 / 椒麻味</li>
														</ul>
													</div>
												</div>
											</div> <strong class="gx"><span>抵抗力</span></strong>
										</a>
									</div>
									<div class="listtyle1">
										<a target="_blank"
											href="#"
											title="田园蘑菇沙拉" class="big"> <img class="img" alt="田园蘑菇沙拉"
											src="http://s1.ig.meishij.net/p/20100526/d3eb05533edc0a854effa03b0b2b75df_150x150.jpg">
											<div class="i_w">
												<div class="i" style="margin-top: 0px;">
													<div class="c1">
														<strong>田园蘑菇沙拉</strong><span>0 评论 5560 人气</span>
													</div>
													<div class="c2">
														<ul>
															<li class="li2">拌 / 其它口味</li>
														</ul>
													</div>
												</div>
											</div> <strong class="gx"><span>减肥</span></strong>
										</a>
									</div>
									<div class="listtyle1">
										<a target="_blank"
											href="#"
											title="圣诞咖啡布丁" class="big"> <img class="img" alt="圣诞咖啡布丁"
											src="http://s1.ig.meishij.net/p/20100712/c3b363c21279dbe20acdf9cd5690dae0_150x150.jpg">
											<div class="i_w">
												<div class="i" style="margin-top: 0px;">
													<div class="c1">
														<strong>圣诞咖啡布丁</strong><span>26 评论 22894 人气</span><em>月亮晶晶</em>
													</div>
													<div class="c2">
														<ul>
															<li class="li1">4步</li>
															<li class="li2">冻 / 其它口味</li>
														</ul>
													</div>
												</div>
											</div> <strong class="gx"><span>健脑</span></strong>
										</a>
									</div>
									<div class="listtyle1">
										<a target="_blank"
											href="#"
											title="桃子色拉" class="big"> <img class="img" alt="桃子色拉"
											src="http://s1.ig.meishij.net/p/20100525/6481bc72e2f6e5ef9f5b5f8a74b763ef_150x150.jpg">
											<div class="i_w">
												<div class="i" style="margin-top: 0px;">
													<div class="c1">
														<strong>桃子色拉</strong><span>3 评论 9500 人气</span>
													</div>
													<div class="c2">
														<ul>
															<li class="li2">煮 / 甜味</li>
														</ul>
													</div>
												</div>
											</div> <strong class="gx"><span>润肠</span></strong>
										</a>
									</div>
									<div class="listtyle1">
										<a target="_blank"
											href="#"
											title="枝竹黑草羊煲" class="big"> <img class="img" alt="枝竹黑草羊煲"
											src="http://s1.ig.meishij.net/p/20100525/e6ccad6bb4dc198139ac1cd1b59cdf64_150x150.jpg">
											<div class="i_w">
												<div class="i" style="margin-top: 0px;">
													<div class="c1">
														<strong>枝竹黑草羊煲</strong><span>4 评论 9971 人气</span>
													</div>
													<div class="c2">
														<ul>
															<li class="li2">煮 / 咸鲜味</li>
														</ul>
													</div>
												</div>
											</div> <strong class="gx"><span>抗衰老</span></strong>
										</a>
									</div>
									<div class="listtyle1">
										<a target="_blank"
											href="#"
											title="开心果鸡肉沙律" class="big"> <img class="img"
											alt="开心果鸡肉沙律"
											src="http://s1.ig.meishij.net/p/20090910/727b825ed8160c88b4cf328ee8a82677_150x150.jpg">
											<div class="i_w">
												<div class="i" style="margin-top: 0px;">
													<div class="c1">
														<strong>开心果鸡肉沙律</strong><span>2 评论 4039 人气</span>
													</div>
													<div class="c2">
														<ul>
															<li class="li1">1步</li>
															<li class="li2">拌 / 其它口味</li>
														</ul>
													</div>
												</div>
											</div>
										</a>
									</div>
									<div class="listtyle1">
										<a target="_blank"
											href="#"
											title="香甜花生酱鸡丝沙拉" class="big"> <img class="img"
											alt="香甜花生酱鸡丝沙拉"
											src="http://s1.ig.meishij.net/p/20090910/920f491fcffda218a9a506f4a1c5b004_150x150.jpg">
											<div class="i_w">
												<div class="i" style="margin-top: 0px;">
													<div class="c1">
														<strong>香甜花生酱鸡丝沙拉</strong><span>0 评论 4005 人气</span>
													</div>
													<div class="c2">
														<ul>
															<li class="li1">1步</li>
															<li class="li2">拌 / 甜味</li>
														</ul>
													</div>
												</div>
											</div>
										</a>
									</div>
									<div class="listtyle1">
										<a target="_blank"
											href="#"
											title="香芒鸡柳" class="big"> <img class="img" alt="香芒鸡柳"
											src="http://s1.ig.meishij.net/p/20100525/58e5c3950aea42e719e56b33a02fef1f_150x150.jpg">
											<div class="i_w">
												<div class="i" style="margin-top: 0px;">
													<div class="c1">
														<strong>香芒鸡柳</strong><span>2 评论 6218 人气</span>
													</div>
													<div class="c2">
														<ul>
															<li class="li2">炒 / 其它口味</li>
														</ul>
													</div>
												</div>
											</div> <strong class="gx"><span>明目</span></strong>
										</a>
									</div>
									<div class="listtyle1">
										<a target="_blank"
											href="#"
											title="羊膝批同烩羊臀肉" class="big"> <img class="img"
											alt="羊膝批同烩羊臀肉"
											src="http://s1.ig.meishij.net/p/20100525/756f9e53388b51e156675e6caf52b723_150x150.jpg">
											<div class="i_w">
												<div class="i" style="margin-top: 0px;">
													<div class="c1">
														<strong>羊膝批同烩羊臀肉</strong><span>0 评论 3410 人气</span>
													</div>
													<div class="c2">
														<ul>
															<li class="li2">烩 / 其它口味</li>
														</ul>
													</div>
												</div>
											</div> <strong class="gx"><span>祛斑</span></strong>
										</a>
									</div>
									<div class="listtyle1">
										<a target="_blank"
											href="#"
											title="惠灵顿羊排配迷迭香沙司" class="big"> <img class="img"
											alt="惠灵顿羊排配迷迭香沙司"
											src="http://s1.ig.meishij.net/p/20100526/095cd6330aa19afe764a81a91ebf1c64_150x150.jpg">
											<div class="i_w">
												<div class="i" style="margin-top: 0px;">
													<div class="c1">
														<strong>惠灵顿羊排配迷迭香沙司</strong><span>2 评论 8755 人气</span>
													</div>
													<div class="c2">
														<ul>
															<li class="li2">烤 / 其它口味</li>
														</ul>
													</div>
												</div>
											</div> <strong class="gx"><span>明目</span></strong>
										</a>
									</div>
								</div>
								<!-- listtyle1_list end -->

								<script type="text/javascript"
									src="//ma1.meishij.net/jewnfkmaf.js"></script>
							</div>
						</div>
					</div>
					<script type="text/javascript">
						_czc.push([ '_trackEvent', 'pc', 'pc_list' ]);
						_czc.push([ '_trackEvent', 'pc', 'pc_list_class_10' ]);
						var is_list_adding = 0;

						function list_add_shicai() {
							var q = $('#yl_q').val();
							if (q != '' && q != '请输入您想查找的食材') {
								if (is_list_adding == 0) {
									is_list_adding = 1;
									$
											.get(
													'/ajax/list_add_yl.php?c='
															+ encodeURIComponent(q),
													null,
													function(data) {
														is_list_adding = 0;
														data = parseInt(data);
														if (data > 0) {
															location.href = '/list.php?sortby=update&words=10064&lm=64&yl='
																	+ data;
														} else {
															alert('未能识别的食材，请尝试其他关键字');
															$('#yl_q').val('');
														}
													});
								}
							} else {
								alert('请输入您想查找的食材');
							}
						}
						$(function() {
							var js = document.createElement("script");
							js.language = "javascript";
							js.src = "http://click.meishij.net/pl/lclick.php?i=10&addclick=1&_"
									+ (new Date()).getTime();
							document.body.appendChild(js);
							$("#yl_q").keypress(function(event) {
								if (event.keyCode == 13) {
									list_add_shicai()
								}
							});
						});
					</script>
				</div>
				<div style="margin: 0 auto; padding-top: 20px; width: 990px;">
					<div style="display: inline-block; vertical-align: top;">
						<script type="text/javascript"
							src="//ma1.meishij.net/fasjbsigw.js"></script>
					</div>
					<div style="display: inline-block; vertical-align: top;">
						<script type="text/javascript"
							src="//ma1.meishij.net/idvmevlje.js"></script>
					</div>
					</script>
				</div>
				<div class="main_footer pngFix"></div>
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
							<a href="index.jsp"><img src="img/logo/logo.png" alt=""
								height="105px" /></a>
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
							<li><a href="https://www.qq.com/"><i
									class="fas fa-caret-right"></i>腾讯网</a></li>
							<li><a href="https://tuijian.hao123.com/"><i
									class="fas fa-caret-right"></i>搜狐网</a></li>
							<li><a href="https://www.163.com/"><i
									class="fas fa-caret-right"></i>网易网</a></li>
							<li><a href="https://www.sina.com.cn/"><i
									class="fas fa-caret-right"></i>新浪网</a></li>
							<li><a
								href="https://www.hao123.com/?tn=92047105_hao_pg&web=121"><i
									class="fas fa-caret-right"></i>hao123</a></li>
							<li><a href="https://www.baidu.com/"><i
									class="fas fa-caret-right"></i>百度一下</a></li>
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
						<p>
							Kettle • All rights <a href="http://www.bootstrapmb.com/">reserved</a>
							2018 • Designed by Mugli
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	</footer>
	<!-- footer-area-end -->
	<!-- Modal Search -->
	<div class="modal fade" id="search-modal" tabindex="-1" role="dialog"
		aria-hidden="true">
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

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>中华菜系</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
<!-- Place favicon.ico in the root directory -->
<link rel="stylesheet" href="css/caipu/shop.css">
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
		$(function(){
$("#addCdToFavInCon").hover(function(){
	if($(this).html()=="已收藏"){
		$(this).html("取消收藏");
	}
},function(){
	if($(this).html()=="取消收藏"){
		$(this).html("已收藏");
	}
});
$(".listtyle1").live("mouseenter",function(){
	var _this = $(this);
	_this.find("div.i").stop().animate({marginTop:"-100px"},400,function(){});
});
$(".listtyle1").live("mouseleave",function(){
	var _this = $(this);
	_this.find("div.i").stop().animate({marginTop:"0px"},400,function(){});
});
$(".listtyle1 .info2").live("mouseenter",function(){
	var _this = $(this);
	_this.find(".info2_c").stop().animate({left: "0px",opacity:"1"}, 800 ,function(){});
});
$(".listtyle1 .info2").live("mouseleave",function(){
	var _this = $(this);
	_this.find(".info2_c").stop().animate({left: "232px",opacity:"0"}, 800,function(){});
});
$(".filter_otherbtn").toggle(function(){
	var _this = $(this);
	_this.html("<< 收起");
	$(this).prev().find(".others").fadeIn(function(){
		
	});
},function(){
	var _this = $(this);
	_this.html("展开全部 >>");
	$(this).prev().find(".others").fadeOut(function(){
		
	});
});
$(".other_c").css("min-height",$("#listnav_con_c").height()+"px");
if ($.browser.msie && ($.browser.version == "6.0") && !$.support.style) { 
	$(".other_c").css("height",$("#listnav_con_c").height()+"px");//for ie6
} 
$("#fliterstyle1 dt").click(function(){
	var _this=$(this);
	if(_this.parent().hasClass("on")){
	}else{
		_this.parents(".tabcon").find("dl.on").find("dd").slideUp(function(){
		});
		_this.parents(".tabcon").find("dl.on").removeClass("on");
		_this.next().slideDown(function(){
			_this.parent().find(".long").slideDown();
		});
		_this.parent().addClass("on");
	}
});
$("#fliterstyle1 .tab li").click(function(){
	var po = $(this).attr("po");
	if(!$(this).hasClass("current")){
		$(this).siblings().removeClass("current");
		$(this).addClass("current");
	}
	$("#fliterstyle1 .tabcon").each(function(){
		if($(this).attr("po") == po){
			$(this).siblings(".tabcon").hide();
			$(this).show();
		}
	});
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
							<dl class="listnav_dl_style1 w990 clearfix">
								<dt>中国菜系</dt>
								<dd>
									<a href="shop.jsp">川菜</a>
								</dd>
								<dd>
									<a href="湘菜.jsp">湘菜</a>
								</dd>
								<dd>
									<a href="粤菜.jsp">粤菜</a>
								</dd>
								<dd>
									<a href="东北菜.jsp">东北菜</a>
								</dd>
								<dd>
									<a href="鲁菜.jsp">鲁菜</a>
								</dd>
								<dd>
									<a href="浙菜.jsp">浙菜</a>
								</dd>
								<dd>
									<a href="苏菜.jsp">苏菜</a>
								</dd>
								<dd>
									<a href="清真菜.jsp">清真菜</a>
								</dd>
								<dd>
									<a href="闽菜.jsp">闽菜</a>
								</dd>
								<dd>
									<a href="沪菜.jsp">沪菜</a>
								</dd>
								<dd>
									<a href="京菜.jsp">京菜</a>
								</dd>
								<dd>
									<a href="湖北菜.jsp">湖北菜</a>
								</dd>
								<dd>
									<a href="徽菜.jsp">徽菜</a>
								</dd>
								<dd>
									<a href="豫菜.jsp">豫菜</a>
								</dd>
								<dd>
									<a href="西北菜.jsp">西北菜</a>
								</dd>
								<dd>
									<a href="云贵菜.jsp">云贵菜</a>
								</dd>
								<dd>
									<a href="江西菜.jsp">江西菜</a>
								</dd>
								<dd>
									<a href="山西菜.jsp">山西菜</a>
								</dd>
								<dd>
									<a href="广西菜.jsp">广西菜</a>
								</dd>
								<dd>
									<a href="港台菜.jsp">港台菜</a>
								</dd>
								<dd>
									<a href="其它菜.jsp">其它菜</a>
								</dd>
							</dl>
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
													<a href="/list.php?sortby=update&words=10041&lm=41&md=1">新手尝试</a><a
														href="/list.php?sortby=update&words=10041&lm=41&md=2">初级入门</a><a
														href="/list.php?sortby=update&words=10041&lm=41&md=3">初中水平</a><a
														href="/list.php?sortby=update&words=10041&lm=41&md=4">中级掌勺</a><a
														href="/list.php?sortby=update&words=10041&lm=41&md=5">高级厨师</a><a
														href="/list.php?sortby=update&words=10041&lm=41&md=6">厨神级</a>
												</dd>
											</dl>
											<dl class="clearfix">
												<dt class="pngFix">选择工艺</dt>
												<dd class="clearfix bb0">
													<a href="/list.php?sortby=update&words=10041&lm=41&gy=192">炒</a><a
														href="/list.php?sortby=update&words=10041&lm=41&gy=156">蒸</a><a
														href="/list.php?sortby=update&words=10041&lm=41&gy=194">煮</a><a
														href="/list.php?sortby=update&words=10041&lm=41&gy=124">炖</a><a
														href="/list.php?sortby=update&words=10041&lm=41&gy=141">拌</a><a
														href="/list.php?sortby=update&words=10041&lm=41&gy=149">烧</a><a
														href="/list.php?sortby=update&words=10041&lm=41&gy=129">煎</a><a
														href="/list.php?sortby=update&words=10041&lm=41&gy=153">炸</a><a
														href="/list.php?sortby=update&words=10041&lm=41&gy=220">烘焙</a><a
														href="/list.php?sortby=update&words=10041&lm=41&gy=251">微波</a>
													<div class="others">
														<a href="/list.php?sortby=update&words=10041&lm=41&gy=130">烤</a><a
															href="/list.php?sortby=update&words=10041&lm=41&gy=147">煲</a><a
															href="/list.php?sortby=update&words=10041&lm=41&gy=144">焖</a><a
															href="/list.php?sortby=update&words=10041&lm=41&gy=136">冻</a><a
															href="/list.php?sortby=update&words=10041&lm=41&gy=252">烙</a><a
															href="/list.php?sortby=update&words=10041&lm=41&gy=148">砂锅</a><a
															href="/list.php?sortby=update&words=10041&lm=41&gy=134">腌</a><a
															href="/list.php?sortby=update&words=10041&lm=41&gy=138">卤</a><a
															href="/list.php?sortby=update&words=10041&lm=41&gy=132">酱</a><a
															href="/list.php?sortby=update&words=10041&lm=41&gy=127">烩</a><a
															href="/list.php?sortby=update&words=10041&lm=41&gy=112">扒</a><a
															href="/list.php?sortby=update&words=10041&lm=41&gy=114">爆</a><a
															href="/list.php?sortby=update&words=10041&lm=41&gy=140">炝</a><a
															href="/list.php?sortby=update&words=10041&lm=41&gy=142">熘</a><a
															href="/list.php?sortby=update&words=10041&lm=41&gy=139">熏</a><a
															href="/list.php?sortby=update&words=10041&lm=41&gy=123">汆</a><a
															href="/list.php?sortby=update&words=10041&lm=41&gy=113">拔丝</a><a
															href="/list.php?sortby=update&words=10041&lm=41&gy=253">榨汁</a><a
															href="/list.php?sortby=update&words=10041&lm=41&gy=193">灼</a><a
															href="/list.php?sortby=update&words=10041&lm=41&gy=256">泡</a><a
															href="/list.php?sortby=update&words=10041&lm=41&gy=133">腊</a><a
															href="/list.php?sortby=update&words=10041&lm=41&gy=119">糖蘸</a><a
															href="/list.php?sortby=update&words=10041&lm=41&gy=255">干锅</a><a
															href="/list.php?sortby=update&words=10041&lm=41&gy=262">焗</a><a
															href="/list.php?sortby=update&words=10041&lm=41&gy=260">干煸</a><a
															href="/list.php?sortby=update&words=10041&lm=41&gy=261">煨</a><a
															href="/list.php?sortby=update&words=10041&lm=41&gy=259">其他</a>
													</div>
												</dd>
												<dd class="long clearfix filter_otherbtn">展开全部 >></dd>
											</dl>
											<dl class="clearfix">
												<dt class="pngFix">选择口味</dt>
												<dd class="clearfix">
													<a href="/list.php?sortby=update&words=10041&lm=41&kw=168">家常味</a><a
														href="/list.php?sortby=update&words=10041&lm=41&kw=187">香辣味</a><a
														href="/list.php?sortby=update&words=10041&lm=41&kw=160">咸鲜味</a><a
														href="/list.php?sortby=update&words=10041&lm=41&kw=185">甜味</a><a
														href="/list.php?sortby=update&words=10041&lm=41&kw=182">酸甜味</a><a
														href="/list.php?sortby=update&words=10041&lm=41&kw=180">酸辣味</a><a
														href="/list.php?sortby=update&words=10041&lm=41&kw=177">麻辣味</a><a
														href="/list.php?sortby=update&words=10041&lm=41&kw=170">酱香味</a><a
														href="/list.php?sortby=update&words=10041&lm=41&kw=257">奶香味</a><a
														href="/list.php?sortby=update&words=10041&lm=41&kw=183">蒜香味</a>
													<div class="others">
														<a href="/list.php?sortby=update&words=10041&lm=41&kw=188">鱼香味</a><a
															href="/list.php?sortby=update&words=10041&lm=41&kw=162">葱香味</a><a
															href="/list.php?sortby=update&words=10041&lm=41&kw=166">果味</a><a
															href="/list.php?sortby=update&words=10041&lm=41&kw=186">五香味</a><a
															href="/list.php?sortby=update&words=10041&lm=41&kw=173">咖喱味</a><a
															href="/list.php?sortby=update&words=10041&lm=41&kw=171">椒麻味</a><a
															href="/list.php?sortby=update&words=10041&lm=41&kw=179">茄汁味</a><a
															href="/list.php?sortby=update&words=10041&lm=41&kw=266">酸味</a><a
															href="/list.php?sortby=update&words=10041&lm=41&kw=174">苦香味</a><a
															href="/list.php?sortby=update&words=10041&lm=41&kw=169">姜汁味</a><a
															href="/list.php?sortby=update&words=10041&lm=41&kw=165">怪味</a><a
															href="/list.php?sortby=update&words=10041&lm=41&kw=172">芥末味</a><a
															href="/list.php?sortby=update&words=10041&lm=41&kw=167">红油味</a><a
															href="/list.php?sortby=update&words=10041&lm=41&kw=164">豆瓣味</a><a
															href="/list.php?sortby=update&words=10041&lm=41&kw=176">麻酱味</a><a
															href="/list.php?sortby=update&words=10041&lm=41&kw=264">黑椒味</a><a
															href="/list.php?sortby=update&words=10041&lm=41&kw=265">糊辣味</a><a
															href="/list.php?sortby=update&words=10041&lm=41&kw=189">其他</a>
													</div>
												</dd>
												<dd class="long clearfix filter_otherbtn">展开全部 >></dd>
											</dl>
											<dl class="clearfix">
												<dt class="pngFix">选择时间</dt>
												<dd class="clearfix">
													<a href="/list.php?sortby=update&words=10041&lm=41&mt=1">
														<5分钟</a> <a
														href="/list.php?sortby=update&words=10041&lm=41&mt=2">
														<10分钟</a> <a
														href="/list.php?sortby=update&words=10041&lm=41&mt=3">
														<15分钟</a> <a
														href="/list.php?sortby=update&words=10041&lm=41&mt=4">
														<30分钟</a> <a
														href="/list.php?sortby=update&words=10041&lm=41&mt=5">
														<60分钟</a> <a
														href="/list.php?sortby=update&words=10041&lm=41&mt=6">
														<90分钟</a> <a
														href="/list.php?sortby=update&words=10041&lm=41&mt=7">
														<2小时</a> <a
														href="/list.php?sortby=update&words=10041&lm=41&mt=8">
														<!-- <数小时 -->
													</a> <a href="/list.php?sortby=update&words=10041&lm=41&mt=9">
														<!-- <一天 -->
													</a> <a href="/list.php?sortby=update&words=10041&lm=41&mt=10">
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
													<a href="/list.php?sortby=update&words=10041&lm=41&yl=236"><span
														class="yjtip">应季</span><strong>黄瓜</strong><em>910</em></a><a
														href="/list.php?sortby=update&words=10041&lm=41&yl=241"><span
														class="yjtip">应季</span><strong>南瓜</strong><em>531</em></a><a
														href="/list.php?sortby=update&words=10041&lm=41&yl=25063"><span
														class="yjtip">应季</span><strong>牛肉</strong><em>506</em></a><a
														href="/list.php?sortby=update&words=10041&lm=41&yl=231"><span
														class="yjtip">应季</span><strong>冬瓜</strong><em>414</em></a><a
														href="/list.php?sortby=update&words=10041&lm=41&yl=25353"><span
														class="yjtip">应季</span><strong>虾</strong><em>407</em></a><a
														href="/list.php?sortby=update&words=10041&lm=41&yl=219"><span
														class="yjtip">应季</span><strong>西红柿</strong><em>395</em></a><a
														href="/list.php?sortby=update&words=10041&lm=41&yl=822"><span
														class="yjtip">应季</span><strong>鸡腿</strong><em>297</em></a><a
														href="/list.php?sortby=update&words=10041&lm=41&yl=178"><span
														class="yjtip">应季</span><strong>白萝卜</strong><em>294</em></a><a
														href="/list.php?sortby=update&words=10041&lm=41&yl=346"><span
														class="yjtip">应季</span><strong>山药</strong><em>266</em></a><a
														href="/list.php?sortby=update&words=10041&lm=41&yl=244"><span
														class="yjtip">应季</span><strong>丝瓜</strong><em>265</em></a>
													<div class="others">
														<a href="/list.php?sortby=update&words=10041&lm=41&yl=317"><span
															class="yjtip">应季</span><strong>莴笋</strong><em>228</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=1604"><span
															class="yjtip">应季</span><strong>杏鲍菇</strong><em>224</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=25086"><span
															class="yjtip">应季</span><strong>羊肉</strong><em>208</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=932"><span
															class="yjtip">应季</span><strong>草鱼</strong><em>206</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=469"><span
															class="yjtip">应季</span><strong>苹果</strong><em>176</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=337"><span
															class="yjtip">应季</span><strong>藕</strong><em>167</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=611"><span
															class="yjtip">应季</span><strong>香蕉</strong><em>165</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=1064"><span
															class="yjtip">应季</span><strong>鱿鱼</strong><em>164</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=910"><strong>鸡蛋</strong><em>4907</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=1507"><strong>面粉</strong><em>2676</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=1545"><strong>胡萝卜</strong><em>1471</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=25021"><strong>猪肉</strong><em>1225</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=89"><strong>马铃薯丁</strong><em>1156</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=25202"><strong>五花肉</strong><em>1146</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=21763"><strong>荷兰乳牛</strong><em>1117</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=25222"><strong>柿子椒</strong><em>948</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=452"><strong>香菇</strong><em>876</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=903"><strong>黄油</strong><em>828</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=261"><strong>洋葱</strong><em>795</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=25243"><strong>低筋面粉</strong><em>787</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=25855"><strong>毛豆腐</strong><em>758</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=688"><strong>猪大排</strong><em>664</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=446"><strong>黑木耳</strong><em>660</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=1400"><strong>番茄酱</strong><em>643</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=31"><strong>大米</strong><em>631</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=25127"><strong>白糖</strong><em>602</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=25124"><strong>鸡肉</strong><em>557</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=24482"><strong>元贞糖</strong><em>544</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=50"><strong>糯米</strong><em>531</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=56"><strong>米饭</strong><em>526</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=25476"><strong>糯米粉</strong><em>509</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=215"><strong>茄子</strong><em>476</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=25538"><strong>白菜</strong><em>465</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=264"><strong>韭菜</strong><em>448</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=2025"><strong>水</strong><em>425</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=736"><strong>香肠</strong><em>408</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=25363"><strong>玉米</strong><em>404</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=24824"><strong>食盐</strong><em>390</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=1460"><strong>酵母(干)</strong><em>383</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=25241"><strong>高筋面粉</strong><em>382</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=25230"><strong>淡奶油</strong><em>374</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=25384"><strong>枣（鲜）</strong><em>363</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=12"><strong>面条（生</strong><em>359</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=304"><strong>芹菜</strong><em>356</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=275"><strong>小白菜</strong><em>354</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=285"><strong>卷心菜</strong><em>341</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=210"><strong>豇豆</strong><em>334</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=1795"><strong>虾仁</strong><em>329</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=25197"><strong>葱</strong><em>313</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=457"><strong>银耳</strong><em>311</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=294"><strong>菠菜</strong><em>301</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=441"><strong>金针菇</strong><em>276</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=25256"><strong>花生</strong><em>269</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=240"><strong>苦瓜</strong><em>267</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=24743"><strong>奶粉</strong><em>264</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=25475"><strong>紫薯</strong><em>263</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=24997"><strong>猪肉馅</strong><em>259</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=25194"><strong>蒜</strong><em>252</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=103"><strong>粉丝</strong><em>252</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=67"><strong>玉米面</strong><em>241</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=127"><strong>豆腐皮</strong><em>235</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=1666"><strong>腊肉</strong><em>230</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=743"><strong>火腿</strong><em>225</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=25189"><strong>红薯</strong><em>225</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=953"><strong>鲫鱼</strong><em>224</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=181"><strong>红萝卜</strong><em>222</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=1244"><strong>冰淇淋</strong><em>220</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=149"><strong>绿豆</strong><em>219</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=821"><strong>鸡翅</strong><em>217</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=690"><strong>猪蹄</strong><em>215</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=288"><strong>西兰花</strong><em>215</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=106"><strong>黄豆</strong><em>210</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=25129"><strong>鸭肉</strong><em>207</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=348"><strong>芋头</strong><em>191</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=17632"><strong>猪大骨头</strong><em>190</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=25497"><strong>蘑菇</strong><em>188</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=18838"><strong>Farmer
																J</strong><em>185</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=25070"><strong>红椒</strong><em>184</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=132"><strong>豆腐干</strong><em>183</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=308"><strong>生菜</strong><em>178</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=25863"><strong>酸萝卜</strong><em>176</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=98"><strong>玉米淀粉</strong><em>176</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=25494"><strong>酸菜</strong><em>174</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=255"><strong>蒜苔</strong><em>174</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=24965"><strong>糖粉</strong><em>173</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=286"><strong>菜花</strong><em>172</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=24471"><strong>南山益生</strong><em>167</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=108"><strong>青豆</strong><em>163</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=310"><strong>香菜</strong><em>163</em></a><a
															href="/list.php?sortby=update&words=10041&lm=41&yl=25199"><strong>猪里脊肉</strong><em>162</em></a>
													</div>
												</dd>
												<dd class="long clearfix filter_otherbtn">展开全部 >></dd>
											</dl>
										</div>
									</div>
									<div style="padding-top: 20px; width: 232px; overflow: hidden;">
										<script>
												(function() {
    var s = "_" + Math.random().toString(36).slice(2);
    document.write('<div id="' + s + '"></div>');
    (window.slotbydup=window.slotbydup || []).push({
        id: '502312',
        container: s,
        size: '230,300',
        display: 'inlay-fix'
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
												title="胡萝卜炖鸡" class="big"> <img class="img" alt="胡萝卜炖鸡"
												src="http://s1.ig.meishij.net/p/20120926/d00e8211e3a5f637a5eef264ff2de50c.jpg">
												<div class="i_w">
													<div class="i" style="margin-top: 0px;">
														<div class="c1">
															<strong>胡萝卜炖鸡</strong><span>6 评论 51765 人气</span><em>adrina</em>
														</div>
														<div class="c2">
															<ul>
																<li class="li1">8步</li>
																<li class="li2">炖 / 其它口味</li>
															</ul>
														</div>
													</div>
												</div> <strong class="gx"><span>明目</span></strong>
											</a>
										</div>
										<div class="listtyle1">
											<a target="_blank"
												href="#"
												title="小炒荷包蛋" class="big"> <img class="img" alt="小炒荷包蛋"
												src="http://s1.ig.meishij.net/p/20121019/f401edcadaa5979a9c0c49117aa55b5a.jpg">
												<div class="i_w">
													<div class="i" style="margin-top: 0px;">
														<div class="c1">
															<strong>小炒荷包蛋</strong><span>2 评论 9383 人气</span>
														</div>
														<div class="c2">
															<ul>
																<li class="li1">8步</li>
																<li class="li2">其它工艺 / 其它口味</li>
															</ul>
														</div>
													</div>
												</div> <strong class="gx"><span>健脑益智</span></strong>
											</a>
										</div>
										<div class="listtyle1">
											<a target="_blank"
												href="#"
												title="洋葱肉末粉丝煲" class="big"> <img class="img"
												alt="洋葱肉末粉丝煲"
												src="http://s1.ig.meishij.net/p/20120925/42a24739dba11a397b58ecff5cd35ad9.jpg">
												<div class="i_w">
													<div class="i" style="margin-top: 0px;">
														<div class="c1">
															<strong>洋葱肉末粉丝煲</strong><span>7 评论 31505 人气</span><em>laifuling1</em>
														</div>
														<div class="c2">
															<ul>
																<li class="li1">12步</li>
																<li class="li2">其它工艺 / 其它口味</li>
															</ul>
														</div>
													</div>
												</div> <strong class="gx"><span>清热去火</span></strong>
											</a>
										</div>
										<div class="listtyle1">
											<a target="_blank"
												href="#"
												title="辣椒煎蛋" class="big"> <img class="img" alt="辣椒煎蛋"
												src="http://s1.ig.meishij.net/p/20120913/a7dc960c167e123f8cb4131b29b9fa4b.jpg">
												<div class="i_w">
													<div class="i" style="margin-top: 0px;">
														<div class="c1">
															<strong>辣椒煎蛋</strong><span>13 评论 22908 人气</span><em>liyingxua</em>
														</div>
														<div class="c2">
															<ul>
																<li class="li1">8步</li>
																<li class="li2">其它工艺 / 其它口味</li>
															</ul>
														</div>
													</div>
												</div> <strong class="gx"><span>清热去火</span></strong>
											</a>
										</div>
										<div class="listtyle1">
											<a target="_blank"
												href="#"
												title="韭菜花炒火焙鱼" class="big"> <img class="img"
												alt="韭菜花炒火焙鱼"
												src="http://s1.ig.meishij.net/p/20121010/4cf2838d0a206be9ab0cc00832e5dada.jpg">
												<div class="i_w">
													<div class="i" style="margin-top: 0px;">
														<div class="c1">
															<strong>韭菜花炒火焙鱼</strong><span>1 评论 6632 人气</span><em>王胖胖</em>
														</div>
														<div class="c2">
															<ul>
																<li class="li1">8步</li>
																<li class="li2">其它工艺 / 其它口味</li>
															</ul>
														</div>
													</div>
												</div> <strong class="gx"><span>开胃</span></strong>
											</a>
										</div>
										<div class="listtyle1">
											<a target="_blank"
												href="#"
												title="火腿肠炒玉米" class="big"> <img class="img"
												alt="火腿肠炒玉米"
												src="http://s1.ig.meishij.net/p/20120913/03e168bae15570140d5394ccb32d00b7.jpg">
												<div class="i_w">
													<div class="i" style="margin-top: 0px;">
														<div class="c1">
															<strong>火腿肠炒玉米</strong><span>6 评论 18065 人气</span><em>含兰</em>
														</div>
														<div class="c2">
															<ul>
																<li class="li1">7步</li>
																<li class="li2">其它工艺 / 其它口味</li>
															</ul>
														</div>
													</div>
												</div> <strong class="gx"><span>明目</span></strong>
											</a>
										</div>
										<div class="listtyle1">
											<a target="_blank"
												href="#"
												title="炫彩银丝" class="big"> <img class="img" alt="炫彩银丝"
												src="http://s1.ig.meishij.net/p/20121009/9556074008a16ae47e5b2f69765041ee.jpg">
												<div class="i_w">
													<div class="i" style="margin-top: 0px;">
														<div class="c1">
															<strong>炫彩银丝</strong><span>0 评论 5474 人气</span><em>蜜桃格格</em>
														</div>
														<div class="c2">
															<ul>
																<li class="li1">8步</li>
																<li class="li2">其它工艺 / 其它口味</li>
															</ul>
														</div>
													</div>
												</div> <strong class="gx"><span>养胃</span></strong>
											</a>
										</div>
										<div class="listtyle1">
											<a target="_blank"
												href="#"
												title="白辣椒" class="big"> <img class="img" alt="白辣椒"
												src="http://s1.ig.meishij.net/p/20120926/d308fd1f43bada0ea7495538670aabeb.jpg">
												<div class="i_w">
													<div class="i" style="margin-top: 0px;">
														<div class="c1">
															<strong>白辣椒</strong><span>4 评论 27802 人气</span><em>titan_k_w</em>
														</div>
														<div class="c2">
															<ul>
																<li class="li1">8步</li>
																<li class="li2">其它工艺 / 香辣味</li>
															</ul>
														</div>
													</div>
												</div> <strong class="gx"><span>清热去火</span></strong>
											</a>
										</div>
										<div class="listtyle1">
											<a target="_blank"
												href="#"
												title="白辣椒熏豆干炒腊肠" class="big"> <img class="img"
												alt="白辣椒熏豆干炒腊肠"
												src="http://s1.ig.meishij.net/p/20121002/ea4965745a440ce26137dc181480c68b.jpg">
												<div class="i_w">
													<div class="i" style="margin-top: 0px;">
														<div class="c1">
															<strong>白辣椒熏豆干炒腊肠</strong><span>0 评论 6909 人气</span><em>Oscar8lv</em>
														</div>
														<div class="c2">
															<ul>
																<li class="li1">11步</li>
																<li class="li2">其它工艺 / 其它口味</li>
															</ul>
														</div>
													</div>
												</div> <strong class="gx"><span>消食开胃</span></strong>
											</a>
										</div>
										<div class="listtyle1">
											<a target="_blank"
												href="#"
												title="红辣椒鱼头" class="big"> <img class="img" alt="红辣椒鱼头"
												src="http://s1.ig.meishij.net/p/20120829/c09de1aa2daa37c90dab5a16cac16659.jpg">
												<div class="i_w">
													<div class="i" style="margin-top: 0px;">
														<div class="c1">
															<strong>红辣椒鱼头</strong><span>2 评论 8307 人气</span><em>月光金枝</em>
														</div>
														<div class="c2">
															<ul>
																<li class="li1">9步</li>
																<li class="li2">煮 / 咸鲜味</li>
															</ul>
														</div>
													</div>
												</div>
											</a>
										</div>
										<div class="listtyle1">
											<a target="_blank"
												href="#"
												title="香干青椒" class="big"> <img class="img" alt="香干青椒"
												src="http://s1.ig.meishij.net/p/20120902/d59f15cf99b35ae73d6452e951e14899.jpg">
												<div class="i_w">
													<div class="i" style="margin-top: 0px;">
														<div class="c1">
															<strong>香干青椒</strong><span>1 评论 13207 人气</span><em>nzqa</em>
														</div>
														<div class="c2">
															<ul>
																<li class="li1">6步</li>
																<li class="li2">炒 / 其它口味</li>
															</ul>
														</div>
													</div>
												</div> <strong class="gx"><span>清热去火</span></strong>
											</a>
										</div>
										<div class="listtyle1">
											<a target="_blank"
												href="#"
												title="鲜蘑烩鸽蛋" class="big"> <img class="img" alt="鲜蘑烩鸽蛋"
												src="http://s1.ig.meishij.net/p/20120728/48cc8672b1e30f9ea63bc39285ea0489_150x150.jpg">
												<div class="i_w">
													<div class="i" style="margin-top: 0px;">
														<div class="c1">
															<strong>鲜蘑烩鸽蛋</strong><span>0 评论 15076 人气</span>
														</div>
														<div class="c2">
															<ul>
																<li class="li1">1步 / 大概15分钟</li>
																<li class="li2">其它工艺 / 咸鲜味</li>
															</ul>
														</div>
													</div>
												</div> <strong class="gx"><span>强身健体</span></strong>
											</a>
										</div>
										<div class="listtyle1">
											<a target="_blank"
												href="#"
												title="糖醋沅白" class="big"> <img class="img" alt="糖醋沅白"
												src="http://s1.ig.meishij.net/p/20120728/78feebc852985c12bd5e82e8228eaf09_150x150.jpg">
												<div class="i_w">
													<div class="i" style="margin-top: 0px;">
														<div class="c1">
															<strong>糖醋沅白</strong><span>0 评论 11698 人气</span>
														</div>
														<div class="c2">
															<ul>
																<li class="li1">1步 / 大概15分钟</li>
																<li class="li2">炸 / 酸甜味</li>
															</ul>
														</div>
													</div>
												</div> <strong class="gx"><span>润肺</span></strong>
											</a>
										</div>
										<div class="listtyle1">
											<a target="_blank"
												href="#"
												title="左宗棠鸡" class="big"> <img class="img" alt="左宗棠鸡"
												src="http://s1.ig.meishij.net/p/20120727/83c9c62ef8be878acea77f0052ad1e67_150x150.jpg">
												<div class="i_w">
													<div class="i" style="margin-top: 0px;">
														<div class="c1">
															<strong>左宗棠鸡</strong><span>3 评论 54791 人气</span>
														</div>
														<div class="c2">
															<ul>
																<li class="li1">1步 / 大概15分钟</li>
																<li class="li2">炒 / 香辣味</li>
															</ul>
														</div>
													</div>
												</div> <strong class="gx"><span>清热解毒</span></strong>
											</a>
										</div>
										<div class="listtyle1">
											<a target="_blank"
												href="#"
												title="竹香肉" class="big"> <img class="img" alt="竹香肉"
												src="http://s1.ig.meishij.net/p/20120727/8de89f7069c2d8292a2ffa8c694a5bee_150x150.jpg">
												<div class="i_w">
													<div class="i" style="margin-top: 0px;">
														<div class="c1">
															<strong>竹香肉</strong><span>5 评论 21190 人气</span>
														</div>
														<div class="c2">
															<ul>
																<li class="li1">1步 / 大概30分钟</li>
																<li class="li2">烤 / 其它口味</li>
															</ul>
														</div>
													</div>
												</div> <strong class="gx"><span>养胃</span></strong>
											</a>
										</div>
										<div class="listtyle1">
											<a target="_blank"
												href="#"
												title="平锅煎豆腐" class="big"> <img class="img" alt="平锅煎豆腐"
												src="http://s1.ig.meishij.net/p/20120725/c4bb770239758576ab46bb6ff89f4821_150x150.jpg">
												<div class="i_w">
													<div class="i" style="margin-top: 0px;">
														<div class="c1">
															<strong>平锅煎豆腐</strong><span>33 评论 139627 人气</span>
														</div>
														<div class="c2">
															<ul>
																<li class="li1">1步 / 大概15分钟</li>
																<li class="li2">煎 / 咸鲜味</li>
															</ul>
														</div>
													</div>
												</div> <strong class="gx"><span>清热去火</span></strong>
											</a>
										</div>
										<div class="listtyle1">
											<a target="_blank"
												href="#"
												title="宁乡口味蛇" class="big"> <img class="img" alt="宁乡口味蛇"
												src="http://s1.ig.meishij.net/p/20120725/654c46362b7805139a3f0200e6f69d17_150x150.jpg">
												<div class="i_w">
													<div class="i" style="margin-top: 0px;">
														<div class="c1">
															<strong>宁乡口味蛇</strong><span>42 评论 113771 人气</span>
														</div>
														<div class="c2">
															<ul>
																<li class="li1">1步 / 大概30分钟</li>
																<li class="li2">煨 / 香辣味</li>
															</ul>
														</div>
													</div>
												</div>
											</a>
										</div>
										<div class="listtyle1">
											<a target="_blank"
												href="#"
												title="麻圆团" class="big"> <img class="img" alt="麻圆团"
												src="http://s1.ig.meishij.net/p/20120725/6525d36ea5d0f388b8b5e10935d7caa9_150x150.jpg">
												<div class="i_w">
													<div class="i" style="margin-top: 0px;">
														<div class="c1">
															<strong>麻圆团</strong><span>13 评论 50721 人气</span>
														</div>
														<div class="c2">
															<ul>
																<li class="li1">1步 / 大概15分钟</li>
																<li class="li2">炸 / 甜味</li>
															</ul>
														</div>
													</div>
												</div> <strong class="gx"><span>美容</span></strong>
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
								_czc.push(['_trackEvent', 'pc', 'pc_list']);
								_czc.push(['_trackEvent', 'pc', 'pc_list_class_2']);
								var is_list_adding = 0;

								function list_add_shicai() {
									var q = $('#yl_q').val();
									if (q != '' && q != '请输入您想查找的食材') {
										if (is_list_adding == 0) {
											is_list_adding = 1;
											$.get('/ajax/list_add_yl.php?c=' + encodeURIComponent(q), null,
												function(data) {
													is_list_adding = 0;
													data = parseInt(data);
													if (data > 0) {
														location.href = '/list.php?sortby=update&words=10041&lm=41&yl=' + data;
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
									js.src = "http://click.meishij.net/pl/lclick.php?i=2&addclick=1&_" + (new Date()).getTime();
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
							<a href="index.html"><img src="img/logo/logo.png" alt=""
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

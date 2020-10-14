<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js" lang="zxx">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Kettle - Food & Resturant HTML5 Template</title>
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
			<div class="breadcrumb-text text-center">
				<h1>关于我们</h1>
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
								<span>为什么选择我们？</span>
								<h2>用户至上 诚信 合作 创新 服务</h2>
								<p>因为我们是一个以用户为中心、数据为基础、内容为服务、技术为驱动、同理心为方法的用户饮食管理服务平台；
                                我们通过美食菜谱吸引用户，将食物、健康、科技三者结合，帮助用户在任意餐饮环境中，了解自身所需的最佳饮食选择方案，完成中国饮食智慧升级。
                                </p>
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
																			饮食小谚语
																		</button>
																	</h5>
																</div>

																<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
																	<div class="card-body">
																		<p>
																			1、肉生疾来鱼生疮，青菜豆腐保安康。
																			</br>
																			2、饭后走一走，能活九十九。
																			</br>
																			3、学习要深钻细研，吃饭要细嚼慢咽。
																			</br>
																			4、三天不吃青，两眼冒金星。
																			</br>
																			5、饮食讲科学，金秋好生活。
																			</br>
																			6、谷贱伤农，饭多伤胃。
																			</br>
																			7、饭前一口汤，胜过良药方。
																			</br>
																			8、晚上少吃一口，肚里舒服一宿。
																			</br>
																			9、开水多喝，强似吃药。
																			</br>
																			10、饭前喝汤，苗条健康。
																			</br>
																			11、饭吃八成饱，老来胃肠好。
																			</br>
																			12、少吃容易消，多吃必糟糕。
																			</br>
																			13、饮食宜清淡，低盐可延寿。
																			</br>
																			14、上床萝卜下床姜，不劳医生开药方。
																			</br>
																			15、不做害人事，不吃有毒物。
																			</p>
																																																																								
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="headingTwo">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
																			饮食养生之道
																		</button>
																	</h5>
																</div>
																<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
																	<div class="card-body">
																		<p>
																			1、饮食有节，起居有常，不妄作劳
																			</br>
																			车子上路前要先试一试刹车，油门好不是真的好，刹车灵，才是真的好。懂得拼命加油门的，不是高手，懂得关键时刻，及时踩好刹车的才是高手。																			
																			饮食之道，不在于你吃多少，而在于你有没有节制，节制就是人体的刹车板，我们的刹车板有没有失灵啊！如果失灵了，你开得越快就越危险啊！																			
																			所以暴饮暴食，暴喜暴怒，就容易得暴病，心脏搭桥，就是这样制造出来的。
																			</br>
																			2、七分饱胜调剂
																			</br>
																			以前药房里的打粉机没用多久就坏了，老师寄回去给厂家翻修，厂家就很奇怪，这产品都合格的，怎么这么容易坏？后来一问之下，才知道我们打药粉的时候，都装得饱饱满满的。																			
																			不按照使用说明书来，再好的机器都会被你拆坏，结果把药装到七分满时，这打粉机就很少坏了。												
																			现在脾胃病那么多，大都是不懂脾胃的使用说明书。
																			七分饱胜调脾剂，就是脾胃说明书，你把脾胃塞满了，没有不坏的。																			
																			胃溃疡，胃出血，胃胀，不都是被你塞坏的吗？
																			</br>
																			3、食不言，寝不语
																			</br>
																			在古医书上讲，大凡脾胃病的人，服药或吃饭前后一小时，都要慎言，最好止语，脾胃病越重，食不言这条脾胃使用手册，就要守得越严格，那么你就会好得越快。																			
																			我们在煮饭的时候，如果把高压锅镇子拿开，这饭就煮不熟了，因为漏气了，中医讲脾开窍于口，言多耗气。所以多话的人，消化一般都不太好，而且容易累。																		
																			你想一下，脾胃不能把水谷煮熟，人会精力旺盛吗？
																			</br>
																			4、疾病以减食为汤药
																			</br>
																			撑大的猪，撑死的狗，撑病的人，把饮食做得色香味俱全，你不知不觉就吃撑了。所以美食背后有病殃，福兮祸之所伏。																		
																			生病过后，要自动减少饮食，张仲景叫损谷则愈。																	
																			饮食是道，所以叫饮食之道，为道日损，通过减少饮食来减少我们的欲望，我们的身心就清静了。																		
																			所以饮食重要的不是做加法，而是做减法。
																			</p>
																																																																										
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="headingThree">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
																			美食美文
																		</button>
																	</h5>
																</div>
																<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
																	<div class="card-body">
																		<p>
																		俗话说：民以食为天，人生，有吃，才有沿续。
																		</br>
																		古人说：腹有诗书气自华，人生，有诗，才有意趣。
																		</br>
																		当吃遇上了美食既有生活，亦有诗和远方，这才是圆满生活。
																		</br>
																		漫沼春笋诗
																		</br>
																		宋·黄庭坚
																		</br>
																		竹笋才生黄犊角，蕨芽初长小儿拳。
																		</br>
																		试寻野菜炊香饭，便是江南二月天。
																		</br>
																		与二三好友，山野炊食。找寻普通的野菜，就觉得无比香甜。
																		</br>
																		食物会带给你美好的心情，有朋友，有好心情，夫复何求呢！
																		</br>
																		槐叶冷淘
																		</br>
																		唐·杜甫
																		</br>
																		青青高槐叶，采掇付中厨。
																		</br>
																		新面来近市，汁滓宛相俱。
																		</br>
																		入鼎资过热，加餐愁欲无。
																		</br>
																		碧鲜俱照箸，香饭兼苞芦。
																		</br>																		
																		简单的槐叶，与新面做成槐叶冷淘，是夏天消暑的佳品。
																		</br>
																		有的时候，简单的食材，会带来大大的满足与幸福。
																		</br>																		
																		食蒸饼作
																		</br>
																		宋·杨万里
																		</br>
																		何家笼饼须十字，萧家炊饼须四破。
																		</br>
																		老夫饥来不可那，只要鹘仑吞一个。
																		</br>
																		诗人一腹大於蝉，饥饱翻手覆手间。
																		</br>
																		须臾放箸付一莞，急唤龙团分蟹眼。
																		</br>																	
																		已经饿得不行了，看到美味的蒸饼，囫囵吞枣地吃了一个，真是大快朵颐。
																		</br>
																		尽情的吃东西，是人生一件乐事。
																		</br>																	
																		其实，最幸福的人生，就在一杯一盏之间，生活的细微处，见真知。人生，一杯，一盏，一颗赤心，足矣。
																		</p>													
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="headingFour">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
																			美食典故
																		</button>
																	</h5>
																</div>
																<div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
																	<div class="card-body">
																		<p>
																			美食故事一：东坡肉
																			</br>
																			宋哲宗元祐四年（1089年）一月三日，苏轼来到阔别十五年的杭州任知州。元祐五年五、六月间，浙西一带大雨不止，太湖泛滥，庄稼大片被淹。
																			由于苏轼及早采取有效措施，使浙西一带的人民度过了最困难的时期。他组织民工疏浚西湖，筑堤建桥，使西湖旧貌变新颜。杭州的老百姓很感谢苏轼做的这件好事，人人都夸他是个贤明的父母官。
																			听说他在徐州、黄州时最喜欢吃猪肉，于是到过年的时候，大家就抬猪担酒来给他拜年。苏轼收到后，便指点家人将肉切成方块，烧得红酥酥的，然后分送给参加疏浚西湖的民工们吃，大家吃后无不称奇，把他送来的肉都亲切地称为“东坡肉”。
																			</br>
																			美食故事二：云南过桥米线
																			</br>
																			传说云南蒙自县城有一书生，很英俊，很聪明，但喜欢游玩，不愿下功夫读书。他有一个美丽的妻子和一个年幼的儿子。夫妇之间，感情很深。但妻子对书生喜游乐，厌读书深感忧虑。一日，对书生道:“你终日游乐，不思上进，不想为妻儿争气吗?”
																			闻妻言，生深感羞愧，就在南湖筑一书斋，独居苦读，妻子也与生分忧，逐日三餐均送到书斋晌生。日久，生学业大进，但也日渐瘦弱。妻子看在眼里，很心疼，思进补之。
																			一日，宰鸡煨汤，切肉片，备米线，准备给书生送早餐。儿子年幼，戏将肉片置汤中，生妻怒斥儿子的恶作剧，速将肉片捞起，视之，已熟，尝之，味香，大喜。即携罐提篮，送往书斋。因操劳过度，晕倒在南湖桥上，生闻讯赶来，见妻已醒，汤和米线均完好，汤面为浮油所罩，无一丝热气，疑汤已凉，以手掌捂汤罐，灼热烫手，大感奇怪，详问妻制作始末，妻一一详道。
																			良久，书生说道，此膳可称为过桥米线。书生在妻子的精心照料下，考取了举人，这事被当地群众传为佳话从此，过桥米线不胫而走，竟成云南名膳。在云南，米线是各族人民喜爱的风味小吃，真可谓风靡全省，遍及城乡。
																			米线系选用优质大米通过发酵、磨浆、澄滤、蒸粉、挤压等工序而成线状，再放入凉水中浸渍漂洗后即可烹制食用。米线细长、洁白、柔韧，加料烹调，凉热皆宜，均极可口。																			
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
																			选料精良
																		</button>
																	</h5>
																</div>

																<div id="collapse1" class="collapse show" aria-labelledby="heading1" data-parent="#accordion2">
																	<div class="card-body">
																		<p>
																			选料，是中国厨师的首要技艺，是做好一品中国菜肴美食的基础，要具备丰富的知识和熟练运用的技巧。
																			每种菜肴美食所取的原料，包括主料、配料、辅料、调料等，都有很多讲究和一定之规。概而言之，则是“精”、“细”二字，所谓孔子所说的“食不厌精，
																			脍不厌细”也。所谓“精”，指所选取的原料，要考虑其品种、产地、季节、生长期等特点，以新鲜肥嫩、质料优良为佳。汉唐时代，习惯于将美味佳肴称作“八珍”。
																			大约从宋代开始，八珍具体指称八种珍贵的烹饪原料。到了清代，各种系列的“八珍”不胜枚举，主要指的是八种珍稀原料组合的宴席。如“满汉全席”的“四八珍”，
																			即指四组八珍组合的宴席。四八珍即山八珍、海八珍、禽八珍、草八珍，各指32种珍贵的原料，具体是：
																			</br>
																			山八珍：驼峰、熊掌、猴脑、猩唇、象拢、豹胎、犀尾、鹿筋。
																			</br>
																			海八珍：燕窝、鱼翅、大乌参、鱼肚、鱼骨、鲍鱼、海豹、狗鱼（大鲵）。
																			</br>
																			禽八珍：红燕、飞龙、鹌鹑、天鹅、鹧鸪、彩雀、斑鸠、红头鹰。
																			</br>
																			草八珍：猴头、银耳、竹荪、驴窝菌、羊肚菌、花菇、黄花菜、云香信。
																			</p>
																			
																																					
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading2">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse2" aria-expanded="false" aria-controls="collapse2">
																			技法各异
																		</button>
																	</h5>
																</div>
																<div id="collapse2" class="collapse" aria-labelledby="heading2" data-parent="#accordion2">
																	<div class="card-body">
																		<p>
																			烹调技法，是我国厨师的又一门绝技。常用的技法有：炒、爆、炸、烹、溜、煎、贴、烩、扒、烧、炖、焖、氽、煮、酱、卤、蒸、烤、拌、炝、熏，
																			以及甜菜的拔丝、蜜汁、挂霜等。不同技法具有不同的风味特色。每种技法都有几种乃至几十种名菜。著名“叫化鸡”，以泥烤技法，扬名四海。
																			相传古代江苏常熟有一乞丐偷得一只鸡，因无炊具，把鸡宰杀后除去内脏，放入葱盐，加以缝合，糊以黄泥，架火烤烧，泥干鸡熟，敲土食之，肉质鲜嫩，香气四溢。
																			后经厨师改进，配以多种调料，加以烤制，味道更美，遂成名菜。云南“过桥米线”，是氽的技法杰作。
																			相传古代有位书生在书房中攻读，其妻为使他能吃上热汤热饭，便创造了这一氽法：将母鸡熬成沸热的鸡汤，
																			配以切成细薄的鸡片、鱼片、虾片和米线，因面上浮油能起保温作用，并能氽熟上述食品，而且过桥后尚能保持热而鲜嫩，从而创造了氽这一重要烹调技法。
																		</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading3">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse3" aria-expanded="false" aria-controls="collapse3">
																			刀工细巧
																		</button>
																	</h5>
																</div>
																<div id="collapse3" class="collapse" aria-labelledby="heading3" data-parent="#accordion2">
																	<div class="card-body">
																		<p>
																			刀功，即厨师对原料进行刀法处理，使之成为烹调所需要的，整齐一致的形态，以适应火候，受热均匀，便于入味，并保持一定的形态美，
																			因而是烹调技术的关键之一。我国早在古代就重视刀法的运用，经过历代厨师的反复实践，
																			创造了丰富的刀法，如直刀法、片刀法、斜刀法、剞刀法（在原料上划上刀纹而不切断）和雕刻刀法等，
																			把原料加工成片、条、丝、块、丁、粒、茸、泥等多种形态和丸、球、麦穗花、荔子花、蓑衣花、兰花、菊花等多样花色，
																			还可镂空成美丽的图案花纹，雕刻成“喜”、“寿”、“福”、“禄”字样，增添喜庆筵席的欢乐气氛。
																			</br>
																			特别是刀技和拼摆手法相结合，把熟料和可食生料拼成艺术性强、形象逼真的鸟、兽、虫、鱼、花、草等花式拼盘，如“龙凤呈祥”、“孔雀开屏”、“喜鹊登梅”、“荷花仙鹤”、“花篮双凤”等。
																			例如“孔雀开屏”，是用鸭肉、火腿、猪舌、鹌鹑蛋、蟹蚶肉、黄瓜等十五种原料，经过二十二道精细刀技和拼摆工序才完成。
																			不仅仅文学家将精艺的刀工当做完美的艺术欣赏，普通的百姓也往往是一睹为快。为了开开眼界，古代有人专门组织过刀工表演，引起了轰动。
																			南宋曾三异的《同话录》说，有一年泰山举办绝活表演，“天下之精艺毕集”，自然也包括精于厨艺者。
																			“有一庖人，令一人裸背俯伏于地，以其背为几，取肉一斤许，运刀细缕之。撤肉而试，兵背无丝毫之伤。”以人背为砧板，缕切肉丝而背不伤破，这一招不能不令人称绝。
																		</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading4">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse4" aria-expanded="false" aria-controls="collapse4">
																			情调优雅
																		</button>
																	</h5>
																</div>
																<div id="collapse4" class="collapse" aria-labelledby="heading4" data-parent="#accordion2">
																	<div class="card-body">
																		<p>
																			中国饮食文化情调优雅，氛围艺术化，主要表现在美器、夸名、佳境三个方面。
																			</br>
																			袁枚在《随园食单》中引用过一句“古人云”的古语，云“美食不如美器”，是说食美器也美，美食要配美器，求美上加美的效果。
																			</br>
																			中国饮食器具之美，美在质，美在形，美在装饰、美在与馔品的谐合。
																			中国古代食具之美，主要包括陶器、瓷器、铜器、金银器、玉器、漆器、玻璃器几个大的类别。
																			彩陶的粗犷之美，瓷器的清雅之美，铜器的庄重之美，漆器的透逸之美，金银器的辉煌之美，玻璃器的亮丽之美，都曾给使用它的人以美好的享受，而且是美食之外的又一种美的享受。
																			</br>
																			美器之美还不仅限于器物本身的质、形、饰，而且表现在它的组合之美，它与菜肴的匹配之美。
																			</br>
																			周代的列鼎，汉代的套杯，孔府的满汉全席银餐具，都体现一种组合美。孔府专为举行高级筵宴的满汉全席银餐具，一套总数为404件，可上菜196道。
																			这套餐具部分为仿古器皿，部分为仿食料形状的器皿。器皿的装饰也极考究，嵌镶有玉石、翡翠、玛瑙、珊瑚等，刻有各种花卉图案，有的还镌有诗词和吉言文字，更显高雅不凡。
																			</br>
																			孔府的满汉全席餐具，按照四四制格局设置，分小餐具、水餐具、火餐具、点心盒几个部分。美器与美食的谐合，是饮食美学的最高境界。
																			杜甫《丽人行》中“紫驼之峰出翠釜，水晶之盘行素鳞；犀筯厌饫久未下，鸾刀缕切空纷纶”的诗句，同时吟咏了美食美器，烘托出食美器美的高雅境界。
																			</br>
																			在中国人的餐桌上，没有无名的菜肴。一个美妙的菜肴命名，既是菜品生动的广告词，也是菜肴自身一个有机组成部分。
																			菜名给人也有美的享受，它通过听觉或视觉的感知传达给大脑，会产生一连串的心理效应，发挥出菜肴的色、形、味所发挥不出的作用。
																		
																		</p>   
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
																		<button class="btn btn-link" data-toggle="collapse" data-target="#collapse5" aria-expanded="true" aria-controls="collapse5">
																			中国菜
																		</button>
																	</h5>
																</div>

																<div id="collapse5" class="collapse show" aria-labelledby="heading5" data-parent="#accordion3">
																	<div class="card-body">
																		<p>中国菜是烹饪，中国文化的重要组成部分之一。又称中华食文化。
																		世界三大菜系(中国菜、法国菜、土耳其菜）之一，深远的影响了东亚地区。菜谱来源于中国各个地区和民族的菜肴。
																		</br>
                                                                        中国菜源于中原，具有历史悠久、技术精湛、品类丰富、流派众多、风格独特的特点，是中国烹饪数千年发展的结晶，在世界上享有盛誉。
																		</br> 
																		中国菜主要有八大菜系，指：鲁菜、川菜、粤菜、闽菜、苏菜、浙菜、湘菜、徽菜。 同时，也有四大菜系之说，通常指鲁菜、川菜、粤菜和苏菜（淮扬菜）。
																		</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading6">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse6" aria-expanded="false" aria-controls="collapse6">
																			烹饪文化
																		</button>
																	</h5>
																</div>
																<div id="collapse6" class="collapse" aria-labelledby="heading6" data-parent="#accordion3">
																	<div class="card-body">
																		<p>中国的烹饪艺术是在烹饪历史发展过程中，逐渐形成、发展并丰富起来的。具有实用目的与审美价值紧密相联的特点。
																		   如陶制炊器的器形从实用需要设计出发，本意为放置平稳，受热均匀，但却给人以对称、均衡美的感受。陶器、铜器、铁器的不断演进，不仅是对工艺、性能方面的改进，还包含着追求形式美的意图。
																		   随着物质生产的发展和社会生活的进步，烹饪越来越具有审美性质，直至发展成为实用与审美并重的各种花色造型菜点及丰盛华丽的筵席。
																		   中国烹饪艺术虽然受到烹饪原料、烹饪技术、食品实用功能等因素的制约，具有相对的局限性，但它与其他艺术种类相比较，却有自己的艺术特点，即融绘画、雕塑、装饰、园林等艺术形式于一体。
																		   </br>
																		   中国烹饪艺术的表现形式有多种多样，这里主要通过肴馔本身的色、形、香、味、滋与筵席组合来窥其一斑。人们常把前者概称为味觉艺术；将后者称为筵席艺术。
																		</p>     
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading7">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse7" aria-expanded="false" aria-controls="collapse7">
																			国宴
																		</button>
																	</h5>
																</div>
																<div id="collapse7" class="collapse" aria-labelledby="heading7" data-parent="#accordion3">
																	<div class="card-body">
																		<p>国宴是国家元首或政府为招待国宾、其它贵宾或在重要节日为招待各界人士而举行的正式宴会。
																		   国宴菜是国家主席或国务院总理等国家领导人为招待外宾，以及以政府名义的外国援华人员，以及为国家做出突出贡献人士的菜肴，每年国庆时，国务院总理举行的招待会，都称国宴。
																		   </br>
																		   国宴菜博采国内各菜系之众长，按“以味为核心，以养为目的”的要求，上及宫廷肴馔谱录，下采民间风味小吃，外涉世界各国名菜，内及国内八大菜系，广采博取，撷英集精，形成独具特色的系列菜系，突出体现了现代饮食“三低一高”（低盐、低糖、低脂肪、高蛋白）的要求。
																		   口味中西结合，科学合理配膳，注重保健养生之功效。 人民大会堂国宴菜被称为“堂菜”，是国宴菜的一个重要代表，其特点是：用料珍贵，选料精细；以味为本，鲜咸为主；刀工严谨，调味细腻；质地软嫩，色泽素淡；点缀得体，造型典雅。
																		   “堂菜”具有“清淡鲜嫩，形美色绝”的独特风格，是中华饮食文化的一枝奇葩。
																		</p>   
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading8">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse8" aria-expanded="false" aria-controls="collapse8">
																			中国十大名菜
																		</button>
																	</h5>
																</div>
																<div id="collapse8" class="collapse" aria-labelledby="heading8" data-parent="#accordion3">
																	<div class="card-body">
																		<p>中国十大名菜是指包括北京烤鸭在内的十种菜、分别是北京烤鸭、四川麻婆豆腐、西湖醋鱼、飞龙汤、无为熏鸭、东坡肉、腊味合蒸、辣子鸡、东安子鸡、清蒸武昌鱼。
																		    </br>
																		   北京烤鸭：这是一道北京的名菜，用料为优质北京鸭，用果碳烤制，色味俱全。肉质肥而不腻，被誉为“天下美食”。
																		   </br>
																		   四川麻婆豆腐：川菜中的名品，主要食材是豆腐特点是：“麻、辣、烫、香、酥、嫩、鲜、活”八字。
																		   </br>
																		   西湖醋鱼：杭州传统名菜，其烧制手法非常独特，对火候要求很高。鱼肉嫩美，带有蟹味，味道鲜嫩酸甜。
																		   </br>
																		   飞龙汤：飞龙又名榛鸡，也是享誉中外的龙江菜传统名菜，产于大兴安岭地区。飞龙汤是将榛鸡脱毛去掉内脏后，用高汤煮熟即可，汤中不需放任何调料以保持汤原汁原味。飞龙汤肉质鲜美，营养丰富，适合用作滋补汤品。
																		   </br>
																		   无为熏鸭：无为熏鸭是沿江菜最具代表性的菜品之一，也是享誉中外的徽菜传统名菜。安徽无为县厨师采用先熏后卤的独特方法烹制鸭子，成菜色泽金黄油亮，滋味鲜美可口，其制法与口味均独具一格，因而全县闻名，故称“无为熏鸭”。
																		   </br>
																		   东坡肉：一般是一块约二寸许的方正形猪肉，一半为肥肉，一半为瘦肉，入口香糯、肥而不腻，带有酒香，色泽红亮，味醇汁浓，酥烂而形不碎，十分美味。
																		   </br>
																		   腊味合蒸：通常取腊猪肉、腊鸡、腊鱼于一钵，加入鸡汤和调料，下锅清蒸而成。吃时腊香浓重、咸甜适口、柔韧不腻。
																		   </br>
																		   辣子鸡：川菜的代表名菜吃起来鸡肉外酥里嫩。
																		   </br>
																		   东安子鸡：这道菜是用小公鸡烧制而成，鸡肉嫩滑，味道酸辣。
																		   </br>
																		   清蒸武昌鱼：“清蒸武昌鱼”是选用鲜活的樊口团头鲂为主料，配以冬菇、冬笋、并用鸡清汤调味。成菜鱼形完整、色白明亮、晶莹似玉；鱼身缀以红、白、黑配料，更显出素雅绚丽。特点：肉质鲜嫩，营养丰富。
																		</p>
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
																		<button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapse9">
																			西餐
																		</button>
																	</h5>
																</div>

																<div id="collapse9" class="collapse show" aria-labelledby="heading9" data-parent="#accordion4">
																	<div class="card-body">
																		<p>西餐，顾名思义是西方国家的餐食。西方国家，是相对于东亚而言的欧洲白人世界文化圈，西餐的准确称呼应为欧洲美食，或欧式餐饮。
																		   其菜式料理与中国菜不同，一般使用橄榄油、黄油、番茄酱、沙拉酱等调味料。不同的主食相同的都是搭配上一些蔬菜，如番茄、西兰花等。
																		   西餐这个词是由于其特定的地理位置所决定的。“西”是西方的意思。一般指欧洲各国。“餐”就是饮食菜肴。
																		   </br>
																		   东方人通常所说的西餐主要包括西欧国家的饮食菜肴，当然同时还包括东欧各国，地中海沿岸等国和一些拉丁美洲如墨西哥等国的菜肴。
																		   而东南亚各国的菜肴一般统称为东南亚菜，但也有独为一种菜系的，如印度菜。西餐一般以刀叉为餐具以面包为主食，多以长形桌台为台形。
																		   西餐的主要特点是主料突出，形色美观，口味鲜美，营养丰富，供应方便等。正规西菜而言应包括了餐汤、前菜、主菜、餐后甜品及饮品。
																		   西餐大致可分为法式、英式、意式、俄式、美式，地中海等多种不同风格的菜肴。
																		</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading10">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse10" aria-expanded="false" aria-controls="collapseTwo">
																			烹饪技巧
																		</button>
																	</h5>
																</div>
																<div id="collapse10" class="collapse" aria-labelledby="heading10" data-parent="#accordion4">
																	<div class="card-body">
																		<p>西方人饮食强调科学与营养，烹调的全过程都严格按照科学规范行事，菜肴制作规范化，因而厨师的工作就成为一种极其单调的机械性工作。
																		   再者，西方人进食的目的首在摄取营养，只要营养够标准，其他尽可宽容，因而今日土豆牛排，明日牛排土豆，厨师在食客一无苛求极其宽容的态度下，每日重复着机械性的工作，当然无趣味可言。
																		   </br>
																		   西方的烹饪方法不像中国那样复杂多变，西餐的装盘立体感强，可食性强，所有进盘的食品绝大多数都能食用，点缀品就是主菜的配菜。西餐的原料多选择新鲜、无污染、天然、操作工艺自然的，尽量发挥其本味，干货原料用的不是太多，牛奶在西餐中是不可缺少的原料。
																		   供应商已根据原料的特点，使其进一步标准化规范化，厨师不再是单纯根据自己的经验来判断和确定使用哪种原料。
																		</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading11">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse11" aria-expanded="false" aria-controls="collapse11">
																			茶饮
																		</button>
																	</h5>
																</div>
																<div id="collapse11" class="collapse" aria-labelledby="heading11" data-parent="#accordion4">
																	<div class="card-body">
																		<p>中西方饮食文化差异是明显的，而且各有长处。随着经济全球化及信息交换的加快，中西饮食文化将在碰撞中融合，在融合中互补。
																		中餐已开始注重食物的营养性、健康性和烹饪的科学性；西餐也开始向中餐的色、香、味、意、形的境界发展，中西餐饮文化将在交流中共同发展，
																		人们将会享受到更美味、更快捷、更营养的食品。如 英国人喝茶与中国人喝茶习俗方面有很大不同，中国人喜欢喝清茶，
																		讲究品茶 英国人喜欢在茶中加入牛奶糖等 中国人大都喜欢喝绿茶 （green tea），而英国人大都喝红茶black tea，据说是因为绿茶不易保存。英国人也喝咖啡 </p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading12">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse12" aria-expanded="false" aria-controls="collapse12">
																			各国特色
																		</button>
																	</h5>
																</div>
																<div id="collapse12" class="collapse" aria-labelledby="heading12" data-parent="#accordion4">
																	<div class="card-body">
																		<p>法国
																		</br>
																		法国是公元476年西罗马帝国灭亡后废墟上逐渐建立起来的国家。在此以前它是古罗马省，称为外高卢。
																		当时就有一些雅典和罗马的有名厨师来到这里，奠定了法国菜的基础。到16世纪欧洲文艺复兴时期意大利盛行的烩牛他核、煎嫩牛排及各种少司的制作方法等传到了法国，
																		使法国菜更加丰富起来。由于历代法国国王崇尚美食，使得当时的法国名厨辈出，奠定了法式菜在西餐中的重要地位。但法餐却趋于保守，发展较为缓慢。
																		</br>
																		意大利
																		</br>
																		意大利地处南欧的亚平宁半岛，优越的地理条件使意大利的受精和食品加工业都很发达，其以面条，奶酪，色拉米肉肠著称于世。
																		公元前2世纪后期，古罗马宫廷的膳房已形成庞大的队伍，并有很细的分工。
																		厨师总管的身份与贵族大臣相同，烹调方法日益完善，并发明了数十种少目的制作方法。时至今日，意大利菜仍在世界上享有很高的声誉
																		</br>
																		英国
																		</br>
																		英国的农业有发达，粮食每年主要靠进口，英国人也不像法国人那样崇尚美食，因此英式菜相对来说比较简单，英国人也常自嘲自己不善烹调。
																		但英式菜的早餐却很丰盛，受到西方各国的普遍欢迎。另外，英国人喜欢喝茶，习惯在下午3点左右吃茶点，
																		一般是一杯红茶或咖啡再加一份点心。如遇朋友有伤心事，递上一杯好茶，是对朋友最好的安慰。
																		</br>
																		美国
																		</br>
																		由于在美国的英国移民较多，所以美式菜基本上是在英式菜的基础上发展起来的。另外，由于美国的历史短，传统、保守思想较少，
																		在生活习惯上也不墨守成规，美国人当地丰富的农牧产品，结合欧洲其他移民和当地印第安人的生活习惯，形成了独特的美国饮食文化。
																		</br>
																		俄罗斯
																		</br>
																		俄式菜受法式菜影响较大，奥地利、匈牙利等国菜式的一些特点，结合自己的饮食习惯，逐渐形成顾具特色的俄式菜。
																		</br>
																		德国
																		</br>
																		德国是在西罗马帝国灭亡后由日尔曼诸部落逐渐建立起来的国家，中世纪时期一直处于分裂状态，直到1870年才真正统一。
																		在生活上，德国人喜爱运动，所以食量较大，他们保留了以肉食为主的日尔曼遗风。德式菜看以丰盛实惠、朴实无华而著称。
																		德国人用餐时也非常注重用餐礼仪。
																		
																		
</p>
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
		<!-- counter-area-start -->
		<div class="counter-area pt-130 pb-105" style="background-image:url(img/bg/bg1.jpg)">
			<div class="container">
				<div class="row">
					<div class="col-xl-3 col-lg-3 col-md-6">
						<div class="counter-wrapper mb-30 text-center">
							<div class="counter-text">
								<h1 class="counter">10</h1>
								<span>YEARS OF <br> EXPERIENCE</span>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-6">
						<div class="counter-wrapper mb-30 text-center">
							<div class="counter-text">
								<h1 class="counter">120</h1>
								<span>Successful <br> entrepreneurs</span>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-6">
						<div class="counter-wrapper mb-30 text-center">
							<div class="counter-text">
								<h1 class="counter">80</h1>
								<span>COMPANIES <br> FOUNDED</span>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-6">
						<div class="counter-wrapper mb-30 text-center">
							<div class="counter-text">
								<h1 class="counter">240</h1>
								<span>BOOKS, DVDS <br> & PODCASTS</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- counter-area-end -->
		<!-- our-staffs-area-start --
		<!-- our-staffs-area-end -->
		<!-- service-area-start -->
		
		<!-- service-area-end -->
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

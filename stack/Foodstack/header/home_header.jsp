<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="col-xl-6 col-lg-8">
	<div class="main-menu text-center">
		<nav id="mobile-menu">
			<ul>
				<li><a href="index.jsp">首页</a>
					<ul class="sub-menu text-left">
						<li><a href="https://www.baidu.com/">百度一下吧</a></li>
						<li><a href="http://www.4399.com/">玩个小游戏吧</a></li>
						<li><a href="https://www.kugou.com/">听歌休息一下吧</a></li>
					</ul></li>
				<li><a href="shop.jsp">菜谱</a>
					<ul class="sub-menu text-left">
						<li><a href="shop.jsp">中国菜谱</a></li>
						<li><a href="shop-single.jsp">外国菜谱</a></li>
					</ul></li>
				<li><a href="blog-standard.jsp" class="bj">各地小吃</a>
					<div class="address" style="margin-left: -150px">
						<div class="address-small">
							<ul id="">
								<li class="address-li"><a href="${pageContext.request.contextPath }/HomeSnack?method=show&snacks=北京小吃">北京小吃</a></li>
								<li class="address-li"><a href="${pageContext.request.contextPath }/HomeSnack?method=show&snacks=上海小吃">上海小吃</a></li>
								<li class="address-li"><a href="${pageContext.request.contextPath }/HomeSnack?method=show&snacks=天津小吃">天津小吃</a></li>
								<li class="address-li"><a href="${pageContext.request.contextPath }/HomeSnack?method=show&snacks=重庆小吃">重庆小吃</a></li>
								<li class="address-li"><a href="${pageContext.request.contextPath }/HomeSnack?method=show&snacks=河北小吃">河北小吃</a></li>
								<li class="address-li"><a href="${pageContext.request.contextPath }/HomeSnack?method=show&snacks=山西小吃">山西小吃</a></li>
								<li class="address-li"><a href="${pageContext.request.contextPath }/HomeSnack?method=show&snacks=河南小吃">河南小吃</a></li>
								<li class="address-li"><a href="${pageContext.request.contextPath }/HomeSnack?method=show&snacks=辽宁小吃">辽宁小吃</a></li>
								<li class="address-li"><a href="${pageContext.request.contextPath }/HomeSnack?method=show&snacks=吉林小吃">吉林小吃</a></li>
								<li class="address-li"><a href="${pageContext.request.contextPath }/HomeSnack?method=show&snacks=云南小吃">云南小吃</a></li>
								<li class="address-li"><a href="${pageContext.request.contextPath }/HomeSnack?method=show&snacks=湖南小吃">湖南小吃</a></li>
								<li class="address-li"><a href="${pageContext.request.contextPath }/HomeSnack?method=show&snacks=江苏小吃">江苏小吃</a></li>
								<li class="address-li"><a href="${pageContext.request.contextPath }/HomeSnack?method=show&snacks=山东小吃">山东小吃</a></li>
								<li class="address-li"><a href="${pageContext.request.contextPath }/HomeSnack?method=show&snacks=安徽小吃">安徽小吃</a></li>
								<li class="address-li"><a href="${pageContext.request.contextPath }/HomeSnack?method=show&snacks=浙江小吃">浙江小吃</a></li>  					
							</ul>
						</div>
					</div></li>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="col-xl-3 col-lg-2">
	<c:if test="${sessionScope.user == null}">
		<div class="header-right f-right d-none d-md-none d-lg-block">
			<div class="header-button">
					<a href="menu.jsp">登录注册</a>
			</div>
			<ul>
									<li><a href="${pageContext.request.contextPath }/HomeUser?method=list" ><span class="ti-search"></span></a>
									</li>
									<!-- <li><a href="shopping-cart.jsp"><span class="ti-shopping-cart"></span></a></li>
                                   <li class="info-bar"><a href="#"><span class="ti-align-right"></span></a></li> -->
								</ul>
		</div>
	</c:if>
	<c:if test="${sessionScope.user.isLogin != null }">
		<div class="header-right f-right d-none d-md-none d-lg-block" id="classDiv" style="border:1px solid grey;border-radius: 50px;overflow:hidden;width: 104px;height: 104px;margin-top: 5px">
			<img style="width:100%; height:auto" src="${pageContext.request.contextPath }/${sessionScope.user.img }" id="imgs">
		</div>
	</c:if>																													
</div>
<script type="text/javascript">
$('#imgs').dblclick(function(){
	window.location.href="${pageContext.request.contextPath}/Foodstack/showMyself.jsp";
});
</script>
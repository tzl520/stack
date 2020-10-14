<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap -->
<link href="Foodstack/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="Foodstack/js/jquery-3.4.1.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="Foodstack/bootstrap/js/bootstrap.min.js"></script>
<style type="text/css">
.btnxs{
background: #bf9410;
	border: medium none;
	color: #fff;
	cursor: pointer;
	display: inline-block;
	font-size: 12px;
	font-weight: 600;
	line-height: 2;
	margin-bottom: 0;
	text-align: center;
	text-transform: uppercase;
	touch-action: manipulation;
	transition: all 0.3s ease 0s;
	vertical-align: middle;
	border-radius: 4px;
}
.btnxs:hover{background:#000;color:#fff;}
</style>
    
		<!-- CSS here -->
        <link rel="stylesheet" href="Foodstack/css/themify-icons.css">
		<link rel="stylesheet" href="Foodstack/css/fontawesome-all.min.css">
		<link rel="stylesheet" href="Foodstack/css/slick.css">
		<link rel="stylesheet" href="Foodstack/css/default.css">
		<link rel="stylesheet" href="Foodstack/css/style.css">
</head>
<body>
<header>
			<div id="sticky-header" class="header-top-area header-2 pr-60 pl-60">
				<div class="container-fluid">
					<div class="row">
						<div class="col-xl-3 col-lg-2">
							<div class="logo">
								<a href="index.jsp"><img src="img/logo/logo.png" alt="" height="105px" /></a>
							</div>
						</div>
						<%@ include file="header/home_header.jsp" %>
						<%@ include file="header/header_login.jsp" %>

					</div>
				</div>
			</div>
		</header>
   <form id="myForm" method="post" action="${pageContext.request.contextPath}/HomeUser?method=getByName" class="form-inline" style="text-align: center;margin-top:20px;">
	  <div class="form-group">
	    <label  for="product-name">菜品的名称</label>
	    <input type="text" class="form-control" name="name" value="${name}" id="product-name" placeholder="商品的名称">
	  </div>
	 <button type="submit" class="btnxs">查询</button>
	</form>
   
	<table class="table table-condensed">
      <%-- <caption>显示所有的商品的信息</caption> --%>
      <thead>
        <tr>
          <th>菜品的编号</th>
          <th>菜品的名字</th>
          <th>菜品的图片</th>
          <th>菜品的简介</th>
        </tr>
      </thead>
      <tbody>
      

        <c:forEach items="${po }" var="p">
	        <tr>
	          <td width="25%">${p.id }</td>
	          <td width="25%"><a href="Foodstack/${p.name }.jsp">${p.name }</a></td>
	          <td width="25%"><a href="Foodstack/${p.name }.jsp"><img src="${pageContext.request.contextPath}/${p.img }" width="100px" height="100px"/></a></td>
	          <td width="25%">${p.title }</td>
	        </tr>
       </c:forEach>
      </tbody>
    </table>
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
      /*   var rows = $("#mainTable").datagrid("getRows");
        var row = rows[index];
      //判断input的name属性，当name属性=object的属性时，让这个dom的value=object对应属性的值
      for(var i in row){
          $("#formao input").each(function(index,dom){
              if(i==$(dom).attr("name")){
                  $(dom).val(row[i]);
              }
          });
      } */

    </script>
</body>
</html>
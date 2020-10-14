<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>上传菜品</title>
<style type="text/css">
.textar{
display:block;
margin-top:-130px;
margin-left:350px;
}
.useredit_w{
	height: 500px;
}
</style>
  <link rel="stylesheet" href="Foodstack/css/bootstrap.min.css">
        <link rel="stylesheet" href="Foodstack/css/owl.carousel.min.css">
        <link rel="stylesheet" href="Foodstack/css/animate.min.css">
        <link rel="stylesheet" href="Foodstack/css/nice-select.css">
        <link rel="stylesheet" href="Foodstack/css/themify-icons.css">
        <link rel="stylesheet" href="Foodstack/css/magnific-popup.css">
        <link rel="stylesheet" href="Foodstack/css/meanmenu.css">
		<link rel="stylesheet" href="Foodstack/css/fontawesome-all.min.css">
		<link rel="stylesheet" href="Foodstack/css/slick.css">
		<link rel="stylesheet" href="Foodstack/css/default.css">
		<link rel="stylesheet" href="Foodstack/css/style.css">
		<link rel="stylesheet" href="Foodstack/css/responsive.css">
		<link rel="stylesheet" href="Foodstack/css/base/base.css">
		<link rel="stylesheet" href="Foodstack/css/base/main.css">
		<link rel="stylesheet" href="Foodstack/css/base/tips.css">
		<link rel="stylesheet" href="Foodstack/css/base/user.css">
		<script src="Foodstack/js/jquery-3.4.1.js"></script>
		<!-- <script type="text/javascript" src="https://s1.c.meishij.net/n/js/j.m.js?v=1551"></script>
		<script type="text/javascript" src="Foodstack/js/main2.js"></script>
		<script type="text/javascript" src="https://s1.c.meishij.net/n/js/user.js"></script>
		<script type="text/javascript" src="https://s1.c.meishij.net/n/js/tipswindown.js"></script>
		<script src="https://dup.baidustatic.com/js/ds.js"></script> -->
		
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
		</header><div class="main clearfix">
	<h1 class="bbtitles">上传菜品</h1>
	<div class="user_main clearfix">
	<div class="user_inner_tab">
	<a href="index.jsp" class="user_backbtn1" title="返回我的首页"  alt="返回我的首页"></a>
	<ul class="user_inner_tab_ul">
</div>
<div class="useredit_w" style="height: 600px">
			<form method="POST" action="${pageContext.request.contextPath }/HomeAudit?method=add"  enctype="multipart/form-data">
				<input type="hidden" value="${sessionScope.user.id}" name="ids">
				<ul class="useredit_ul clearfix">
					<li>
					<dl class="clearfix">
						<dt>菜品类型：</dt>
						<dd class="dd1">
							<select name="seles" id="far">
								<option value="各地小吃">各地小吃</option>
								<option value="中国菜">中国菜</option>
								<option value="外国菜">外国菜</option>
							</select>
							<select name="sele" id="son">
								<c:forEach items="${faList }" var="f">
									<option value="${f.name }">${f.name }</option>
								</c:forEach>
							</select>
						</dd>
					</dl>
					</li>
					<li>
						<dl class="clearfix">
						<dt>菜品名：</dt>
						<dd class="dd1"style="margin-top: 3px">
							<input type="text" name="name" style="height: 30px">
						</dd>
					</dl>
					</li>
					<li>
						<dl class="clearfix">
							<dt>图片文件：</dt>
							<dd class="dd1" style="margin-top: 10px">
								<input type="file" name="img">
							</dd>
						</dl>
					</li>
					<li>
						<dl class="clearfix">
							<dt>  </dt>
							<dd class="dd1" style="margin-top: 3px">
								<img src = "" id="imgss" name="imgs" style="display: none;"/>
							</dd>
						</dl>
					</li>
					<li>
						<dl class="clearfix">
							<dt>描述：</dt>
							<dd class="dd1" style="margin-top: 3px">
								<textarea rows="4" cols="50" name="title"></textarea>
							</dd>
						</dl>
					</li>
					<li>
						<dl class="clearfix">
							<dt>  </dt>
							<dd class="dd1" style="margin-top: 3px">
								<input type="submit" value="提交" style="width: 80px;height: 30px"/>
							</dd>
						</dl>
					</li>
					</ul>
				</form>
				
		<script src="Foodstack/js/vendor/modernizr-3.5.0.min.js"></script>
     <script src="Foodstack/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="Foodstack/js/waypoints.min.js"></script>
       <!--  <script src="Foodstack/js/jquery.counterup.min.js"></script> -->
        <script src="Foodstack/js/bootstrap.min.js"></script>
        <script src="Foodstack/js/owl.carousel.min.js"></script>
        <script src="Foodstack/js/isotope.pkgd.min.js"></script>
        <script src="Foodstack/js/jquery.nice-select.min.js"></script>
        <script src="Foodstack/js/jquery.meanmenu.min.js"></script>
        <script src="Foodstack/js/slick.min.js"></script>
        <script src="Foodstack/js/ajax-form.js"></script>
        <script src="Foodstack/js/wow.min.js"></script>
        <script src="Foodstack/js/jquery.scrollUp.min.js"></script>
        <script src="Foodstack/js/imagesloaded.pkgd.min.js"></script>
        <script src="Foodstack/js/jquery.magnific-popup.min.js"></script>
        <script src="Foodstack/js/plugins.js"></script>
        <script src="Foodstack/js/main.js"></script>
        <script type="text/javascript">
        $('input[name=img]').change(function () {
		       var file = this.files[0];//获取文件信息
		        if (window.FileReader)
		        {
		            var reader = new FileReader();
		            reader.readAsDataURL(file);
		            //监听文件读取结束后事件    
		            reader.onloadend = function (e) {
		                $("#imgss").attr("src",e.target.result).show();
		                console.log($("#imgs"))
		            };
		        }
		});
        $('#far').change(function(){
        	var $name = $('#far').val();
        	$.ajax({
        		type:"GET",
        		url:"${pageContext.request.contextPath }/HomeAudit",
        		data:"method=getByName&name="+$name,
        		dataType:"json",
        		async:"false",
        		success:function(data){
        			$("#son").empty();
        			for(var i = 0;i < data.length; i++){
        				$('#son').append("<option value='"+data[i].name+"'>"+data[i].name+"</option>"); 
        			}
        		}
        	});
        })
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
        var _czc = _czc || [];var _hmt = _hmt || [];(function() {var hm = document.createElement("script");
		hm.src = "//hm.baidu.com/hm.js?01dd6a7c493607e115255b7e72de5f40";
		var s = document.getElementsByTagName("script")[0];
		s.parentNode.insertBefore(hm, s);})();
        </script>
</body>
</html>
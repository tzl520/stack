<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Stack-美食栈后台</title>

  <!-- Favicons -->
  <link href="img/Stack.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">
  
  
</head>

<body>
  <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
  <div id="login-page">
    <div class="container">
      <form class="form-login" id="myform" action="${pageContext.request.contextPath }/Admin?method=login" method = "post">
        <h2 class="form-login-heading">登录</h2>
        <div class="login-wrap">
          <input type="text" class="form-control" id = "name" name="name" value="root">
          <br>
          <input type="password" class="form-control" placeholder="密码" id = "pwd" name="pwd">
          <br>
          <%-- <input type="text" class="form-control"style="width: 100px" placeholder="验证码" name="verificationCode">
          <span style="display:block;margin-left: 110px;margin-top: -32px">
            <img id="imgs" src="${pageContext.request.contextPath}/RanomCode" id = "ims" onclick="changeImg(this)"><span style="display: none"></span>
          </span> --%>
          <label class="checkbox">
            &nbsp; &nbsp; &nbsp; &nbsp;<input type="checkbox" value="ok" name = "ck"> 记住我
            <span class="pull-right">
            </span>
            </label>
          <button class="btn btn-theme btn-block" type="submit"><i class="fa fa-lock"></i> 登录</button>
          <hr>
        </div>
        <!-- Modal -->
        <!-- modal -->
      </form>
    </div>
  </div>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <!--BACKSTRETCH-->
  <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
  <script type="text/javascript" src="lib/jquery.backstretch.min.js"></script>
  <script>
  	var $pwd = '${cookie.pwd.value}' ;
	$pwd = decodeURI($pwd,"UTF-8");
	/* var $name = '${cookies.username.value}';
	$name = decodeURI($name,"UTF-8"); */
	console.log($pwd);
	if(null===$pwd || $pwd.length ==0) {
		$("input[name='pwd']").val("");
		$("input[name='ck']").prop('checked',false);
	} else {
		$("input[name='pwd']").val($pwd);
		$("input[name='ck']").prop('checked',true);
	}
    $.backstretch("img/login-bg.jpg", {
      speed: 500
    });
    function changeImg(img) {
    	img.src="${pageContext.request.contextPath}/RanomCode?"+Math.random();
        //在末尾加Math.random()的作用：<br>如果两次请求地址一样，服务器只会处理第一次请求，第二次请求返回内容和第一次一样。或者说如果地址相同，第一次请求时，将自动缓存，导致第二次不会重复请求了。Math.random()是调用javascript语法中的数学函数，能够产生随机数。<br>末尾加Math.random()使每次请求地址不相同，服务器每次都去做不同的响应。也可以使用new date()时间戳的形式作为参数传递。
    }
   /*  $("input[name='verificationCode']").blur(function(){
    	var $val = $(this).val();
    	if(null === $val||$val.length==0){
    		$('#imgs').next().show().html("不能为空");
    		return;
    	}
    	$.ajax({
    		type:"GET",
    		url:"${pageContext.request.contextPath}/Admin",
    		data:{"method":"checkCode","code":$val},
    		dataType:"json",
    		async:"false",
    		success:function(data){
    			if(data.code === 200){
    				$('#imgs').next().show().html(data.msg);
    			}else{
    				$('#imgs').next().show().html(data.msg);
    			}
    		}
    	});
    }); */
    $(document).ready(function(){
    	var $pwd = $('#pwd').val();
    	var $name = $('#name').val()
    	if(null != $pwd && $pwd != "" && null != $name && $name != "" ){
    		 $('#myform').submit();
    	}
    });
  </script>
</body>

</html>

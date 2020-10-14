jQuery(function(){
jQuery("#addCdToFavInCon").hover(function(){
	if(jQuery(this).html()=="宸叉敹钘�"){
		jQuery(this).html("鍙栨秷鏀惰棌");
	}
},function(){
	if(jQuery(this).html()=="鍙栨秷鏀惰棌"){
		jQuery(this).html("宸叉敹钘�");
	}
});
jQuery(".listtyle1").live("mouseenter",function(){
	var _this = jQuery(this);
	_this.find("div.i").stop().animate({marginTop:"-100px"},400,function(){});
});
jQuery(".listtyle1").live("mouseleave",function(){
	var _this = jQuery(this);
	_this.find("div.i").stop().animate({marginTop:"0px"},400,function(){});
});
jQuery(".cd_forcheck_li").live("click",function(){
	var _this = jQuery(this);
	if(_this.hasClass("checkbox_checked")){
		_this.removeClass("checkbox_checked")
	}else{
		_this.addClass("checkbox_checked");
	}
});
jQuery(".delthiscp").live("click",function(){
});
jQuery("#tizhi_zzbox_la").click(function(){
	var _this = jQuery(this);
	var _ul = _this.next();
	_ul.animate({"margin-left":"0px"},400,function(){
		_ul.find("li").last().prependTo(_ul);
		_ul.css("margin-left","-130px");
	});
});
jQuery("#tizhi_zzbox_ra").click(function(){
	var _this = jQuery(this);
	var _ul = _this.prev();
	_ul.animate({"margin-left":"-260px"},400,function(){
		_ul.find("li").first().appendTo(_ul);
		_ul.css("margin-left","-130px");
	});
});
jQuery(".tzyj_sc_item").hover(function(){
	jQuery(this).siblings().removeClass("tzyj_sc_item_cur");
	jQuery(this).addClass("tzyj_sc_item_cur");
},function(){
});
jQuery(".tzyj_sc_tabitem span.title").mouseover(function(){
	if(jQuery(this).parent().hasClass("tzyj_sc_tabitem_cur")){
		//jQuery(this).parent().removeClass("tzyj_sc_tabitem_cur");
	}else{
		jQuery(this).parent().siblings().removeClass("tzyj_sc_tabitem_cur");
		jQuery(this).parent().addClass("tzyj_sc_tabitem_cur");
	}
});
jQuery(".left_arrow").click(function(){
	var _this = jQuery(this);
	var _ul = _this.next().find("ul");
	
	_ul.animate({"margin-left":"0px"},400,function(){
		_ul.find("li").last().prependTo(_ul);
		_ul.css("margin-left","-130px");
	});
});
jQuery(".right_arrow").click(function(){
	var _this = jQuery(this);
	var _ul = _this.prev().find("ul");
	_ul.animate({"margin-left":"-260px"},400,function(){
		_ul.find("li").first().appendTo(_ul);
		_ul.css("margin-left","-130px");
	});
});
jQuery(".listtyle1 .info2").live("mouseenter",function(){
	var _this = jQuery(this);
	_this.find(".info2_c").stop().animate({left: "0px",opacity:"1"}, 800 ,function(){});
});
jQuery(".listtyle1 .info2").live("mouseleave",function(){
	var _this = jQuery(this);
	_this.find(".info2_c").stop().animate({left: "232px",opacity:"0"}, 800,function(){});
});
jQuery(".filter_otherbtn").toggle(function(){
	var _this = jQuery(this);
	_this.html("<< 鏀惰捣");
	jQuery(this).prev().find(".others").fadeIn(function(){
		
	});
},function(){
	var _this = jQuery(this);
	_this.html("灞曞紑鍏ㄩ儴 >>");
	jQuery(this).prev().find(".others").fadeOut(function(){
		
	});
});
jQuery(".other_c").css("min-height",jQuery("#listnav_con_c").height()+"px");
if (jQuery.browser.msie && (jQuery.browser.version == "6.0") && !jQuery.support.style) { 
	jQuery(".other_c").css("height",jQuery("#listnav_con_c").height()+"px");//for ie6
} 
jQuery("#fliterstyle1 dt").click(function(){
	var _this=jQuery(this);
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
jQuery("#fliterstyle1 .tab li").click(function(){
	var po = jQuery(this).attr("po");
	if(!jQuery(this).hasClass("current")){
		jQuery(this).siblings().removeClass("current");
		jQuery(this).addClass("current");
	}
	jQuery("#fliterstyle1 .tabcon").each(function(){
		if(jQuery(this).attr("po") == po){
			jQuery(this).siblings(".tabcon").hide();
			jQuery(this).show();
		}
	});
});
jQuery("#cdlists li").click(function(){
	var _this = jQuery(this);
	var po = _this.attr("po");
	if(jQuery("#cdlist .cdlist_w[po='"+po+"']").length>0){
		
		_this.siblings().removeClass("current");
		_this.addClass("current");
		jQuery("#cdlist .loading").hide();
		jQuery(".cdlist_w").removeClass("cdlist_w_current");
		jQuery("#cdlist .cdlist_w[po='"+po+"']").addClass("cdlist_w_current");
	}else{
		jQuery(".cdlist_w").removeClass("cdlist_w_current");
		jQuery("#cdlist .loading").css("display","block");
		_this.siblings().removeClass("current");
		_this.addClass("current");
		
		jQuery.post("ajax_cdlist.html", { name: "John", time: "2pm" },
			function(data){
				
				jQuery(".cdlist_w").removeClass("cdlist_w_current");
			 	jQuery("#cdlist .loading").hide();
			 	jQuery("#cdlist").append(data);
			 	
		});
	}
});
    
});	
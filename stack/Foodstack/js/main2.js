console.log("2222");
function close_tip(){
	jQuery('#windown-close').click();
}
function show_info(){
		jQuery('#dr_getmission_box1').fadeIn();
	}
jQuery(function(){

	jQuery("#exitaddrbox1").click(function(){
		jQuery("#dr_getmission_box1").fadeOut();
	});
	var pass=1;
	jQuery("#submitaddrbox1").click(function(){
		if(pass!=1){
			return false;
		}
		pass=0;
		var prom = 1;
		jQuery.each(jQuery(".addrinputw1 input"),function(){
			if(jQuery(this).val() == "" || jQuery(this).val() == " " || jQuery(this).val() == "undefined"){
				prom = 0;
			}
		});


		if(prom == 1){

			var real_name = jQuery("#addr_info11").val();
			var mobile = jQuery("#addr_info22").val();
			var qq = jQuery("#addr_info33").val();
			var weixin = jQuery("#addr_info44").val();
			var address = jQuery("#addr_info55").val();

			var id= 151;

				jQuery.post("/ajax/join_task.php",{id:id,act:'join_task',real_name:real_name,mobile:mobile,qq:qq,weixin:weixin,address:address},function(data){

					if(data.code== 1){
						jQuery("#dr_getmission_box1").fadeOut();
						location.href="http://i.meishi.cc/daren_task/dr_postwz.php?id=151";

					}else{
						alert(data.msg);
					}

					pass=1;
				},'json');
		}else{
			alert("璇锋纭～鍐欐墍鏈夎仈绯绘柟寮弤");
			pass=1;
		}
	});


});

function guidGenerator() { 
	var S4 = function() { 
		return (((1+Math.random())*0x10000)|0).toString(16).substring(1); 
	}; 
	return (S4()+S4()+"-"+S4()+"-"+S4()+"-"+S4()+"-"+S4()+S4()+S4()); 
}
function loginreg(is_login){
	Alert("鐧诲綍缇庨鏉�", "iframe:/ajax/login.php?t=" + is_login + '&redirect=' + encodeURIComponent(location.href), "700", "300", "false", "", "true", "img");
}
var is_req_login_jifen = 0;
var is_req_sign_in = 0;
function sign_in(t){
	if(is_req_sign_in == 0){
		is_req_sign_in = 1;
		jQuery.post("/ajax/sign_in.php", {},function(data){
			is_req_sign_in = 0;
			jQuery.post("/ajax/login_jifen.php", {},function(data){jQuery('.qdbox').html(data);});
		});
	}
}
function jifenpage_sign_in(t){
	jQuery.post("/ajax/sign_in.php",{},function(data,status){
		if(data.add_jifen>0){
			jQuery('.qdbtn').html('浠婃棩宸茬鍒�,娆㈣繋鍏変复!');
			msjLittletips("浠婃棩绛惧埌,绉垎+"+data.add_jifen);
			jQuery("#jifen_num").html(data.jifen);
		}
    },'json');
}
function ztlistMoveleft(){
	jQuery("#ztlist_style1_item_ww").animate({"margin-left":"0px"},600,function(){
		jQuery("#ztlist_style1_item_ww .ztlist_style1_item_w1").last().prependTo(jQuery("#ztlist_style1_item_ww"));
		jQuery("#ztlist_style1_item_ww").css("margin-left","-988px");
		jQuery("#index_cd_leftarrow_mask").hide();
		index_cd_cur = index_cd_cur - 1;
		if(index_cd_cur == -1){
			index_cd_cur = 2;
		}
		setztlistCur();
	});
}
function ztlistMoveright(){
	jQuery("#ztlist_style1_item_ww").animate({"margin-left":"-1976px"},600,function(){
		jQuery("#ztlist_style1_item_ww .ztlist_style1_item_w1").first().appendTo(jQuery("#ztlist_style1_item_ww"));
		jQuery("#ztlist_style1_item_ww").css("margin-left","-988px");
		jQuery("#index_cd_rightarrow_mask").hide();
		index_cd_cur = index_cd_cur + 1;
		if(index_cd_cur == 3){
			index_cd_cur = 0;
		}
		setztlistCur();
	});
	
}
function setztlistCur(){
	jQuery("#ztlist_cur span").removeClass("current");
	jQuery("#ztlist_cur span").eq(parseInt(index_cd_cur)).addClass("current");
}

var index_cd_move = "";
var index_cd_cur = 1;

jQuery(function(){


if(jQuery('#ztlist_style1_item_w').length > 0){
	index_cd_move = setInterval(function(){ztlistMoveright();},5000);
	jQuery("#index_cd_leftarrow").click(function(){
		jQuery("#index_cd_leftarrow_mask").show();
		ztlistMoveleft();
	});
	jQuery("#index_cd_rightarrow").click(function(){
		jQuery("#index_cd_rightarrow_mask").show();
		ztlistMoveright();
	});
	jQuery("#index_cd_leftarrow").mouseenter(function(){
		clearInterval(index_cd_move);
	});
	jQuery("#index_cd_leftarrow").mouseleave(function(){
		index_cd_move = setInterval(function(){ztlistMoveright();},5000);
	});
	jQuery("#index_cd_rightarrow").mouseenter(function(){
		clearInterval(index_cd_move);
	});
	jQuery("#index_cd_rightarrow").mouseleave(function(){
		index_cd_move = setInterval(function(){ztlistMoveright();},5000);
	});
	jQuery("#ztlist_style1_item_w").mouseenter(function(){
		clearInterval(index_cd_move);
	});
	jQuery("#ztlist_style1_item_w").mouseleave(function(){
		index_cd_move = setInterval(function(){ztlistMoveright();},5000);
	});
}
jQuery("#userinfo_w").hover(function(){
	jQuery(this).addClass("userinfo_w_hover");
},function(){
	jQuery(this).removeClass("userinfo_w_hover");
});
jQuery("#qd_inindex").hover(function(){
	jQuery(this).addClass("qd_hover");
	if(is_req_login_jifen == 0){
		jQuery('.qdbox').html("<p style=\"text-align:center;padding:30px 0;\">鍔犺浇涓�...</p>");
		is_req_login_jifen = 1;
		jQuery.post("/ajax/login_jifen.php", {},function(data){jQuery('.qdbox').html(data);});
	}
},function(){
	jQuery(this).removeClass("qd_hover");
});
jQuery("#main_nav li").hover(function(){
	jQuery(this).siblings().removeClass("on");
	jQuery(this).addClass("on");
},function(){
	jQuery(this).removeClass("on");
});
jQuery("#erweima_t").hover(function(){
	jQuery(this).addClass("erweima_t_hover");
	jQuery("#ewmbox").show();
},function(){
	jQuery(this).removeClass("erweima_t_hover");
	jQuery("#ewmbox").hide();
});
jQuery("#ewmbox").hover(function(){
	jQuery(this).show();
	jQuery("#erweima_t").addClass("erweima_t_hover");
},function(){
	jQuery(this).hide();
	jQuery("#erweima_t").removeClass("erweima_t_hover");
});
jQuery("#msjtop_loginbtn").bind("click",function(){
	loginreg(1);
});
jQuery("#msjtop_registerbtn").bind("click",function(){
	loginreg(0);
});
jQuery("#ztlist_style1_index li").hover(function(){
	jQuery(this).siblings().removeClass("current");
	jQuery(this).addClass("current");
},function(){});
jQuery("#index_forum_right_list li").hover(function(){
	jQuery(this).find("span").stop().slideDown();
},function(){
	jQuery(this).find("span").stop().slideUp();
});
jQuery(".index_sc_dd").hover(function(){
	jQuery(this).siblings().removeClass("index_sc_dd_current");
	jQuery(this).addClass("index_sc_dd_current");
},function(){});
jQuery("#sccon_right").mouseenter(function(){
	jQuery(this).find(".scc_masker").fadeOut();
	jQuery(this).prev().find(".scc_masker").fadeIn();
	jQuery(this).stop().animate({width:"718px"},600,function(){});
});
jQuery("#sccon_left").mouseenter(function(){
	jQuery(this).next().stop().animate({width:"232px"},600,function(){});
	jQuery(this).next().find(".scc_masker").fadeIn();
	jQuery(this).find(".scc_masker").fadeOut();
});
jQuery(".index_healthitem li").hover(function(){
	jQuery(this).siblings().removeClass("current");
	jQuery(this).addClass("current");
},function(){
});
jQuery("#index_zzw_main").mouseenter(function(){
	jQuery("#zzw_prev_btn").trigger("mouseenter");
	jQuery("#zzw_next_btn").trigger("mouseenter");
	jQuery("#timedot_c").show();
});
jQuery("#index_zzw_main").mouseleave(function(){
	jQuery("#zzw_prev_btn").trigger("mouseleave");
	jQuery("#zzw_next_btn").trigger("mouseleave");
	jQuery("#timedot_c").hide();
});
jQuery("#maskleft").mouseenter(function(){
	jQuery("#zzw_prev_btn").trigger("mouseenter");
	jQuery("#zzw_next_btn").trigger("mouseenter");
	jQuery("#timedot_c").show();
});
jQuery("#maskleft").mouseleave(function(){
	jQuery("#zzw_prev_btn").trigger("mouseleave");
	jQuery("#zzw_next_btn").trigger("mouseleave");
	jQuery("#timedot_c").hide();
});
jQuery("#maskright").mouseenter(function(){
	jQuery("#zzw_prev_btn").trigger("mouseenter");
	jQuery("#zzw_next_btn").trigger("mouseenter");
	jQuery("#timedot_c").show();
});
jQuery("#maskright").mouseleave(function(){
	jQuery("#zzw_prev_btn").trigger("mouseleave");
	jQuery("#zzw_next_btn").trigger("mouseleave");
	jQuery("#timedot_c").hide();
});
jQuery("#index_timelinebox").mouseleave(function(){
	jQuery("#zzw_prev_btn").trigger("mouseleave");
	jQuery("#zzw_next_btn").trigger("mouseleave");
	jQuery("#timedot_c").hide();
});
bindtimex();
jQuery("#index_zzw .prev_btn").click(function(){
	jQuery(".zzw_item_3 h3").hide();
	jQuery("#index_zzw_main").animate({left:'-990px'},"600",function(){
		
		jQuery("#index_zzw_main .zzw_item").last().prependTo(jQuery("#index_zzw_main"));
		
		
		jQuery.each(jQuery("#index_zzw_main .zzw_item"),function(){
			var _this = jQuery(this);
			var po = parseInt(jQuery(this).attr("po"));
			if(po == 5){po = 0}
			jQuery(this).removeClass().addClass("zzw_item").addClass("zzw_item_"+String(po+1)).attr("po",String(po+1));
			jQuery("#zzw_prev_btn").trigger("mouseover");
			
		});
		var i = jQuery("#index_timelinebox span.timex_current");
		if(i.prev().length >0 ){
			i.removeClass("timex_current").prev().addClass("timex_current");
		}else{
			i.removeClass("timex_current");
			jQuery("#index_timelinebox span.timex").last().addClass("timex_current");
		}
		bindtimex();
		jQuery("#index_zzw_main").mouseenter();
		jQuery(".zzw_item h3").hide();
		jQuery(".zzw_item_3 h3").fadeIn();
		jQuery("#index_zzw_main").css("left","-1980px");
		
	});
});
jQuery("#index_zzw .next_btn").click(function(){
	jQuery(".zzw_item_3 h3").hide();
	jQuery("#index_zzw_main").animate({left:'-2970px'},"600",function(){
		
		jQuery("#index_zzw_main .zzw_item").first().appendTo(jQuery("#index_zzw_main"));
		
		
		jQuery.each(jQuery("#index_zzw_main .zzw_item"),function(){
			var _this = jQuery(this);
			var po = parseInt(jQuery(this).attr("po"));
			if(po == 1){po = 6}
			jQuery(this).removeClass().addClass("zzw_item").addClass("zzw_item_"+String(po-1)).attr("po",String(po-1));
			jQuery("#zzw_next_btn").trigger("mouseover");
		});
		var i = jQuery("#index_timelinebox span.timex_current");
		if(i.next().length >0 ){
			i.removeClass("timex_current").next().addClass("timex_current");
		}else{
			i.removeClass("timex_current");
			jQuery("#index_timelinebox span.timex").first().addClass("timex_current");
		}
		bindtimex();
		jQuery("#index_zzw_main").mouseenter();
		jQuery(".zzw_item h3").hide();
		jQuery(".zzw_item_3 h3").fadeIn();
		jQuery("#index_zzw_main").css("left","-1980px");
		
	});
});
jQuery("#zzw_prev_btn").hover(function(){
	var now = parseInt(jQuery(".zzw_item_3").attr("c"));
	if(now == 1){now = 6}
	jQuery(this).css("background-position","0px "+(6-(now-1)*74)+"px");
},function(){
	jQuery(this).css("background-position","0px 6px");
});
jQuery("#zzw_next_btn").hover(function(){
	var now = parseInt(jQuery(".zzw_item_3").attr("c"));
	if(now == 5){now = 0}
	jQuery(this).css("background-position","-174px "+(6-(now+1)*74)+"px");
},function(){
	jQuery(this).css("background-position","-174px 6px");
});
	jQuery(".followTa,.followTaed").click(function(){
		var _this = jQuery(this);
		var uid = jQuery(this).attr("uid");
		jQuery.post("/ajax/add_follow.php", { uid: uid },
			function(data){
				if(data != ''){
					var obj = eval('(' + data + ')');
					if(obj.status_code == -2){
						alert(obj.result);
					}else if(obj.status_code == -1){
						location.href = "http://i.meishi.cc/login.php?redirect=" + encodeURIComponent(location.href);
					}else if(obj.status_code == 0){
				    	_this.removeClass("followTa").addClass("followTaed");
					}else if(obj.status_code == 1){
				    	_this.removeClass("followTaed").addClass("followTa");
					}
		    	}
		});
	});
	jQuery(".addToFav").click(function(){
		var _this = jQuery(this);
		var uid = jQuery(this).attr("uid");
		jQuery.post("beAFan.php", { uid: uid },
			function(data){
		    alert("鏀惰棌鎴愬姛锛�");
		    _this.removeClass("addToFav").addClass("addToFaved");
		    _this.html("宸叉敹钘�");
		    _this.unbind();
		});
	});
	jQuery("#cp_com_mask span").click(function(){
		var _this = jQuery(this);
		_this.siblings().removeClass("current");
		_this.addClass("current");
		var type=_this.attr("type");
		jQuery("#cp_com_type").val(type);
		//alert(jQuery("#cp_com_type").val());
		var t = jQuery("#cp_com_textarea").val();
		var t_q = t.substring(0,8);
		if( t_q == "[鎻愰棶姹傝В]: " || t_q == "[闅忔剰鍚愭Ы]: "){
			t = t.substring(8,t.length);
		}

		jQuery("#cp_com_textarea").val("["+_this.html()+"]: "+t);
		jQuery("#cp_com_textarea").focus();
		moveEnd(jQuery("#cp_com_textarea").get(0));
		// jQuery("#cp_com_submit").removeClass("submit_off");
		// jQuery("#cp_com_mask").hide();
	});
	jQuery("#cp_com_textarea").keyup(function(){
		var _this = jQuery(this);
		
		//alert(_this.val());
		if(_this.val() == ""){
			jQuery("#cp_com_mask span").removeClass("current");
			jQuery("#cp_com_mask span").eq(0).addClass("current");
			var type=jQuery("#cp_com_mask span").eq(0).attr("type");
			jQuery("#cp_com_type").val(type);
			// jQuery("#cp_com_mask").show();
			// jQuery("#cp_com_submit").addClass("submit_off");
			// _this.blur();
		}
	});
	bind_re();
	
	setTimeout(function(){bind_scrollNews(".similar_cp", 1, 1, 600);},5000);
});	
function moveEnd(obj){
    obj.focus();
    var len = obj.value.length;
    if (document.selection) {
        var sel = obj.createTextRange();
        sel.moveStart('character',len);
        sel.collapse();
        sel.select();
    } else if (typeof obj.selectionStart == 'number' && typeof obj.selectionEnd == 'number') {
        obj.selectionStart = obj.selectionEnd = len;
    }
} 
function bind_re(){
	jQuery(".re_slideUp").unbind();
	jQuery(".re_slideUp").click(function(){
		var _this=jQuery(this);
		_this.parents(".info").next().slideUp(function(){
			_this.html("灞曞紑鍥炲");
			_this.removeClass("re_slideUp").addClass("re_slideDown");
			bind_re();
		});
	});
	jQuery(".re_slideDown").unbind();
	jQuery(".re_slideDown").click(function(){
		var _this=jQuery(this);
		_this.parents(".info").next().slideDown(function(){
			_this.html("鏀惰捣鍥炲");
			_this.removeClass("re_slideDown").addClass("re_slideUp");
			_this.parents(".info").next().find("textarea").focus();
			bind_re();
		});
	});
	jQuery(".re_start").unbind();
	jQuery(".re_start").click(function(){
		var _this=jQuery(this);
		_this.parents(".info").next().find("form").css("paddingTop","20px");
		_this.parents(".info").next().find("form").show();
		_this.parents(".info").next().slideDown(function(){
			_this.html("鏀惰捣");
			_this.removeClass("re_start").addClass("re_slideUp1");
			_this.parents(".info").next().find("textarea").focus();
			bind_re();
		});
	});
	jQuery(".re_slideUp1").unbind();
	jQuery(".re_slideUp1").click(function(){
		var _this=jQuery(this);
		_this.parents(".info").next().slideUp(function(){
			_this.html("鍥炲");
			_this.removeClass("re_slideUp1").addClass("re_start");
			bind_re();
		});
	});
	jQuery(".saybtn").toggle(function(){
		var _this = jQuery(this);
		_this.html("鏀惰捣");
		_this.addClass("saybtn_ed");
		_this.next().slideDown(function(){
			
			_this.next().find("textarea").focus();
		});
	},function(){
		var _this = jQuery(this);
		_this.html("鎴戜篃璇翠竴鍙�");
		_this.removeClass("saybtn_ed");
		jQuery(this).next().slideUp(function(){
			
		});
	});
}
function bind_scrollNews(obj, flag, step, time) {
    var jQuerythis = jQuery(obj);
    if (jQuerythis.length > 0) {
        var scrollTimer;
        jQuerythis.hover(function() {
            clearInterval(scrollTimer)
        },
        function() {
            scrollTimer = setInterval(function() {
                scrollNews(jQuerythis, flag, step, time)
            },
            3000)
        }).trigger("mouseleave")
    }
}
function scrollNews(obj, flag, step, time) {
    var jQueryself = obj.find(".similar_cp_w");
    var lineHeight = jQueryself.find("div:first").width()+30;
    //var w = 988+20;
    if (flag == 1) {
        jQueryself.animate({
            "marginLeft": -lineHeight + "px"
        },
        time, 
        function() {
            jQueryself.css({
                marginLeft: "-10px"
            }).find("div:first").appendTo(jQueryself)
        })
    }
}
jQuery(function(){
			var ie6 = jQuery.browser.msie && (jQuery.browser.version == "6.0") && !jQuery.support.style;
			if(jQuery("#main_search").attr("slideUp") == 1 && !ie6){
				jQuery("#main_search").hover(function(){
					jQuery(this).stop().animate({bottom:"0px",paddingTop:"0px"},300,function(){
						jQuery(this).find("input.text").focus();
					});
					jQuery("#bottom_back_top_top").stop().animate({bottom:"6px"},300,function(){});
					
				},function(){
					jQuery(this).stop().animate({bottom:"-56px",paddingTop:"9px"},300,function(){});
					jQuery("#bottom_back_top_top").animate({bottom:"20px"},300,function(){});
				});
			}
			if(jQuery("#searchslideup_btn").length > 0){
				jQuery("#searchslideup_btn").click(function(){
					if(jQuery("#main_search").attr("slideUp") == 1){
					
					jQuery(this).css("background-position","0px -0px");
					jQuery("#main_search").unbind();
					jQuery("#main_search").attr("slideUp", "0");
					setCookies('slideUp',0,720,'h','/');
					var a = getCookie("slideUp");
					}else{
			
					
					
						jQuery(this).css("background-position","0px -48px");
						jQuery("#main_search").stop().animate({bottom:"-56px",paddingTop:"9px"},300,function(){
							jQuery("#bottom_back_top_top").stop().animate({bottom:"20px"},300,function(){});
							jQuery("#main_search").hover(function(){
								jQuery(this).stop().animate({bottom:"0px",paddingTop:"0px"},300,function(){});
								jQuery("#bottom_back_top_top").stop().animate({bottom:"6px"},300,function(){});
								jQuery(this).find("input.text").focus();
							},function(){
								jQuery(this).stop().animate({bottom:"-56px",paddingTop:"9px"},300,function(){});
								jQuery("#bottom_back_top_top").animate({bottom:"20px"},300,function(){});
							});
						});
						jQuery("#main_search").attr("slideUp", "1");
						setCookies('slideUp',1,720,'h','/');
						var a = getCookie("slideUp");
					}
				});
			}
			
			var show_delay;
			var scroll_div_left = parseInt((document.body.offsetWidth - 990) / 2) +990;
		    jQuery("#bottom_back_top_top").css('left', scroll_div_left);
		    jQuery(window).resize(function() {
		        scroll_div_left = parseInt((document.body.offsetWidth - 990) / 2) +990;
		        jQuery("#bottom_back_top_top").css('left', scroll_div_left)
		    });
		    reshow(scroll_div_left, show_delay);
		    jQuery(window).scroll(function(){
				
		    	if(jQuery(window).scrollTop() > 300){jQuery("#bottom_back_top_top").fadeIn();}else{jQuery("#bottom_back_top_top").fadeOut();}
		    });
		});
		
	   
	    function reshow(marign_l, show_d) {
	        jQuery("#bottom_back_top_top").css("left", marign_l);
	        if (show_d) window.clearTimeout(show_d);
	        scroll_div_left = parseInt((document.body.offsetWidth - 990) / 2) +990;
	        show_d = setTimeout(function() {
	            reshow(scroll_div_left)
	        },
	        500)
	    }
jQuery(function(){
	jQuery("#xbyjfk").toggle(function(){
		jQuery("#doulike").animate({width:"300px"},300,function(){
		});
	},function(){
		jQuery("#doulike").animate({width:"48px"},300,function(){
		});
	});
	jQuery("#doulike .yjfkly a").click(function(){
		jQuery(this).siblings().removeClass("current");
		jQuery(this).addClass("current");
		jQuery("#likeornot").val(jQuery(this).attr("like"));
	});
	jQuery("#yjfkshut").click(function(){
		jQuery("#xbyjfk").trigger("click");
	});
});
function setCookies(name,value,time,type,path) {
var cd = [name + '=' + encodeURIComponent(value)];
if (typeof time == 'number'){
var temp = 86400000;
if(type == 'h') {
temp = 3600000;
}else if(type == 'i'){
temp = 60000;
}else if(type == 's'){
temp = 1000;
}
time = new Date((new Date()).getTime() + time * temp);
cd.push('expires=' + time.toGMTString());
}
if (path)   cd.push('path=' + path);
document.cookie = cd.join('; ');
}
function getCookie(name) {
for(var b=[],d=document.cookie.split(/; */),c=0;c<d.length;c++){
var e=d[c].split("=");
e[0] == name && b.push(decodeURIComponent(e[1]));
}
return b[0];
}
function delCookie(name) { 
	setCookies(name,'',0,'s','/');
}
function bindtimex(){
	jQuery("#index_timelinebox span.timex").unbind();
	jQuery("#index_timelinebox span.timex_current").prev().bind("mouseenter",function(){
		
		jQuery("#zzw_prev_btn").click();
	});
	jQuery("#index_timelinebox span.timex_current").next().bind("mouseenter",function(){
		
		jQuery("#zzw_next_btn").click();
	});
	// jQuery("#index_timelinebox span.timex_current").prev().bind("click",function(){
		
	// 	jQuery("#zzw_prev_btn").click();
	// });
	// jQuery("#index_timelinebox span.timex_current").next().bind("click",function(){
		
	// 	jQuery("#zzw_next_btn").click();
	// });
}
var active = -1;
var lastKeyValue = '';
var lastKeyPressCode = 0;
var default_value = jQuery("#inputString").attr('defaultval');
function lookup(inputString) {
    if (inputString.length == 0) {
        jQuery('#suggestions').hide()
    } else {
        if (inputString != lastKeyValue) {
            lastKeyValue = inputString;
            jQuery.get(jQuery("#inputString").attr('href'), {
                words: encodeURIComponent(inputString)
            },
            function(data) {
                if (data.length > 0) {
                    jQuery('#suggestions').show();
                    jQuery('#autoSuggestionsList').html(data);
                    jQuery("li", jQuery('#autoSuggestionsList')).removeClass("ac_over");
                    jQuery("#autoSuggestionsList li").hover(function() {
                        var liss = jQuery("li.ac_over", jQuery('#autoSuggestionsList'));
                        liss.find('a').css("backgroundColor", "#fff");
                        liss.find('a').css("color", "#333");
                        liss.find('a').find('span').css("color", "#2b952b");
                        jQuery("li", jQuery('#autoSuggestionsList')).removeClass("ac_over");
                        jQuery(this).addClass("ac_over");
                        jQuery(this).find('a').css("backgroundColor", "#ff3232");
                        jQuery(this).find('a').css("color", "#fff");
                        jQuery(this).find('a').find('span').css("color", "#fff");
                        for (var i = 0; i <= jQuery("li", jQuery('#autoSuggestionsList')).length; i++) {
                            if (jQuery("li", jQuery('#autoSuggestionsList'))[i] == jQuery(this)[0]) {
                                active = i
                            }
                        }
                    },
                    function() {
                        jQuery(this).removeClass("ac_over");
                        jQuery(this).find('a').css("backgroundColor", "#fff");
                        jQuery(this).find('a').css("color", "#333");
                        jQuery(this).find('a').find('span').css("color", "#2b952b")
                    });
                    active = -1
                }
            })
        } else if (jQuery('#autoSuggestionsList').html() != '') {
            jQuery('#suggestions').show()
        }
    }
}
jQuery(document).ready(function() {
    jQuery('#inputString').keyup(function(e) {
        lastKeyPressCode = e.keyCode;
        if ((lastKeyPressCode > 32 && lastKeyPressCode < 41) || (lastKeyPressCode > 8 && lastKeyPressCode < 32)) {
            return false
        } else {
            lookup(jQuery('#inputString').val())
        }
    });
    jQuery('#inputString').keydown(function(e) {
        switch (e.keyCode) {
        case 38:
            jQuery("li", jQuery('#autoSuggestionsList')).removeClass("ac_over");
            e.preventDefault();
            moveSelect( - 1);
            break;
        case 40:
            jQuery("li", jQuery('#autoSuggestionsList')).removeClass("ac_over");
            e.preventDefault();
            moveSelect(1);
            break;
        case 9:
        case 13:
            break;
        default:
            break
        }
    }).blur(function() {
        fill()
    })
});
function submit_headerfrom() {
    if (jQuery('#inputString').val() == '' || jQuery('#inputString').val() == default_value) {
        return false
    }
    var submit_from = true;
    if (active != -1) {
        var lis = jQuery("li", jQuery('#autoSuggestionsList'));
        if (lis) {
            var jump_href = jQuery(lis[active]).find("a").attr('href');
            if (jump_href != '') {
                location.href = jump_href;
                submit_from = false
            }
        }
    }
    if (submit_from == true) {
        jQuery('#suggestions_from').submit(function() {
            jQuery('#suggestions_from').submit()
        });
        jQuery('#suggestions_from').submit()
    }
}
function fill() {
    setTimeout("jQuery('#suggestions').hide();", 200)
}
function moveSelect(step) {
    var lis = jQuery("li", jQuery('#autoSuggestionsList'));
    if (!lis) return;
    active += step;
    if (active < 0) {
        active = 0
    } else if (active >= lis.size()) {
        active = lis.size() - 1
    }
    var li_val = jQuery(lis[active]).html();
    li_val = li_val.toLowerCase();
    var find1 = li_val.indexOf('</span>');
    var find2 = li_val.indexOf('</a>', find1);
    var words_val = li_val.substring(find1 + 7, find2);
    if (words_val != '') {
        jQuery('#inputString').val(words_val)
    }
    lis.find('a').css("backgroundColor", "#fff");
    lis.find('a').css("color", "#333");
    lis.find('a').find('span').css("color", "#2b952b");
    jQuery(lis[active]).addClass("ac_over");
    jQuery(lis[active]).find('a').css("backgroundColor", "#ff3232");
    jQuery(lis[active]).find('a').css("color", "#fff");
    jQuery(lis[active]).find('span').css("color", "#fff")
};
var pxarr = [" "," "," "," "," "," "," "," "];
var pxflag;
function refresh_inews(st,forward){
pxflag = 0;
if(pxarr[st] != undefined && pxarr[st] != null && pxarr[st] != " "){
	pxflag = 1;
	var data = pxarr[st];
	if(forward == 1){
		jQuery("#index_cp_rightarrow_mask").show();
		jQuery("#index_pxw").append(data);
		jQuery("#index_pxw").css("margin-left","0px");
		jQuery("#index_pxw").animate({"margin-left":"-988px"},600,function(){
			jQuery("#index_pxw .index_pxi").first().remove();
			jQuery("#index_pxw").css("margin-left","0px");
			jQuery("#index_cp_rightarrow_mask").hide();
		});
	}else if(forward==-1){
		jQuery("#index_pxw").css("margin-left","-988px");
		jQuery("#index_cp_leftarrow_mask").show();
		jQuery("#index_pxw").prepend(data);
		jQuery("#index_pxw").animate({"margin-left":"0px"},600,function(){
			jQuery("#index_pxw .index_pxi").last().remove();
			jQuery("#index_pxw").css("margin-left","0px");
			jQuery("#index_cp_leftarrow_mask").hide();
		});
	}
	jQuery('.paixu').find('.current').removeClass('current');
	jQuery('.l_n_' + st).addClass('current');
}
	if(pxflag==0){jQuery.get('/ajax/index_more_news.php?st=' + st, null,
		function(data) {
			if (data != '') {
				if(forward==1){
					jQuery("#index_cp_rightarrow_mask").show();
					jQuery("#index_pxw").append(data);
					jQuery("#index_pxw").css("margin-left","0px");
					jQuery("#index_pxw").animate({"margin-left":"-988px"},600,function(){
						jQuery("#index_pxw .index_pxi").first().remove();
						jQuery("#index_pxw").css("margin-left","0px");
						jQuery("#index_cp_rightarrow_mask").hide();
					});
				}else if(forward==-1){
					jQuery("#index_cp_leftarrow_mask").show();
					jQuery("#index_pxw").prepend(data);
					jQuery("#index_pxw").css("margin-left","-988px");
					jQuery("#index_pxw").animate({"margin-left":"0px"},600,function(){
						jQuery("#index_pxw .index_pxi").last().remove();
						jQuery("#index_pxw").css("margin-left","0px");
						jQuery("#index_cp_leftarrow_mask").hide();
					});
				}
				jQuery('.paixu').find('.current').removeClass('current');
				jQuery('.l_n_' + st).addClass('current');
				pxarr.splice(st,1,data);
			}
		})
	}
}
var paixu_i = 2;
var sti;
jQuery(function(){
	if(jQuery('#index_pxw').length > 0){
	setsti();
	setInterval(function(){pxarr = [" "," "," "," "," "," "," "," "]},10*60*1000);
	jQuery(".paixu .l_n").mouseover(function(){
		clearInterval(sti);
		var po = jQuery(this).attr("po");
		paixu_i = parseInt(po)+1;
		if(paixu_i==3){paixu_i=4}
		if(paixu_i==6){paixu_i=1}
		refresh_inews(po,1);
	});
	jQuery(".paixu .l_n").mouseout(function(){
		clearInterval(sti);
		setsti();
	});
	jQuery('#index_pxw_w').mouseenter(function(){
		clearInterval(sti);
	});
	jQuery('#index_pxw_w').mouseleave(function(){
		clearInterval(sti);
		setsti();
	});
	jQuery('#index_cp_leftarrow').mouseenter(function(){
		clearInterval(sti);
	});
	jQuery('#index_cp_leftarrow').mouseleave(function(){
		clearInterval(sti);
		setsti();
	});
	jQuery('#index_cp_rightarrow').mouseenter(function(){
		clearInterval(sti);
	});
	jQuery('#index_cp_rightarrow').mouseleave(function(){
		clearInterval(sti);
		setsti();
	});
	jQuery('#index_cp_leftarrow').click(function(){
		paixu_i--;
		if(paixu_i==0){paixu_i=5}
		if(paixu_i==3){paixu_i=2}
		refresh_inews(paixu_i,-1);
	});
	jQuery('#index_cp_rightarrow').click(function(){
		paixu_i ++;
		if(paixu_i==3){paixu_i=4}
		if(paixu_i==6){paixu_i=1}
		refresh_inews(paixu_i,1);
	});
	}
});
function setsti(){
	sti = setInterval(function(){
		refresh_inews(paixu_i,1);
		paixu_i ++;
		if(paixu_i==3){paixu_i=4}
		if(paixu_i==6){paixu_i=1}
	},5000);
}

function msjLittletips(html){
	jQuery("body").append("<div class='msjLittletips'>"+html+"</div>");
	jQuery(".msjLittletips").fadeIn();
	var _x = setTimeout(function(){
		jQuery(".msjLittletips").fadeOut(function(){
			jQuery(".msjLittletips").remove();
		});
		
	},3000);
}






<%@page contentType="text/html;charset=utf-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
%>
<!doctype html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<%--<link rel="shortcut icon" href="<%=path%>/static/assets/ico/favicon.ico">--%>
	<title>中国首届接纳承诺疗法（ACT）峰会</title>
	<link rel="stylesheet" type="text/css" href="<%=path%>/static/spkx/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/static/spkx/css/style.css" />

	<link href="<%=path%>/static/css/font-awesome.min.css" rel="stylesheet">
	<!--    <script src="js/jquery.js" type="text/javascript"></script>-->
	<script src="<%=path%>/static/spkx/js/jquery.min.js" type="text/javascript"></script>
	<script src="<%=path%>/static/spkx/js/tab.js" type="text/javascript"></script>
	<script src="<%=path%>/static/spkx/js/bootstrap.min.js"></script>
</head>

<body>
<!-- 头部模块 -->
<%@include file="/inc/headbar.jsp" %>

<div class="main">
	<h2><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/><a href="#">大会主席</a></h2>
	<div class="box_qh" id="qh01">
		<div class="qh_top">
			<ul id="tabs_head">
				<li class='menu_tab_li'><a href="#">学术委员会</a></li>
				<li class='menu_tab_li'><a href="#">组织委员会</a></li>
			</ul>
		</div>
		<div class="liebbox" id="tabs_body">
			<ul>
				<!--tab模块1-->
				<li id="s_1">
					<div class="txtbox col-sm-8 col-xs-12">
						学术委员会主席：祝卓宏 中国科学院心理研究所<br/>
						学术委员会委员：方双虎，张婍，高志青，宗焱，胡茂荣，刘健，徐守森，刘希庆，曹慧，白晓宇<br/>
						秘书长：张婍 北京联合大学师范学院
					</div>
				</li>
			</ul>
			<ul>
				<!--tab模块2-->
				<li id="s_2" style="display:none;">
					<div class="txtbox col-sm-8 col-xs-12">
						组织委员会主席：曹慧 北京教育学院<br/>
						秘书长：白晓宇 中国科学院心理研究所<br/>
						秘书组：曹静，熊朋迪，林丛
					</div>
				</li>
			</ul>
		</div>
		<div class="clear"></div>
		<script language="javascript">
            //                $("#qh01").tab(0, 'menu_tab_hover', 'mouseover');
            $('#tabs_head li').hover(function(){
                $(this).addClass('menu_tab_hover').siblings().removeClass('menu_tab_hover');
                var index = $(this).prevAll().length;
                $('#tabs_body ul li').css('display','none');
                $('#tabs_body ul li').eq(index).css('display','block');
            })
		</script>
	</div>
</div>
<%@include file="/inc/footer.jsp"%>
<script type='text/javascript' src='<%=path%>/dwr/engine.js'></script>
<script type='text/javascript' src='<%=path%>/dwr/interface/RegisterService.js'></script>
<c:if test="${not empty register}">
	<script type='text/javascript' src='<%=path%>/dwr/interface/OrderService.js'></script>
</c:if>
<script src="<%=path%>/static/spkx/js/biz.js"></script>
<script src="<%=path%>/static/js/jquery.countdown.js"></script>
<script type="text/javascript">
	$(function(){
		var hash = '${param["position"]}';
		if(hash){
			var target = $('#'+hash);
			if ($(window).width() < 768) {
				if (target.length) {
					$('html,body').animate({
						scrollTop: target.offset().top - $('.navbar-header').outerHeight(true) + 1
					}, 1000);
				}
			}
			else {
				if (target.length) {
					$('html,body').animate({
						scrollTop: target.offset().top - $('.navbar').outerHeight(true) + 1
					}, 1000);
				}
			}
		}
		//注册倒计时插件
		$('time').countDown({
			with_separators: false
		});
	});
</script>
</body>
</html>
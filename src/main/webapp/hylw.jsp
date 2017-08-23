<%@page contentType="text/html;charset=utf-8" language="java" %>
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
	<meta name="viewport"
	      content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
	<%--<link rel="shortcut icon" href="<%=path%>/static/assets/ico/favicon.ico">--%>
	<title>中国首届接纳承诺疗法（ACT）峰会</title>
	<link rel="stylesheet" type="text/css" href="<%=path%>/static/spkx/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/static/spkx/css/style.css"/>

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
	<h2><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/><a href="#">会议征文</a></h2>
	<div class="hylw row">
		<div class="col-sm-8 col-xs-12">
			<div class="left">
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本次ACT峰会欢迎参会者就会议主题撰写学术论文、应用文章，所有投稿均须为原创性文章。</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参会文章必须是未在国内外期刊杂志、会议论文、或社交媒体上公开发表的原创性文章。每篇文章（中英文均可）要求8000字以内，摘要500-800字。需用Microsoft Word文档编辑（中文：宋体五号；英文：Time New Roman字体五号；单倍行距，全文注释采用美国心理学会APA格式），并注明论文题目、3-5个关键词、作者姓名、单位、通讯地址和电子邮箱等信息。
				</p>
				<p>
					来稿请注明：作者姓名、单位、通信地址、电子邮箱和电话。
				</p>
				<p>
					投稿截止日期：2017年10月31日
				</p>
				投稿联系人：中国科学院心理研究所 白晓宇
				<p>
					投稿电子信箱：act2011@126.com
				</p>
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;投稿并被录用后，编辑部会于2017年11月15日之前邮箱发送正式录用函给作者，所有被录用的文章将被收录进《2017年中国首届接纳承诺疗法（ACT）峰会会议论文集》。
				</p>
			</div>
		</div>
		<div class="col-sm-4 col-xs-12">
			<div class="right">
				<img src="<%=path%>/static/spkx/images/pic03.png" alt=""/>
			</div>
		</div>
	</div>
</div>
<%@include file="/inc/footer.jsp"%>
<script type='text/javascript' src='<%=path%>/dwr/engine.js'></script>
<script type='text/javascript' src='<%=path%>/dwr/interface/RegisterService.js'></script>
<c:if test="${not empty register}">
	<script type='text/javascript' src='<%=path%>/dwr/interface/OrderService.js'></script>
</c:if>
<script src="<%=path%>/static/spkx/js/biz.js"></script>
<script type="text/javascript">
	$(function () {
		var hash = '${param["position"]}';
		if (hash) {
			var target = $('#' + hash);
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
	});
</script>
</body>
</html>
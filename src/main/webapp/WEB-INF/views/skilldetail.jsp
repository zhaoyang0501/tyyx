<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
       <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<!--[if IE 7 ]><html class="ie ie7" lang="en"><![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"><![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"><!--<![endif]-->
<head>

<!-- Basic Page Needs
================================================== -->
<meta charset="utf-8">
<title> - Free Theme s& Templates</title>

<!-- Mobile Specific
================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
================================================== -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/boxed.css" id="layout">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/colors/green.css" id="colors">

<!-- Java Script
================================================== -->
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/custom.js"></script>
<script src="${pageContext.request.contextPath}/js/selectnav.js"></script>
<script src="${pageContext.request.contextPath}/js/flexslider.js"></script>
<script src="${pageContext.request.contextPath}/js/twitter.js"></script>
<script src="${pageContext.request.contextPath}/js/tooltip.js"></script>
<script src="${pageContext.request.contextPath}/js/effects.js"></script>
<script src="${pageContext.request.contextPath}/js/fancybox.js"></script>
<script src="${pageContext.request.contextPath}/js/carousel.js"></script>
<script src="${pageContext.request.contextPath}/js/isotope.js"></script>

<!-- Styles Switcher
================================================== -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/switcher.css">
<script src="${pageContext.request.contextPath}/js/switcher.js"></script>

</head>
<body>

<!-- Wrapper Start -->
<div id="wrapper">
<!-- Header
================================================== -->

<!-- 960 Container -->
<div class="container ie-dropdown-fix">
	<%@include file="./head.jsp" %>
	<!-- Header / End -->
</div>
<!-- 960 Container / End -->


<!-- Content
================================================== -->
<div class="container">
	<div class="fourteen columns">
		<div id="page-title">
			<h2>游戏攻略>${news.title }</h2>
			<div id="bolded-line"></div>
		</div>
	</div>
</div>

<div class="container">
<c:if test="${tip!=null }">
	<div class="sixteen columns">
		<div class="notification success  closeable" style="margin: 5px 0 25px 0;">
			<p>${tip}</p>
		</div>
	</div>
</c:if>
</div>
<div class="container">
	<div class="sixteen  columns">
			<div class="post">
				<div class="clear"></div>
				<a href="#" class="post-icon video"></a>
				<div class="post-content">
					<div class="post-title"><h2><a href="/news/${news.id}">${news.title }</a></h2></div>
					<div class="post-meta"><span><i class="mini-ico-calendar"></i>${news.createDate }</span> <span><i class="mini-ico-user"></i>By <a href="#">${news.creater }</a></span> <span><i class="mini-ico-comment"></i></span></div>
					<div class="post-description">
						<p>${news.context }</p>
					</div>
				</div>
			</div>
	</div>
	<!-- End Portfolio Content -->
</div>
</div>
	<%@include file="./foot.jsp" %>



</body>
</html>
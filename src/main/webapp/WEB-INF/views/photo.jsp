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
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/boxed.css" id="layout">
<link rel="stylesheet" type="text/css" href="css/colors/green.css" id="colors">

<!-- Java Script
================================================== -->
<script src="js/jquery.min.js"></script>
<script src="js/custom.js"></script>
<script src="js/selectnav.js"></script>
<script src="js/flexslider.js"></script>
<script src="js/twitter.js"></script>
<script src="js/tooltip.js"></script>
<script src="js/effects.js"></script>
<script src="js/fancybox.js"></script>
<script src="js/carousel.js"></script>
<script src="js/isotope.js"></script>

<!-- Styles Switcher
================================================== -->
<link rel="stylesheet" type="text/css" href="css/switcher.css">
<script src="js/switcher.js"></script>

</head>
<body>

<!-- Wrapper Start -->
<div id="wrapper">


<!-- Header
================================================== -->

<!-- 960 Container -->
<div class="container ie-dropdown-fix">

	<!-- Header -->
	<%@include file="./head.jsp" %>
	<!-- Header / End -->
	
	

</div>
<!-- 960 Container / End -->


<!-- Content
================================================== -->
<div class="container">

	<div class="fourteen columns">
		<div id="page-title">
			<h2>游戏截图</h2>
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
	<!-- Portfolio Content -->
	<div>
	<c:forEach items="${photos }" var="bean">
		<div class="four columns ">
			<div class="picture"><a href="${pageContext.request.contextPath}/fileupload/${bean.filePath }" rel="image" title="Maritime Details"><img src="${pageContext.request.contextPath}/fileupload//${bean.filePath }" alt=""><div class="image-overlay-zoom" style="opacity: 0; display: block;"></div></a></div>
			<div class="item-description alt">
				<p>${bean.name }</p>
				<p>上传于${bean.createDate }</p>
				
			</div>
		</div>
	</c:forEach>
	</div>
	<!-- End Portfolio Content -->
		
</div>


</div>
<!-- Wrapper / End -->
	<%@include file="./foot.jsp" %>

</body>
</html>
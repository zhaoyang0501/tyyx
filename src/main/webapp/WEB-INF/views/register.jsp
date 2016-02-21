<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<%@include file="./head.jsp" %>
</div>
<!-- 960 Container / End -->


<!-- Content
================================================== -->
<div class="container">
	<div class="sixteen columns">
		<div id="page-title">
			<h2>注册</h2>
			<div id="bolded-line"></div>
		</div>

	</div>
</div>

<div class="container">
	<!-- Contact Form -->
	<div class="sixteen columns " >
		<!-- Form -->
		<div id="contact-form">
			<form method="post" action="${pageContext.request.contextPath}/register">
				 			<div class="field">
							  <label>用户名</label>
							  <input type="text"  name='username'  class="text">
						   </div>
						   <div class="field">
							  <label>密码</label>
							  <input type="password" name='password'  placeholder="密码" class="text">
						   </div>
						     <div class="field">
							  <label>姓名</label>
							  <input type="text" name='name'  placeholder="姓名" class="text">
						   </div>
						   
						   <div class="field">
							  <label>电子邮件</label>
							  <input type="email"  name='email' placeholder="电子邮件" class="text">
						   </div>
						   
						 
						   <div class="field">
							  <label>电话</label>
							  <input type="text" name='tel' placeholder="电话" class="text">
						   </div>
						   
						   <div class="field">
							  <label>学校/单位</label>
							  <input type="text"  name='grade'  placeholder="学校单位"  class="text">
						   </div>
						  <div class="field">
								<input type="submit" class='button color medium' value="注册">
						</div> 
			</form>
		</div>
</div>
</div>


</div>
<!-- Wrapper / End -->

	<%@include file="./foot.jsp" %>

</body>
</html>
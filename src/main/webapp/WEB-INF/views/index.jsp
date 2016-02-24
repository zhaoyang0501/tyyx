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
<%@include file="./head.jsp" %>
</div>
<!-- 960 Container / End -->
<div class="container">
<!-- Content
================================================== -->

	<!-- Flexslider -->
	<div class="sixteen columns">
		<section class="slider">
			<div class="flexslider home">
				<ul class="slides">
				
					<li>
						<img src="images/web/1.jpg" alt="" />
						<div class="slide-caption">
							<h3>超值1288新手大礼</h3>
							<p>角色在游戏中每达到一定等级，就能获得大量升级奖励，包括云垂积分、超值消耗品和该等级段的特殊奖励！成长礼包伴你前行，让你升级一路无忧！</p>
						
						</div>
					</li>
					
					<li>
						<img src="images/web/2.jpg" alt="" />
					</li>
					<li>
						<img src="images/web/3.jpg" alt="" />
					</li>
					<li>
						<img src="images/web/4.jpg" alt="" />
						<div class="slide-caption">
							<h3>天谕玉虚</h3>
							<p>：远程法术输出，对大片的敌人造成伤害和限制。但生命较为脆弱，容易被集火击</p>
						</div>
					</li>
					
				</ul>
			</div>
		</section>
  	</div>

<div class="container">

	<!-- Icon Boxes -->
	<div class="icon-box-container">

		<!-- Icon Box Start -->
		<div class="one-third column">
			<div class="icon-box">
				<i class="ico-display" style="margin-left: -10px;"></i>
				<h3>下载安装</h3>
				<p>我们有以下下载渠道：极速下载、HTTP下载。谕霸们可以根据自己的网络情况来选择下载渠道</p>
			</div>
		</div>
		<!-- Icon Box End -->
		
		<!-- Icon Box Start -->
		<div class="one-third column">
			<div class="icon-box">
				<i class="ico-cogwheel"></i>
				<h3>天谕充值规则</h3>
				<p>天币为《天谕》游戏内部使用的消费代币，1人民币=10天币。在《天谕》游戏内商城可以使用天币购买相关游戏道具。</p>
			</div>
		</div>
		<!-- Icon Box End -->
		
		<!-- Icon Box Start -->
		<div class="one-third column">
			<div class="icon-box">
				<i class="ico-iphone"></i>
				<h3>注册帐号</h3>
				<p>进入《天谕》官网后，左侧设置了快速帐号注册栏，用邮箱或手机号快速注册，只需要简单几步就能完成账号注册哦！</p>
			</div>
		</div>
		<!-- Icon Box End -->
		
	</div>
	<!-- Icon Boxes / End -->
	
</div>
 </div>
</div>
<!-- Wrapper / End -->

	<%@include file="./foot.jsp" %>

</body>
</html>
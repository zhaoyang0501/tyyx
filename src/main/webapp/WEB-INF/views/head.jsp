<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="header">
		<!-- Logo -->
		<div class="sixteen columns">
			<div id="logo">
				<a href="#"><img src="${pageContext.request.contextPath}/images/logo1.jpg" alt="logo"  style="height: 114px" /></a>
				<div id="tagline">快加入我们吧！</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<div class="sixteen columns">
		<div id="navigation">
			<ul id="nav">
				<li><a href="${pageContext.request.contextPath}grades">首页</a></li>
				<li><a href="${pageContext.request.contextPath}/news">最新资讯</a></li>
				<li><a href="${pageContext.request.contextPath}/game">游戏资料</a></li>
				<li><a href="${pageContext.request.contextPath}/notice">攻略技巧</a></li>
				<li><a href="${pageContext.request.contextPath}/notice">玩家截图</a></li>
				<li><a href="${pageContext.request.contextPath}/register">注册</a></li>
				<li><a href="${pageContext.request.contextPath}、center">个人中心</a></li>
				<li style="float: right">${user.name }  <a href="${pageContext.request.contextPath}/loginout">退出</a></li>
			</ul>
		</div> 
		<div class="clear"></div>
	</div>
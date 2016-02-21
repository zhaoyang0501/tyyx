<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="leftbar leftbar-close clearfix">
	<div class="admin-info clearfix">
		<div class="admin-thumb">
			<i class="icon-user"></i>
		</div>
		<div class="admin-meta">
			<ul>
				<li class="admin-username" style="margin-top: 10px;">欢迎你 ${sessionScope.adminuser.name}</li>
				<li><a href="${pageContext.request.contextPath}/admin/loginout">
				<i class="icon-lock"></i> 退出</a></li>
			</ul>
		</div>
	</div>

	<div class="left-nav clearfix">
		<div class="left-primary-nav">
			<ul id="myTab">
				<li  class="active"><a href="#dailyreport" class="icon-calendar" data-original-title="订单"></a></li>
			</ul>
		</div>
		<div class="responsive-leftbar">
			<i class="icon-list"></i>
		</div>
		<div class="left-secondary-nav tab-content" >
			<div class="tab-pane active dailyreport" id="dailyreport">
				<ul id="nav" class="accordion-nav" >
				<c:if test="${sessionScope.adminuser.username=='admin'}">
				
					<li><a href="${pageContext.request.contextPath}/admin/user/index"><i class="icon-pencil"></i>用户管理</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/news/index"><i class="icon-pencil"></i>最新资讯管理</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/article/index"><i class="icon-pencil"></i>游戏资料管理</a></li>	
					
					<li><a href="${pageContext.request.contextPath}/admin/article/create"><i class="icon-pencil"></i>攻略技巧管理</a></li>	
				
					<li><a href="${pageContext.request.contextPath}/admin/news/create"><i class="icon-pencil"></i>玩家截图管理</a></li>	
					
					<li><a href="${pageContext.request.contextPath}/admin/news/create"><i class="icon-pencil"></i>最新资讯发布</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/article/index"><i class="icon-pencil"></i>游戏资料发布</a></li>	
					
					<li><a href="${pageContext.request.contextPath}/admin/article/create"><i class="icon-pencil"></i>攻略技巧发布</a></li>	
				
					<li><a href="${pageContext.request.contextPath}/admin/news/create"><i class="icon-pencil"></i>玩家截图发布</a></li>	
					
					<li><a href="${pageContext.request.contextPath}/admin/articleview/index"><i class="icon-pencil"></i>评论管理</a></li>	
				
					</c:if>
					
				</ul>
			</div>
		</div>
	</div>
</div>
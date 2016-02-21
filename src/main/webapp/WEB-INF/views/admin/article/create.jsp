<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ch">
<%@ include file="../common/meta.jsp"%>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/ace/admin.item.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/falgun/bootbox.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/falgun/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/falgun/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(".date").datetimepicker({
			language:  'zh-CN',
	        weekStart: 1,
	        todayBtn:  1,
	        format:'yyyy-mm-dd',
			autoclose: 1,
			todayHighlight: 1,
			startView: 2,
			minView: 2,
			forceParse: 0
	    });
		if("${tip}" != null && "${tip}" != ""){
			noty({"text":"${tip}","layout":"top","type":"success","timeout":"2000"});
		}
	});
</script>
</head>
	
	<script type="text/javascript">
		$(function() {
		});
	</script>
</head>
<body>
	<div class="layout">
		<!-- top -->
		<%@ include file="../top.jsp"%>
		<!-- 导航 -->
		<%@ include file="../menu.jsp"%>
		<div class="main-wrapper">
			<div class="container-fluid">
				<div class="row-fluid ">
					<div class="span12">
						<div class="content-widgets ">
						<div class="widget-head  bondi-blue">
							<h3>填写文献发布表</h3>
						</div>
						<div class="widget-container">
							<form class="form-horizontal" method="POST" enctype ="multipart/form-data" action="${pageContext.request.contextPath}/admin/article/create">
								<table id='' class=" responsive table table-striped table_bordered_black table-condensed formtable" >
									<tr>
										<td colspan="4">
											<div class="table_title">
												 <h3>文献发布表</h3> 
											</div>
										</td>
									</tr>
									<tr>
										<td class='lable'>标题</td>
										<td class='lable' colspan="3"><input type="text" value="" name='title' style="width: 98%"></input></td>
									</tr>
									<tr>
										<td class='lable'>所属类别</td>
										<td class='lable' colspan="3">
											<div>
											<c:forEach items="${category }" var="bean">
											<label class="radio inline">
													  <input  type="radio" name='category.id' value="${bean.id }">${bean.name }
												</label>
											</c:forEach>
											</div>
										</td>
									</tr>
									<tr>
										<td class='lable'>关键字</td>
										<td class='lable' colspan="3"><input type="text" value="" name='keyword' style="width: 98%"></input></td>
									</tr>
									
									<tr>
										<td class='lable'>文献摘要：<span class="text-error">*</span></td>
										<td colspan="3" ><textarea  name='summary' style="width: 90%" rows="2" cols=""></textarea> </td>
									</tr>
									
									<tr>
										<td class='lable'>文件：<span class="text-error">*</span></td>
										<td colspan="3" >
											<input type="file" value="" name='file' style="width: 98%"></input>
										 </td>
									</tr>
									<tr  class='remark'>
										<td colspan="4">
											<ol>
											  <li>请如实填写资料</li>
											  <li>所有信息可能会被核查</li>
											</ol>
										</td>
									</tr>
								</table>
								<div >
									<button type="submit" class="btn btn-primary" >提交</button>
								</div>
							</form>
						</div>
					</div>
					
					</div>
				</div>
			</div>
		</div>
		<%@ include file="../foot.jsp"%>
	</div>
</body>
</html>
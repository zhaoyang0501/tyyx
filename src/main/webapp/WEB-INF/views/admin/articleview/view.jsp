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
<script src="http://pdfobject.com/scripts/pdfobject.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var success = new PDFObject({ url: "${pageContext.request.contextPath}/upload/${bean.url}" }).embed("pdf");
		
		
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
							<h3>填写文献发布1表</h3>
						</div>
						<div class="widget-container">
							<form class="form-horizontal" method="POST" enctype ="multipart/form-data" action="${pageContext.request.contextPath}/admin/article/create">
								<table id='' class=" responsive table table-striped table_bordered_black table-condensed formtable" >
									<tr>
										<td colspan="4">
											<div class="table_title">
												 <h3>文献查看</h3> 
											</div>
										</td>
									</tr>
									<tr>
										<td class='lable'>标题</td>
										<td class='lable' colspan="3"><span> ${bean.title }</span></td>
									</tr>
									<tr>
										<td class='lable'>所属类别</td>
										<td class='lable' colspan="3">
											<span> ${bean.category.name }</span>
										</td>
									</tr>
									<tr>
										<td class='lable'>关键字</td>
										<td class='lable' colspan="3">
										<span> ${bean.keyword}</span>
										</td>
									</tr>
									
									<tr>
										<td class='lable'>文献摘要：</td>
										<td colspan="3" ><textarea  name='summary' style="width: 90%" rows="2" cols="">
										 ${bean.summary}
										</textarea> </td>
									</tr>
								</table>
							</form>
							<div id="pdf" style="height: 900px"> <a href="">Click here to download the PDF</a></div>
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
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Smart - UI Elements</title>

		<!-- Bootstrap -->
		<link href="css/bootstrap.css" rel="stylesheet">
		<link href="css/font-awesome.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>
	<body>
	<div class="container">			
		<header>
			<h2>文献系统注册
			</h2>	
		</header> 
	</div>
		
			
	<div class="content">
		<div class="container">
		<div class="row">
		<div class="col-sm-2"></div>
					<div class="col-sm-8">
						<div class="panel panel-info">
						 <div class="panel-heading">注册用户</div>
						 <div class="panel-body">
						<form role="form" method="post" action="doregister">
						
						 <div class="form-group">
							  <label>用户名</label>
							  <input type="input"  name='username' placeholder="用户名" class="form-control">
						   </div>
						   <div class="form-group">
							  <label>密码</label>
							  <input type="password" name='password'  placeholder="密码" class="form-control">
						   </div>
						     <div class="form-group">
							  <label>姓名</label>
							  <input type="input" name='name'  placeholder="姓名" class="form-control">
						   </div>
						   
						   <div class="form-group">
							  <label>电子邮件</label>
							  <input type="email"  name='email' placeholder="电子邮件" class="form-control">
						   </div>
						   
						 
						   <div class="form-group">
							  <label>电话</label>
							  <input type="input" name='tel' placeholder="电话" class="form-control">
						   </div>
						     <div class="form-group">
							  <label>学校/单位</label>
							  <input type="input"  name='grade'  placeholder="学校/单位" class="form-control">
						   </div>
						   <button type="submit" class="btn btn-block btn-lg btn-info">提交</button>
						</form>
						 </div>
						</div>
					</div>
					<div class="col-sm-2"></div>
				</div>
		</div>	
	</div>
		
		<!-- Footer -->
		<footer class="footer">
			<div class="row">
				<div class="twelve col">
					 <p class="text-muted text-center">Copyright © 2015 XX单位 <a href="http://www.miibeian.gov.cn/">京ICP备15062073号-1</a></p>
		
				</div>
			</div>
		</footer>
		
		
		

		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="js/jquery-1.11.1.js"></script>
		<script src="js/bootstrap.js"></script>
		<script src="js/jquery.slimscroll.js"></script>
		<script src="js/gmaps.js"></script>
		<script src="js/main.js"></script>
	
	
	</body>
</html>
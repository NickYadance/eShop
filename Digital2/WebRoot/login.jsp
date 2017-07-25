<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container-fluid">
		<div class="panel panel-success">
			<div class="panel-heading" style="margin-top: 2%;">
				<h4 class="text-center">我的电子商城</h4>
			</div>
			<div class="panel-body">
				<div class="container" style="margin-top: 10%; margin-bottom: 10%;">
					<div class="panel panel-success center-block" style="max-width: 35%;">
						<div class="panel-heading form-group">
							<h5 class="text-center">用户登录</h5>
						</div>
						<div class="text-center" style="margin-bottom: 10px; margin-top: 10px">
						<strong>${message}</strong>
						</div>
						<div class="panel-body">
							<form action="login.action" method="post">
								<div class="form-group">
									<label for="exampleInputEmail1">User Name</label> 
                                    <input type="text" class="form-control" name="userName"
										id="txtUserName" placeholder="Enter User Name"
										required="required">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Password</label> 
                                    <input type="password" class="form-control" name="password"
										id="txtPass" placeholder="Password" required>
								</div>
								<button type="submit" style="width: 100%; font-size:1.1em;"
									class="btn btn-large btn btn-success btn-lg btn-block">
									<b>Login</b>
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="panel-footer">
				Copyright @2014 <a href="http://mysite.com/">mysite.com</a>, All
				Rights Reserved.
			</div>
		</div>
	</div>
	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>

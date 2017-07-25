<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户信息</title>
<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"></link>
</head>
<body>
	<div class="container-fluid">
    	<div class="panel panel-success">
        	<div class="panel-heading" style="margin-top: 2%;">
				<h4 class="text-center">我的电子商城</h4>
			</div>
            <div class="panel-body">
            	<div class="container" style="margin-top:10%; margin-bottom:10%">
                	<div class="panel panel-success center-block" style="max-width:35%">
                    	<div class="panel-heading">
                        <h5 class="text-center">个人信息</h5>
                        </div>
                        <div class="panel-body">
                        	<div class="row">
                            	<div class="col-md-3">
                            	<h5>用户名:</h5>
                            	</div>
                            	<div class="col-md-3">
                            	<h5>${session.CURRENT_USER}</h5>
                            	</div>
                            </div>
                            <div class="row">
                            	<div class="col-md-3">
                            	<h5>真实姓名:</h5>
                            	</div>
                            	<div class="col-md-3">
                            	<h5>${session.CURRENT_REALNAME}</h5>
                            	</div>
                            </div>
                            <div class="row">
                            	<div class="col-md-3">
                            	<h5>性别:</h5>
                            	</div>
                            	<div class="col-md-3">
                            	<h5>${session.CURRENT_SEX}</h5>
                            	</div>
                            </div>
                            <div class="row">
                            	<div class="col-md-3">
                            	<h5>通信地址:</h5>
                            	</div>
                            	<div class="col-md-3">
                            	<h5>${session.CURRENT_ADDRESS}</h5>
                            	</div>
                            </div>
                            <div class="row">
                            	<div class="col-md-3">
                            	<h5>电子邮件:</h5>
                            	</div>
                            	<div class="col-md-3">
                            	<h5>${session.CURRENT_EMAIL}</h5>
                            	</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-footer">
				Copyright @2017 <a href="nickyadance.com">NickYadance.com</a>, All
				Rights Reserved.
			</div>
        </div>
    </div>
</body>
</html>
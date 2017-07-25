<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri = "/struts-dojo-tags" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><s:text name="pagename"></s:text></title>
<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script src="bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>

</head>
<body>
	<div class="container-fluid">
		<div class="panel panel-success">
			<div class="panel-heading" style="margin-top: 2%;">
				<h4 class="text-center"><s:text name="pagetitle"/></h4>
			</div>
			<div class="panel-body">
				<div class="container" style="margin-top: 10%; margin-bottom: 10%;">
					<div class="panel panel-success center-block" style="max-width: 35%;">
						<div class="panel-heading form-group">
							<h5 class="text-center"><s:text name="pagename"></s:text></h5>
							<small class="text-right" style="display:block"><s:text name="info" /></small>
						</div>
						<div class="panel-body">
							<s:form action="register" method="post">
								<sx:div cssClass="form-group">
									<label for="txtUserName">*<s:text name="username"></s:text> </label> 
                                    <s:textfield type="text" class="form-control" name="user.usernameString"
										id="txtUserName" placeholder="Enter User Name"
										required="required" />
								</sx:div>
								<s:fielderror fieldName="user.usernameString"><strong></strong></s:fielderror>
								
								<div class="form-group">
									<label for="txtPass">*<s:text name="password" /></label> 
                                    <s:textfield type="password" class="form-control" name="user.passwordString"
										id="txtPass" placeholder="Password" required="required" />
								</div>
								<s:fielderror fieldName="user.passwordString"><strong></strong></s:fielderror>
								
                                <div class="form-group">
									<label for="txtRePass">*<s:text name="repassword" /></label> 
                                    <s:textfield type="password" class="form-control" name="repasswordString"
										id="txtRePass" placeholder="Enter password again"
										required="required" />
								</div>
								<s:fielderror fieldName="repasswordString"><strong></strong></s:fielderror>	
														
                                <div class="form-group">
									<label for="email">*<s:text name="email"></s:text></label> 
                                    <s:textfield type="text" class="form-control" name="user.emailString"
										id="email" placeholder="Enter email"
										required="required" />
								</div>
								<s:fielderror fieldName="user.emailString"><strong></strong></s:fielderror>
								
                                <div class="form-group">
									<label for="txtRealName">*<s:text name="realname"></s:text></label> 
                                    <input type="text" class="form-control" name="user.realnameString"
										id="txtRealName" placeholder="Enter Real Name"
										required="required" />
								</div>
								
                                <div class="form-group">
									<label for="txtSex">*<s:text name="sex" /></label> 
                                    <input type="text" class="form-control" name="user.sexString"
										id="txtSex" placeholder="Male or Female"
										required="required" />
								</div>
								
                                <div class="form-group">
									<label for="txtAddr">*<s:text name="address"></s:text></label> 
                                    <input type="text" class="form-control" name="user.addressString"
										id="txtAddr" placeholder="Enter Address"
										required="required" />
								</div>
								
                                <div class="form-group">
									<label for="txtQues"><s:text name="question" /></label> 
                                    <input type="text" class="form-control" name="user.questionString"
										id="txtQues" placeholder="Choose your question" />
								</div>
								
                                <div class="form-group">
									<label for="txtAnswer"><s:text name="answer" /></label> 
                                    <input type="text" class="form-control" name="user.answerString"
										id="txtAnswer" placeholder="Enter the answer"/>
								</div>
								
								<button type="submit" style="width: 100%; font-size:1.1em;"
									class="btn btn-large btn btn-success btn-lg btn-block">
									<b><s:text name="submit"></s:text></b>
								</button>
							</s:form>
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
</body>
</html>

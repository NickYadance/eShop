<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri = "/struts-dojo-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"></link>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script src="bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>

<title>Index</title>
<sx:head />
</head>
<body>
<div class="container" style="margin-top:30px">
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">My eShop</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.jsp">Home</a></li>
      <li><a href="#">商品分类</a></li>
      <li><a href="#">Page 2</a></li>
    </ul>
	<ul class="nav navbar-nav navbar-right">
        <%
        if (session != null	&& session.getAttribute("CURRENT_USER") != null){
        %>
        <li><a href = 'userinfo.jsp'>
        <span class="glyphicon glyphicon-user"> ${session.CURRENT_USER}</span></a></li>
        <li><a href = 'logout'>
        <span class="glyphicon glyphicon-log-out"> 退出登录</span></a></li>
        <button class="btn btn-danger navbar-btn" style="margin-right:5px">
			<sx:div id="tsdiv" updateFreq="1000" href="getime">
	        	<span>${CURRENT_USEDTIME}</span>
			</sx:div>
		</button>
        <%} else {
        %>
        <li><a href = 'login.jsp'>
        <span class="glyphicon glyphicon-log-in"> 登录</span></a></li>
        <li><a href = 'signup.jsp'>
        <span class = "glyphicon glyphicon-user"> 注册</span></a></li>
        <% } 
        %>
  	</ul>
  </div>
  </nav>
  <div class = "container">
  <ul class="list-group">
    <s:iterator var ="typeItem" value="#request.typelist">
    	<li class="list-group-item list-group-item-info">${typeItem.nameString}</li>
	</s:iterator>
  </ul>  
  </div>
</div>
</body>
</html>
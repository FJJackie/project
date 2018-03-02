<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>深恋网，您的幸福港湾</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="style.css" rel='stylesheet' type='text/css' />
  </head>
  <%	 
    String tip = session.getAttribute("tip").toString();
  %>
  <body>
  	<div class="main">
  	<div class="login">
    <h1>温馨提示</h1>
    <div class="inset">
    	<h><%=tip%></h>	
		<div class="sign">
		<div class="button">
			<input class="button" type ="button" value="返回" onclick="javascript:history.back();">
		</div>
		</div>
		<div class="sign">
		<div class="button">
			<input class="button" type ="button" value="返回首页" onclick="javascrtpt:window.location.href='index.jsp'">
		</div>
		</div>			
</div>
    </div>
    </div>
    
    
  </body>
</html>

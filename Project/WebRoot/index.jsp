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
  <body>
<script>
function showError(){
	var a = document.getElementById("key").value;
	if(a.length <6){
	    document.getElementById("error").innerText="密码小于6位";
	}
	else
		document.getElementById("error").innerText="";
	}  
	function checkform(){
	var a = document.getElementById("key").value;
	if(a.length <6){
	    return false;
	}
}  
</script> 
  	<div class="main">
  	<div class="login">
    <h1>深恋网</h1>
    <h3>您的幸福港湾</h3>
    <div class="inset">
  	<form  onsubmit="return checkform();" action="Sign.jsp" method = "post">
	  	<div>
		<h2>登录</h2>
		  	<span><label>用户名:</label></span>
		  	<input type = "text" class="textbox" name="id">
		</div>
		
		<div>
		  <error id="error"></error>
		  <span><label>密码</label></span>
		  <input type = "password" id="key" class="password" name="password" onchange="showError();">
		</div>
		
		<div class="sign">
		<div class="button">
		<input class="button" type ="submit" value="登录">
		</div>
		</div>
		<div class="sign">
		<div class="button">
		<input class="button" type ="button" value="注册" onclick="javascrtpt:window.location.href='Sign.jsp'">
		</div>
		</div>
 </form>
	</div>
    </div>
    </div>
    
    
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>注册</title>
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
	function inull()
	{
		var a = document.getElementById("i").value;
		if(a==""||a==undefined){
		    document.getElementById("inullerror").innerText="写点什么呗~";
		    return false;
		}
		else
		{
			document.getElementById("inullerror").innerText="";
			return true;
		}	
	}
	function agenull()
	{
		var a = document.getElementById("age").value;
		if(isNaN(a))
		{
			document.getElementById("ageerror").innerText="输入必须为数字";
		    return false;
		}
		if(a==""||a==undefined){
		    document.getElementById("ageerror").innerText="年龄不能为空";
		    return false;
		}
		else
		{
			document.getElementById("ageerror").innerText="";
			return true;
		}	
	}
	
	function whnull()
	{
		var a = document.getElementById("weight").value;
		var b = document.getElementById("height").value;
		if(isNaN(a)||isNaN(b))
		{
		    	document.getElementById("wherror").innerText="输入必须为数字";
		    	return false;
		}
		if(a==""||a==undefined || b==""||b==undefined){
		    document.getElementById("wherror").innerText="身高、体重不能为空";
		    return false;
		}
		else
		{
			document.getElementById("wherror").innerText="";
			return true;
		}	
	}
	
	function namenull()
	{
		var a = document.getElementById("name1").value;
		if(a==""||a==undefined){
		    document.getElementById("nameerror").innerText="用户名不能为空";
		    return false;
		}
		else
		{
			document.getElementById("nameerror").innerText="";
			return true;
		}	
	}
	
	function tooshort()
	{
		var a = document.getElementById("key").value;
		if(a.length <6){
		    document.getElementById("keyerror").innerText="密码小于6位";
		    return false;
		}
		else
		{
			document.getElementById("keyerror").innerText="";
			return true;
		}	
	}
	
	function ifsame()
	{
		var a = document.getElementById("key").value;
		var b = document.getElementById("key1").value;
		if(a!=b)
		{
		    document.getElementById("keyerror2").innerText="密码不一致";
		    return false;	    
		}
		else
		{
			document.getElementById("keyerror2").innerText="";
			return true;
		}
	}   
	
	function checkform()
	{
		if(namenull()&&tooshort()&&ifsame()&&agenull()&&whnull()&&inull())
			return true;
		else
			return false;
	} 
</script> 
  	<div class="main">
  	<div class="login">
    <h1>开始注册</h1>
    <h3>寻找您的缘分</h3>
    <div class="inset">
  	<form  onsubmit="return checkform();" action="servlet/adduser" method = "post">
	  	<div>
		<h2>用户注册</h2>
		  <error id="nameerror"></error>
		  <span><label>用户名:</label></span>
		  <input type = "text" class="textbox" name="name" id="name1" onchange="namenull();">
		  
		  <error id="keyerror"></error>
		  <span><label>密码:</label></span>
		  <input type = "password" class="password" id="key" name="password" onchange="tooshort();">
		  
		  <error id="keyerror2"></error>
		  <span><label>确认密码:</label></span>
		  <input type = "password" class="password" id="key1" name="password1" onchange="ifsame();">
		  
		  <span>
		       性别:&nbsp;&nbsp;女 <input type = "radio" class="textbook" name="gender" value="fmale" checked> &nbsp;
		       男 <input type = "radio" class="textbook" name="gender" value="fmale">  &nbsp;
		       年级：
		  	<select name="grade">
 			<option value ="2014">2014</option>
 			<option value ="2015">2015</option>
  			<option value="2016">2016</option>
  			<option value="2017">2017</option>
			</select>
		  <br><br>
		      情感状况:&nbsp;&nbsp;单身<input type = "radio"  name="emotion" value="single" checked>
		     恋爱中<input type = "radio"  name="emotion" value="inlove" >
		     保密<input type = "radio"  name="emotion" value="secret" >
		  </span> 
		  <br>
		  
		  <error id="ageerror"></error>
		  <span><label>年龄:</label>
		  <input style="width:29%" type = "text"  id="age" name="age" onchange="agenull();">岁
		  </span>
		  
		  <error id="wherror"></error>
		  <span><label>身高</label>
		  <input style="width:30%" type = "text"  name="height" id="height" onchange="whnull();">
		  cm&nbsp;&nbsp;
		  
		  <label>体重</label>
		  <input style="width:30%" type = "text"  name="weight" id="weight" onchange="whnull();">
		  kg
		  </span>
		  <error id="inullerror"></error>
		  <span><label>自我介绍</label></span>
		  <input type = "text" name="introudction" id="i" onchange="inull();">
		</div>
		<div class="sign">
			<div class="button">
			<input class="button" type ="submit" value="确认注册">
			</div>
		</div>
		<div class="sign">
			<div class="button">
			<input class="button" type ="button" value="返回首页" onclick="javascrtpt:window.location.href='index.jsp'">
			</div>
		</div>
	</form>
	</div>
    </div>
    </div>
  </body>
</html>

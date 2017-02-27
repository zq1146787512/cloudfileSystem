<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>login</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
	 <script type="text/javascript" src="js/jquery.min.js"></script>
	  <script type="text/javascript" src="js/index.js"></script>
	<%-- <link href="<c:url value="/css/index.css"/>" rel="stylesheet">
		 --%>


</head>
<body>
  
  <div class="page1" style="padding-left: 50px">CloudFileSystems</div>
 
 <br style="height: 20px;">
  <div class="page2" >
  
  	<table id="denglu" >
		 <tr> 
			<td>Login</td>
		 </tr>
									
  		<tr>
  			<td width="30%" class="user1" >username：</td>
  			<td width="70%" align="center"><input type="text" class="shuru1" name="user"  /></td>
  		</tr>
  		<tr>
  			<td  width="30%" class="user1">password：</td>
  			<td width="70%" align="center"><input type="password" class="shuru2" name="pwd"  /></td>
  		</tr>
  		<tr>
  			<td align="left"><input type="reset" value="reset" /></td>
  			<td align="center"><input class="sure" type="submit" value="login"   /></td>
  		</tr>
  </table>

  	</div>
   <br>
   
  <div class="page3">
  	<a href="//www.baidu.com">my email</a>
  </div>
  

  </body>
</html>

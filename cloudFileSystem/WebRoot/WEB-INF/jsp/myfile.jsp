<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addUser.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="<c:url value="/css/myfile.css"/>" rel="stylesheet">
	

  </head>
  
  <body>
  <div class="page0">
  <div class="page1">CloudFileSystems</div>
  <br style="height: 30px;">
  <div class="page2">
  	<span><a href="user/indexui">HomePage</a></span>
  	<span><a href="">PersonalCenter</a></span>
  	<span><a href="user/filemanage?user=${user }">FileManagement</a></span>
  	<span><a href="">PublicCommunity</a></span>
  	<!-- <span><a href="">OutdoorActivities</a></span> -->
  	<span style="text-align: right;font-size: 15px; font-style: italic;">username：${user}</span>
  </div>
  <div class="page3">
  	<div class="text1">
  	    <p id="yun">cloudSystem:</p>
  		<p>&nbsp;&nbsp;&nbsp;&nbsp;云系统是采用国际首创的HFP及HDRDP技术在局域网架构下实现云计算使用效
  		果的新一代通用计算机系统产品。 云计算操作系统，又称云计算中心操作系统、云OS，
  		是云计算后台数据中心的整体管理运营系统(也有人认为云计算系统包括云终端操作系统，例如现在
  		流行的各类手机操作系统，这与现行的单机操作系统区别不大，在此不做讨论)，它是指构架于服务器、存
  		储、网络等基础硬件资源和单机操作系统、中间件、数据库等基础软件管理海量的基础硬件、软资源之上的云平台综合管理系统。</p>
  	</div>
  	<div class="text1">
  		<p id="yun">云系统:</p>
  		<p>&nbsp;&nbsp;&nbsp;&nbsp;云系统是采用国际首创的HFP及HDRDP技术在局域网架构下实现云计算使用效
  		果的新一代通用计算机系统产品。 云计算操作系统，又称云计算中心操作系统、云OS，
  		是云计算后台数据中心的整体管理运营系统(也有人认为云计算系统包括云终端操作系统，例如现在
  		流行的各类手机操作系统，这与现行的单机操作系统区别不大，在此不做讨论)，它是指构架于服务器、存
  		储、网络等基础硬件资源和单机操作系统、中间件、数据库等基础软件管理海量的基础硬件、软资源之上的云平台综合管理系统。</p>
  	</div>
  	<div class="text1">
  		<p id="yun">云系统:</p>
  		<p>&nbsp;&nbsp;&nbsp;&nbsp;云系统是采用国际首创的HFP及HDRDP技术在局域网架构下实现云计算使用效
  		果的新一代通用计算机系统产品。 云计算操作系统，又称云计算中心操作系统、云OS，
  		是云计算后台数据中心的整体管理运营系统(也有人认为云计算系统包括云终端操作系统，例如现在
  		流行的各类手机操作系统，这与现行的单机操作系统区别不大，在此不做讨论)，它是指构架于服务器、存
  		储、网络等基础硬件资源和单机操作系统、中间件、数据库等基础软件管理海量的基础硬件、软资源之上的云平台综合管理系统。</p>
  	</div>
  </div>
  <div class="page4">
  <span>tel：15800968165</span> <span>tel:1146787512@qq.com</span> <span>@copyright</span>
  	
  </div>
  </div>
  <input class="user" type="hidden" value="${user}"/>
    
    
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showUser.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
 <script type="text/javascript" src="js/sha1.js"></script>
	 <script type="text/javascript" src="js/base.js"></script>
	 <script type="text/javascript" src="js/jquery.min.js"></script>
	 <script type="text/javascript" src="js/jquery.dataTables.js"></script>
	 <link href="<c:url value="/css/jquery.dataTables.css"/>" rel="stylesheet">
	<link href="<c:url value="/css/filemanage.css"/>" rel="stylesheet">

  </head>
 
  <body>
  <table cellpadding="0" cellspacing="0" border="0" class="display" id="example">
        <thead>
            <tr>
                <th>
                    Rendering engine
                </th>
                <th>
                    Browser
                </th>
                <th>
                    Platform(s)
                </th>
                <th>
                    Engine version
                </th>
                <th>
                    CSS grade
                </th>
            </tr>
        </thead>
        <tbody>
            <tr class="odd gradeX">
                <td>
                    Trident
                </td>
                <td>
                    Internet Explorer 4.0
                </td>
                <td>
                    Win 95+
                </td>
                <td class="center">
                    4
                </td>
                <td class="center">
                    X
                </td>
            </tr>
         </tbody>
      </table>
   
   
  </body>
  <script type="text/javascript">
  	$(document).ready(function(){
	$('#example').dataTable();
});
  </script>
</html>


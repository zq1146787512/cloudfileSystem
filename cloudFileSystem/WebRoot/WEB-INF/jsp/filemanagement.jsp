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
    
    <title>filemanagement.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
	 
	 <script type="text/javascript" src="js/sha1.js"></script>
	 <script type="text/javascript" src="js/base.js"></script>
	 <script type="text/javascript" src="js/jquery.min.js"></script>
	 <script type="text/javascript" src="js/jquery.dataTables.js"></script>
	 <link href="<c:url value="/css/jquery.dataTables.css"/>" rel="stylesheet">
	<link href="<c:url value="/css/filemanage.css"/>" rel="stylesheet">
		<!-- <script type="text/javascript">
			var foldername;//从后台读取
		</script>
 -->

</head>
<script type="text/javascript">
	var users="${users}";
</script>
<body>
<div class="page0">
	<div class="page1">
		CloudFileSystems
	</div>
	
	<br style="height: 30px;">
	
	<div class="page2">
	  	<span><a href="user/indexui">HomePage</a></span>
	  	<span><a href="user/datatabletest">PersonalCenter</a></span>
	  	<span><a href="user/filemanage">username</a></span>
	  	<span><a href="user/indexui">exit</a></span>
	  	<span><a href="">ServiceCenter</a></span>
	 </div>
	 
	 <div class="page3">
	 	<div class="page31">
	 	<c:set var="users" scope="session" value="${users}"/>
	 		<div style="height: 50px; font-style:inherit; font-weight:bolder;margin-top: 30px;padding-left: 3px;">Online：<br></div>
	 		
		 		<c:forEach items="${users}" var="u">
		 		<div style="padding-top: 10px;padding-left: 3px;">
		 			<c:choose>
		 				<c:when test="${u.sex eq'0'}">
		 					<input type="image" src="image/man.jpg" width="10px" height="10px;"/>:${u.name}<br>
		 				</c:when>
		 				<c:when test="${u.sex eq'1'}">
		 					<input type="image" src="image/women.jpg" width="10px" height="10px"/>:${u.name}<br>
		 				</c:when>
		 			</c:choose>	 
		 			</div>		
		 		</c:forEach>		 	 
		</div>
		
	 	<div class="page32">
	 	<table cellpadding="0" cellspacing="0" border="0" class="display" id="example">
        <thead>
            <tr>
                <th>filename</th>
                <th>size</th>
                <th>fileType</th>
                
            </tr>
        </thead>
       <tbody id="centerfile">
             <tr class="odd gradeX">
                <td >test1</td>
                <td>101.3kb</td>
                <td>doc</td>     
             </tr>
              <tr class="odd gradeX">
                <td>test2</td>
                <td>1000.3251kb</td>
                <td>doc</td>     
             </tr>
              <tr class="odd gradeX">
                <td>test3</td>
                <td>500.6kb</td>
                <td>doc</td>     
             </tr>
         </tbody> 
      </table>
	 		
	 	</div>
	 </div>
	 
	 <div class="page4">
	 	<span>tel：15800968165</span> <span>email:1146787512@qq.com</span> <span>@copyright</span>	
	 </div>
  </div>
  
  <input class="filename" type="hidden" value="root">
  <input class="user" type="hidden" value="${user}">
  

    
  </body>
  <script type="text/javascript">
     /* 双击事件 */
  	$(".rootfile").dblclick(function(){
  		$(".root").hide();
  		$(".ss").show();
  	});
  	
  	$(".return").click(function(){
  		$(".root").show();
  		$(".ss").hide();
  	});
  </script>
  
  <script type="text/javascript">
  	$(document).ready(function(){
  	
	$('#example').dataTable({
			 "aaSorting": [ 
	                  [ 4, "desc" ] 
	                     ],
           /*  "processing" : true,  */ 
            "serverSide" : true,  
            "paginationType":"full_numbers",
             "bPaginate" : true, //是否显示（应用）分页器   
            /* "ajax" : {
            		type : "post",
		 			url : "/test1/user/datatabletest1",
		 			dataType: "json",
		 			data: {
		 				 mobile:15800968165
		 			},
            	}, */
             "aoColumns": [ 
		             	{"data" : "id"},  
		                {"data" : "filename"},  
		                {"data" : "parent"}, 
		            
             				{
             				"mDataProp" : "id",
		             		"sTitle":"filename",
		             		"sClass":"center"
		             		},
		             		
		             		{
		             		"mDataProp" : "filename",
		             		"sTitle":"size",
		             		"sClass":"center"
		             		},
		             		
		             		{
		             		"mDataProp" : "parent",
		             		"sTitle":"fileType",
		             		"sClass":"center"
		             		},
		             		
		             		
		             		],
       		 "sAjaxSource" :"user/datatabletest1",  
       		                         //服务器端，数据回调处理  
              "fnServerData" : function(sSource, aDataSet, fnCallback) {  
                                $.ajax({  
                                    "dataType" : 'json',  
                                    "type" : "post",  
                                    "url" : sSource,  
                                    "data" : aDataSet,  
                                    "success" : fnCallback,
                                    "aoColumns": [
												{ "sName": "id" },
												{ "sName": "filename" },
												{ "sName": "parent" },
												
												] , 
									data:"", //以json格式传递(struts2后台还是以string类型接受),year和month直接作为参数传递。  
							        success: function(data) { 
							        temp=eval(data);
							        /* alert(temp.id); */  
							             
							            fnCallback(data.aadata); //服务器端返回的对象的returnObject部分是要求的格式     
							        }     
                                });  
                            }  
       		 
		             		
	});
	//双击列表中的行事件
	/*  $('#example tr').dblclick( function() {$(this).toggleClass('row_selected');});  */
});
  </script>
</html>

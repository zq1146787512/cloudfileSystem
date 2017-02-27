$().ready(function(){
	
	$(".sure").click(function(){
	$.ajax({
		 type : "post",
		 url : "/test1/user/myfile1",
		 dataType: "text",
		 data: {user:$(".shuru1").val(),pwd:$(".shuru2").val()},		 
		 success : function(data){
             var user=$(".shuru1").val();
		   if("no"==data){
			   alert("用户名密码错误！");
		   }
		   else if("ok"==data){
			   window.location.href="/test1/user/myfile?user="+user;
		   }
		 }
	});	
	
	
  });
	
	
	
	
	
});
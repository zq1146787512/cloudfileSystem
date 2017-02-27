$().ready(function(){
	$(".bt").click(function(){
		$.ajax({
			 type : "post",
			 url : "test/test",
			 dataType: "json",
			 success : function(data){
				 var temp = eval(data);
				 alert("the result is:"+data.output);
				 $(".bt").val(data.output);
				 $(".bt").html("sas");
			 }
			  
	});});
	

});
$(function(){
	var TextFlag = 0;
	$("#btn2").hide();
	$(".planList").each(function(index,obj){
		$(obj).click(function(){
		console.log($(obj).find("span").html());
		$("#hiddenId").val($(obj).find("span").html());
		$("#myPlan2").html($(obj).find("div").html());
		console.log($("#hiddenId").val());
			$("#hiddenBox"+index).fadeToggle("slow",function(obj){
				console.log(TextFlag);
				if(TextFlag === 0) {
					TextFlag = 1;
					$("#btn").hide();
					$("#btn2").show();
					return;
				}
				if(TextFlag == 1) {
					TextFlag = 0;
					$("#btn2").hide();
					$("#btn").show();
					return;
				}
			});
		});
	});
});

$(function(){
	var TextFlag = 0;
	$(".planList").each(function(index,obj){
		$(obj).click(function(){
			$("#hiddenBox"+index).fadeToggle("slow",function(obj){
				console.log(TextFlag);
				if(TextFlag == 0) {
					TextFlag = 1;
					$("#btn").text("Update");
					return;
				}
				if(TextFlag == 1) {
					TextFlag = 0;
					$("#btn").text("Add Plan");
					return;
				}
			});
		});
	});
});
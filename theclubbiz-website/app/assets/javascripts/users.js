/*$(window).load(function(){

	$(".tf").focusin(function(){
		$(this).css({padding: "10px", border:"4px solid gray"});
		$(this).animate({width: "300px", height: "30px"}, 500);
	});
})*/
$(document).ready(function() {
	$(".entry").hover(function() {
		$(this).find(".img-wrapper").animate({marginLeft: "-70px"}, 100);
		$(this).find(".entry-title").animate({marginLeft: "0px"}, 100);
	}, function() {
		$(this).find(".img-wrapper").animate({marginLeft: "0px"}, 100);
		$(this).find(".entry-title").animate({marginLeft: "+70px"}, 100);
	});
});

/*
function selectTextField(id) {
	alert(id);
	var this = $("#" + id));
}

function leaveField() {
	var $this = $(".tf");
	//$this.animate({width:"300px", height:"25px"}, 500); 
}
*/

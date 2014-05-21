function checkRadio() {
	var val = $("input[name=announce_for]:checked").val();
	if (val == "university") {
		$(".soc_admin").hide();
		$(".uni_admin").show();
	} else {
		$(".uni_admin").hide();
		$(".soc_admin").show();
	}
}

$(window).load(function() {
	checkRadio();
	$("input[name=announce_for]:radio").change(function(){
		checkRadio();
	});
});
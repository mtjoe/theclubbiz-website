$(function() {
	$('.society-tab').click(function() {
		var a = "." + $(this).attr('class').split(' ')[1];
		$('.tab-pages').find(a).animate({top:"100px"}, 700);

	});

	$('.tab-page .exit').click(function() {

		$(this).parent().animate({top:"100%"}, 700);
	});
});
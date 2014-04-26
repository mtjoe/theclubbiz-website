var shown = false;
var inPageTwo = false;
$(function(){
	$('.main').onepage_scroll({
		sectionContainer: "section",
		easing: "ease",
		animationTime: 1000,
		pagination: true,
		updateURL: false,
		loop: false,
		keyboard: true,
		responsiveFallback: false
    });

    $('.open-sidebar-btn').click(function(){
		var d;
		if (shown){
			d = 0;
		} else {
			d = 180;
		}
		$(this).css({
			"transform": "rotate(" + d +"deg)",
			"-ms-transform": "rotate(" + d +"deg)",
			"-webkit-transform": "rotate(" + d +"deg)",
			"-moz-transform": "rotate(" + d + "deg)",
			"-webkit-transition-duration": "0.8s",
			"-moz-transition-duration": "0.8s",
			"-o-transition-duration": "0.8s",
			"transition-duration": "0.8s"
		});
		(shown === true) ? $('#sidebar li').hide(300) : $('#sidebar li').show(300);
		$('#sidebar').toggle("slow");
		$('#society-content').animate({
			'margin-left':shown ? '8%' : '30%',
			width: shown ? '83%' : '60%',
		}, 600);
		shown = !shown;
    });
});

function goToBrowse(){
	$('#nav-menu').hide(600);
	$('#nav-search').animate({width:'60%'}, 1000);
	$(".main").moveTo(2);
	inPageTwo = !inPageTwo;
}
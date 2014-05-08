var shown = false;
var inPageTwo = false;

var ready = function(){
    $('#grid-list').slimScroll({height: '100%'});

	// Sliding sidebar
    $('#open-sidebar-btn img').click(function(){
		var d;

		d = (shown) ? 0:180;

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

		(shown) ? ($('#sidebar li').hide(300)) : ($('#sidebar li').show(300));
		$('#sidebar').toggle("slow");
		$('#grid-content').animate({
			width: shown ? '83%' : '58%',
		}, 600);

		

		shown = !shown;

    });

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
};


function goToBrowse(){
	$('#nav-menu').hide(600);
	$('#nav-search').animate({width:'60%'}, 1000);
	$(".main").moveTo(2);
	inPageTwo = !inPageTwo;
}

$(document).ready(ready);
$(document).on('page:change', ready);
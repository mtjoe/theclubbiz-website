var shown = false;
var inPageTwo = false;

var ready = function(){
	$('.main').onepage_scroll({
		sectionContainer: "section",
		easing: "ease",
		animationTime: 1000,
		pagination: true,
		updateURL: true,
		loop: false,
		keyboard: true,
		responsiveFallback: false
    });

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

    $(".photo").click(function() {
    	var user = $(this).attr("class").split(" ")[1];
    	
    	if ($('.right-sect').find(".active").attr('class').split(' ')[1] !== user){
	 		$('.right-sect').find(".active").toggleClass("active");
	 		user = "." + user;
	 		$('.right-sect').find(user).toggleClass("active");
	 		$('.left-sect').find(".active").toggleClass("active");
	 		$('.left-sect').find(user).toggleClass("active");			
	 	}
    });

	//$("#photo-egama").click(function() {photoOnClick("egama")});
	//$("#photo-erwinf").click(function() {photoOnClick("erwinf")}));
	//$("#photo-mtjoe").click(function() {photoOnClick("mtjoe")}));
    
};

function goToBrowse(){
	$('#nav-menu').hide(600);
	$('#nav-search').animate({width:'60%'}, 1000);
	$(".main").moveTo(2);
	inPageTwo = !inPageTwo;
}


$(window).load(ready);

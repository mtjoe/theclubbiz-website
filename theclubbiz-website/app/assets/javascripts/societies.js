
$(window).load(function() {
	var tab_opened = false;
	var a;

	$(window).resize(function(){
		update_layout(tab_opened, a);
	});

	$('.society-tab').click(function() {
		
		if (tab_opened === false){
			tab_opened = true;
			a = "." + $(this).attr('class').split(' ')[1];
			$('.society-tabs').animate({top:"100px"}, 500);
			$('.tab-pages').find(a).animate({top:"200px"}, 500,
				function(){
					$('.tab-pages').find(a).animate({top:"150px"}, 300);
					$('.society-tabs').animate({
						height:"50px"
					}, 300);
					$('.society-tab').children().animate({
						lineHeight:"50px",
						fontSize:"15px"
					}, 300);
				}
			);
		} else {
			$('.tab-pages').find(a).css({"top":"100%"});
			a = "." + $(this).attr('class').split(' ')[1];
			$('.tab-pages').find(a).css({"top":"150px"});
		}


	});

	$('.tab-page .exit').click(function() {
		tab_opened = false;
		$('.society-tabs').animate({top:($(window).height() - 99).toString()}, 500);
		$(this).parent().animate({top:($(window).height() - 50).toString()}, 500,
			function() {
				$('.tab-pages').find(a).animate({top:($(window).height()+1).toString()}, 300);
				$('.society-tabs').animate({
					height:'100px'
				}, 300);
				$('.society-tab').children().animate({
					lineHeight:'100px',
					fontSize:'25px'
				}, 300);

			}
		);
	});
});

function update_layout(tab_opened, a) {
	if (tab_opened) {
		$(a).css({
			'height': ($(window).height() - 150).toString()
		});
	} else {
		$('.society-tabs').css({
			'top': ($(window).height() - 99).toString()
		});
	}
}


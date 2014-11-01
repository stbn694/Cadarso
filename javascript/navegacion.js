$(document).ready(function() {
	if($(document).scrollTop() <= 200) {
		$(".nav-bcg").css({
			"background": "transparent",
			"box-shadow": "none"
		});
		$("nav .menu > li > a").css({
			"color": "#BA3838",
			"font-weight": "bold"
		});
		$("nav img").hide();
		$("nav").css({
			"margin-right": "20px",
			"font-weight": "bold"
		});
	}

	$(document).scroll(function() {
		if($(document).scrollTop() <= 200) {
			$(".nav-bcg").css({
				"background": "transparent",
				"box-shadow": "none"
			});
			$("nav .menu > li > a").css({
				"color": "#BA3838",
				"font-weight": "bold"
			});
			$("nav .menu > li").mouseleave(function() {
				$("> a", this).css({
					"color": "#BA3838",
					"font-weight": "bold"
				});
				$(this).css({
					"border": "none"
				});
			});
			$("nav img").stop().hide();
			$("nav").css({
				"margin-right": "20px"
			});
		}
		else {
			$(".nav-bcg").css({
				"background": "linear-gradient(to top right, rgba(110,0,0,0.9) , rgba(186,56,56,0.9))",
				"box-shadow": "0 2px rgba(0, 0, 0, 0.3)"
			});
			$("nav .menu > li > a").css({
				"color": "#FFFFFF",
				"font-weight": "normal"
			});
			$("nav .menu > li")
				.mouseenter(function() {
					$("> a", this).css({
						"color": "#BA3838",
						"font-weight": "bold"
					});
				})
				.mouseleave(function() {
					$("> a", this).css({
						"color": "#FFFFFF",
						"font-weight": "normal"
					});
				});
			$("nav img").show();
			$("nav").css({
				"margin-right": "auto"
			});
		}
	});
});
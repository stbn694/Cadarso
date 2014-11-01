$(document).ready(function () {
	var visible = true;

	$("#mostrar-flecha").click(function() {
		if (visible) {
			$(".nav-bcg").animate({top: "-70px"}, 1000, function() {
				$("#mostrar").animate({left: "50%"}, 500);
			});
			$("#mostrar-flecha").css("background-image", "url('../../images/mostrar_abajo.svg')");
			$("#mostrar-help").hide().css({"top": "-100px", "left": "35px"}).text("Amosar");
		}
		else {
			$(".nav-bcg").animate({top: "0"}, 1000, function() {
				$("#mostrar").animate({left: "10px"}, 500);
			});
			$("#mostrar-flecha").css("background-image", "url('../../images/mostrar_arriba.svg')");
			$("#mostrar-help").hide().css({"top": "8px", "left": "-60px"}).text("Esconder");
		}
		visible = !visible;
	});

	$("#mostrar-flecha").hover(function() {
		$("#mostrar-help").stop(true, true);
		if (visible)
			$("#mostrar-help").show().animate({left: "35px"});
		else {
			$("#mostrar-help").show().animate({top: "8px"});	
		}
	},
	function() {
		$("#mostrar-help").stop(true, true);
		if (visible)
			$("#mostrar-help").show().animate({left: "-60px"});
		else {
			$("#mostrar-help").show().animate({top: "-100px"});
		}
	})
});
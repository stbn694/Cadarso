window.onload = function() {
	var images = [	"./images/index/fachada.JPG",
					"./images/index/fachada2.JPG",
					"./images/index/fachada4.jpg",
					"./images/index/fachada3.JPG",
					"./images/index/fachada5.jpg",
					"./images/index/fachada6.jpg",
					"./images/index/fachada7.jpg"];
	var i = 0;

    for(var j = 1; j < images.length; j++) {
    	var img = new Image();
    	img.src = images[j];
	}

	setInterval(function() {
		if ((i + 1) >= images.length) {
			i = 0;
		}
		else {
			i++;
		}
		document.getElementById("header").style.backgroundImage = "url(" + images[i] + ")";
	}, 7000);

	document.getElementById("right-arrow").onclick = function() {
		if ((i + 1) >= images.length) {
			i = 0;
		}
		else {
			i++;
		}
		document.getElementById("header").style.backgroundImage = "url(" + images[i] + ")";
	};

	document.getElementById("left-arrow").onclick = function() {
		if ((i - 1) < 0) {
			i = images.length - 1;
		}
		else {
			i--;
		}
		document.getElementById("header").style.backgroundImage = "url(" + images[i] + ")";
	};
};
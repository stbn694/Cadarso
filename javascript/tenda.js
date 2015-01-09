var cp_er = /^[0-9]{5}$/;

function checkForm(form) {
	var result = true;

	document.getElementById("err-dir").style.visibility = "hidden";
	document.getElementById("err-loc").style.visibility = "hidden";
	document.getElementById("err-cp").style.visibility = "hidden";

	if(form.direccion.value.length < 1) {
		document.getElementById("err-dir").innerHTML = "Debe proporcionar a dirección de envío";
		document.getElementById("err-dir").style.visibility = "visible";
		result = false;
	}

	if(form.localidade.value.length < 1) {
		document.getElementById("err-loc").innerHTML = "Debe proporcionar a localidade";
		document.getElementById("err-loc").style.visibility = "visible";
		result = false;
	}

	if(form.codigopostal.value.length < 1) {
		document.getElementById("err-cp").innerHTML = "Debe proporcionar o código postal";
		document.getElementById("err-cp").style.visibility = "visible";
		result = false;
	}
	else if(!cp_er.test(form.codigopostal.value)) {
		document.getElementById("err-cp").innerHTML = "Non é un código postal válido";
		document.getElementById("err-cp").style.visibility = "visible";
		result = false;
	}

	if(!result) form.direccion.focus();
	return result;
}

function checkDir(direccion) {
	document.getElementById("err-dir").style.visibility = "hidden";
}

function checkLoc(localidade) {
	document.getElementById("err-loc").style.visibility = "hidden";
}

function checkCP(codigopostal) {
	document.getElementById("err-cp").style.visibility = "hidden";
	if(cp_er.test(codigopostal.value)) {
		codigopostal.style.borderRight = "10px solid rgb(67, 161, 16)";
	}
	else {
		codigopostal.style.borderRight = "none";
	}
}
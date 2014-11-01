var nome_er = /^[^\s]{2,}(\s[^\s]{2,})*$/;
var tel_er = /^[679][0-9]{7,8}$/;
var email_er = /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;

function checkForm(form) {
	var result = true;

	document.getElementById("err-name").style.visibility = "hidden";
	document.getElementById("err-ap").style.visibility = "hidden";
	document.getElementById("err-tel").style.visibility = "hidden";
	document.getElementById("err-email").style.visibility = "hidden";

	if(form.nome.value.length < 1) {
		document.getElementById("err-name").innerHTML = "Debe proporcionar un nome";
		document.getElementById("err-name").style.visibility = "visible";
		result = false;
	}
	else if(!nome_er.test(form.nome.value)) {
		document.getElementById("err-name").innerHTML = "Non é un nome válido";
		document.getElementById("err-name").style.visibility = "visible";
		result = false;
	}

	if(form.apelidos.value.length < 1) {
		document.getElementById("err-ap").innerHTML = "Debe proporcionar os apelidos";
		document.getElementById("err-ap").style.visibility = "visible";
		result = false;
	}
	else if(!nome_er.test(form.apelidos.value)) {
		document.getElementById("err-ap").innerHTML = "Os apelidos non son válidos";
		document.getElementById("err-ap").style.visibility = "visible";
		result = false;
	}

	if(form.tel.value.length > 0 && !tel_er.test(form.tel.value)) {
		document.getElementById("err-tel").innerHTML = "O teléfono non é válido";
		document.getElementById("err-tel").style.visibility = "visible";
		result = false;
	}

	if(form.email.value.length < 1) {
		document.getElementById("err-email").innerHTML = "Debe proporcionar un correo electrónico";
		document.getElementById("err-email").style.visibility = "visible";
		result = false;
	}
	else if(!email_er.test(form.email.value)) {
		document.getElementById("err-email").innerHTML = "O correo electrónico non é válido";
		document.getElementById("err-email").style.visibility = "visible";
		result = false;
	}

	form.nome.focus();
	return result;
}

function checkName(nome) {
	document.getElementById("err-name").style.visibility = "hidden";
	if(nome_er.test(nome.value)) {
		nome.style.borderRight = "10px solid rgb(67, 161, 16)";
	}
	else {
		nome.style.borderRight = "none";
	}
}

function checkAp(ap) {
	document.getElementById("err-ap").style.visibility = "hidden";
	if(nome_er.test(ap.value)) {
		ap.style.borderRight = "10px solid rgb(67, 161, 16)";
	}
	else {
		ap.style.borderRight = "none";
	}
}

function checkTel(tel) {
	document.getElementById("err-tel").style.visibility = "hidden";
	if(tel_er.test(tel.value)) {
		tel.style.borderRight = "10px solid rgb(67, 161, 16)";
	}
	else {
		tel.style.borderRight = "none";
	}
}

function checkMail(email) {
	document.getElementById("err-email").style.visibility = "hidden";
	if(email_er.test(email.value)) {
		email.style.borderRight = "10px solid rgb(67, 161, 16)";
	}
	else {
		email.style.borderRight = "none";
	}
}
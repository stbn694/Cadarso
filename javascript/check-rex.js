var nome_er = /^[^\s]{2,}(\s[^\s]{2,})+$/;
var tel_er = /^[679][0-9]{7,8}$/;
var email_er = /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;
var strong_pass = /^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\W).*$/;
var medium_pass = /^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$/;
var normal_pass = /^.{6,}$/;

function checkForm(form) {
	var result = true;

	document.getElementById("err-name").style.visibility = "hidden";
	document.getElementById("err-tel").style.visibility = "hidden";
	document.getElementById("err-email").style.visibility = "hidden";
	document.getElementById("err-pass").style.visibility = "hidden";

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

	if(form.pass.value.length < 1) {
		document.getElementById("err-pass").innerHTML = "Debe proporcionar un contrasinal";
		document.getElementById("err-pass").style.visibility = "visible";
		result = false;
	}
	else if(!normal_pass.test(form.pass.value)) {
		document.getElementById("err-pass").innerHTML = "O contrasinal é demasiado débil";
		document.getElementById("err-pass").style.visibility = "visible";
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

function checkPass(pass) {
	document.getElementById("err-pass").style.visibility = "hidden";
	if(strong_pass.test(pass.value)) {
		pass.style.borderRight = "10px solid rgb(67, 161, 16)";
	}
	else if(medium_pass.test(pass.value)) {
		pass.style.borderRight = "10px solid rgb(212, 122, 85)";
	}
	else if(normal_pass.test(pass.value)) {
		pass.style.borderRight = "10px solid rgb(212, 19, 19)";
	}
	else if(pass.value.length > 0) {
		pass.style.borderRight = "10px solid rgb(186, 0, 0)";
	}
	else {
		pass.style.borderRight = "none";
	}
}
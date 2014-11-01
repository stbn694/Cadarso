var nome_er = /^[^\s]{2,}(\s[^\s]{2,})*$/;
var email_er = /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;
var habitacion_er = /^[1-4]0[0-9]|[1-4]1[0-7]$/;

function checkForm(form) {
	var result = true;

	document.getElementById("err-name").style.visibility = "hidden";
	document.getElementById("err-mensaxe").style.visibility = "hidden";
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

	if(document.getElementById("colexialsi").checked) {
		if(form.habitacion.value.length < 1) {
			document.getElementById("err-habitacion").innerHTML = "Debe proporcionar un número de habitación";
			document.getElementById("err-habitacion").style.visibility = "visible";
			result = false;
		}
		else if(!habitacion_er.test(form.habitacion.value)) {
			document.getElementById("err-habitacion").innerHTML = "Non é unha habitación válida";
			document.getElementById("err-habitacion").style.visibility = "visible";
			result = false;
		}
	}

	if(form.mensaxe.value.length < 1) {
		document.getElementById("err-mensaxe").innerHTML = "Debe encher o corpo da mensaxe";
		document.getElementById("err-mensaxe").style.visibility = "visible";
		result = false;
	}
	else if(form.mensaxe.value.length > 500) {
		document.getElementById("err-mensaxe").innerHTML = "A mensaxe supera os caracteres permitidos";
		document.getElementById("err-mensaxe").style.visibility = "visible";
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

function checkMail(email) {
	document.getElementById("err-email").style.visibility = "hidden";
	if(email_er.test(email.value)) {
		email.style.borderRight = "10px solid rgb(67, 161, 16)";
	}
	else {
		email.style.borderRight = "none";
	}
}

function checkHabitacion(habitacion) {
	document.getElementById("err-habitacion").style.visibility = "hidden";
	if(habitacion_er.test(habitacion.value)) {
		habitacion.style.borderRight = "10px solid rgb(67, 161, 16)";
	}
	else {
		habitacion.style.borderRight = "none";
	}
}

function checkMensaxe(mensaxe) {
	document.getElementById("err-mensaxe").style.visibility = "hidden";
	var quedan = 500 - mensaxe.value.length;
	document.getElementById("count").innerHTML = quedan;
	if(quedan > 10) {
		document.getElementById("count").style.color = "#FFFFFF";
	}
	else if(quedan > 0) {
		document.getElementById("count").style.color = "#D18B00";
	}
	else {
		document.getElementById("count").style.color = "#DB0F0D";
	}
}

$(document).ready(function () {
	$("#mostrar-form").click(function() {
		$(this).fadeOut(function() {
			$(".azul").stop().slideDown(1500);
		});
	});

	$("#cerrar").click(function() {
		$(".azul").stop().slideUp(1500, function() {
			$("#mostrar-form").fadeIn();
		});
	});

	$("#colexialsi").change(function() {
        if($("#colexialsi").is(":checked")) {
            $(".hab").stop().slideDown();
        }
    });

    $("#colexialnon").change(function() {
        if($("#colexialnon").is(":checked")) {
            $(".hab").stop().slideUp();
            $("#err-habitacion").css("visibility", "hidden");
        }
    });
});
//Função que atualiza o height do .container-main
	function htmlbodyHeightUpdate(){
		var height3 = $(window).height();
		var height1 = $('.nav').height() + 50;
		height2 = $('.container-main').height();
		if (height2 > height3) {
			$('html').height(Math.max(height1, height3, height2) + 10);
			$('body').height(Math.max(height1, height3, height2) + 10);
		} else {
			$('html').height(Math.max(height1, height3, height2));
			$('body').height(Math.max(height1, height3, height2));
		}
	}

$(document).ready(function() {
	htmlbodyHeightUpdate();
	$(window).resize(function() {
		htmlbodyHeightUpdate();
	});
	$(window).scroll(function() {
		height2 = $('.container-main').height();
		htmlbodyHeightUpdate();
	});			
	$(".navbar-m2p").mouseover(function() {
		var tamanho = $(window).width();
		if(tamanho > 768) {
			jQuery("body").css("width", "calc(100% - 300px)");
			jQuery(".container-main").css("margin-left", "300px");
			jQuery(".container-main").css("width", "calc(100% - 300px)");
		}
	});
	$(".navbar-m2p").mouseout(function() {
		var tamanho = $(window).width();
		if(tamanho > 768) {
		jQuery("body").css("width", "100%");
		jQuery(".container-main").css("margin-left", "40px");
		jQuery(".container-main").css("width", "calc(100% - 40px)");
		}
	});
	
	
	$(document).on('keypress', '#inCPF, #inRG, #inTel, #inCel, #inTelComercial', function(){
		var mascara = $(this).attr("pattern-data");
		var i = $(this).val().length;
		var saida = '#';
		var texto = mascara.substring(i,i+1);
		if (texto.substring(0,1) != saida){
			$(this).val($(this).val() + texto.substring(0,1));
		}
	});
});
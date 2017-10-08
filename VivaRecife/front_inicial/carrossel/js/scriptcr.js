$(function(){
	$('#slide img:eq(0)').addClass("ativo").show();


	setInterval(slide,2000);	


	function slide(){



		if($('.ativo').next().next().size()){

			$('.ativo').fadeOut().removeClass("ativo").next().fadeIn().addClass("ativo");

		}else{

			$('.ativo').fadeOut().removeClass("ativo");
			$('#slide img:eq(0)').fadeIn().addClass("ativo");


		}
	}

});
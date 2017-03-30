// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(){
	$('.test').change(function(){
	    if($('input.test').filter(':checked').length == 5){
	        $('input.test:not(:checked)').attr('disabled', 'disabled');
	    	$("#play").fadeIn().css("display","block");
	    }
	    else{
	        $('input.test').removeAttr('disabled');
	    	$("#play").fadeOut();
	    }
	});

	//Apparition Score du match

	$("figure").on("click",function(){
		$(".ready").slideToggle('500');
		setTimeout(function(){
			$('.points').slideToggle('1000');
			$('.counter').each(function() {
				var $this = $(this),
				countTo = $this.attr('data-count');

				$({ countNum: $this.text()}).animate({
					countNum: countTo
				},{
					duration: 3000,
					easing:'swing',
					step: function() {
						/*if (this.countNum<0) {
							this.countNum=0;
							$this.text(Math.floor(this.countNum));
						} else{
					  		$this.text(Math.floor(this.countNum));
					  	}*/
					  	$this.text(Math.floor(this.countNum));
					},
					complete: function() {
						/*if (this.countNum<0) {
							this.countNum=0;
							$this.text(this.countNum);
						} else{
					  		$this.text(this.countNum);
					  	}*/
					  	$this.text(this.countNum);
						//alert('finished');
					}
				});  
			});
		}, 600);
		setTimeout(function(){
			$(".win").css("display", "flex").hide().fadeIn();
			window.scrollTo(0, 0);
			$('body').css("overflow","hidden");
		}, 5000);
	});

	//Apparition number of results for the game

});



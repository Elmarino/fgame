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
	var limit = 3;
		$('.checkbox-player').on('change', function(evt) {
		//alert(limit);
		if($(this).siblings(':checked').length >= limit) {
		   this.checked = false;
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
					  $this.text(Math.floor(this.countNum));
					},
					complete: function() {
					  $this.text(this.countNum);
					  //alert('finished');
					}
				});  
			});
		}, 600);
	});

	//Apparition number of results for the game

});



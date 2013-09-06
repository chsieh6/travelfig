$(document).ready(function(){
		$('#myTab a:first').tab('show');
		$('.category_button').hide();
		$('.add_button').hide();
		
    $('.box').hover(function(){
	  	$($(this).find('.category_button')).show();
	  }, function (){
	  	$($(this).find('.category_button')).hide();
	  });

	  //If it is not the current user
	  $('.box').hover(function(){
	  	$($(this).find('.add_button')).show();
	  }, function (){
	  	$($(this).find('.add_button')).hide();
	  });
})
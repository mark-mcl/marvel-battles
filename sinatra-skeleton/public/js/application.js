$(document).ready(function() {
	$('.container').on('submit', '.vote-form', function(event){
		console.log('here');
		event.preventDefault();
		var $form = $(this)
		$.ajax({
			url: $form.attr('action'),
			method: $form.attr('method'),
			data: $form.serialize(),
			dataType: 'json',

		})
		.done(function(response){
			$('#char1').html(response.character_1);
			$('#char2').html(response.character_2);

		})
	});
	$('.container').on('click', '.vote-button', function(event){
		console.log('hi');
		$(this).css('background-color', 'red')
	});

});

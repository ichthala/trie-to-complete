var getSuggestions = function() {
  var data = {
    prefix: $('#word-input').val()
  };

	$.ajax({
    url: '/complete',
    dataType: 'json',
    data: data,
    type: 'GET'
  }).done(function(data) { //handle the json response
    $('#suggestions').empty();
  	$(data.suggestions).each(function(index, word) {
  		$('#suggestions').append(word + '<br>');
  	});
  });
};

$(function() {
	$('#word-input').keyup(function(e) {
		getSuggestions();
	})
});

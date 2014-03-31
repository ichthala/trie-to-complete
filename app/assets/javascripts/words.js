var getSuggestions = function() {
	$.ajax({
    url: '/complete',
    dataType: 'json',
    type: 'GET'
  }).done(function(data) { //handle the json response
  	$(data.suggestions).each(function(index, word) {
  		$('#suggestions').append(word + '<br>');
  	});
  });
};

$(function() {
	$('#word-input').keyup(function(e) {
		if (e.keyCode != 8) {
			getSuggestions();
		}
	})
});

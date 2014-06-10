// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//

//= require jquery
//= require jquery_ujs
//= require bootstrap.min.js
//= require bootstrap.js
//= require easing.js
//= require jflickrfeed.min.js
//= require jquery-2.0.3.min.js
//= require jquery-migrate-1.2.1.min.js
//= require jquery.carouFredSel-6.2.1.js
//= require jquery.fitvids.js
//= require jquery.isotope.min.js
//= require jquery.prettyPhoto.js
//= require jquery.themepunch.revolution.min.js
//= require jquery.ui.totop.min.js
//= require jquery.maskedinput.js
//= require layout.js

function getCityesByStateId(state_id) {
	$.ajax("/contacts/get_cities_by_state_id/"+state_id, function(j) {
		var options = '<option value="">Escolha a Cidade</option>';
		$.each(j.response, function(i, item) {
			options += '<option value="' + item.id + '">' + item.n + '</option>';
		});
		$("#city_id").html(options);
	});
}
var jq = $.noConflict();

jQuery(document).ready(function ($) {
	$("input[placeholder]").placeHeld();
});

jQuery(document).ready(function ($) {
	$('.datepicker').datepicker({
		minDate: new Date(),
		dateFormat: 'dd.mm.yy',
		firstDay: 1
	},
	$.datepicker.regional[ "fi" ] );
});
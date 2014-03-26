$(document).ready(function() {
	$(".remove_nested_fields_link").hide();
	$(".show_remove_button").click(function(){
	  $(this).closest(".show_remove_button").children(".remove_nested_fields_link").toggle();
	});
})
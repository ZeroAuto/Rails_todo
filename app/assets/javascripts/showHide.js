$(document).ready(function() {
	$(".item_form_list:last-child").detach();
	$(".hidden_button").hide();
	$(".shown_button").click(function(){
	  $(this).next().show();
	  $(this).remove();
	});
	$("#submit_button").hide();
	$(".check_box").click(function(){
		$("#submit_button").click();
	})
});
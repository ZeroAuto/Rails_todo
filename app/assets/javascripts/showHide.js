$(document).ready(function() {
	$(".hidden_button").hide();
	$(".shown_button").click(function(){
	  $(this).next().show();
	  $(this).remove();
	});
	$("#submit_button").hide();
	$(".item_form_list").children().last().detach();
	$(".check_box").click(function(){
		$("#submit_button").click();
	})
});
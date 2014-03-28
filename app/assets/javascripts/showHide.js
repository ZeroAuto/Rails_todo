$(document).ready(function() {
	$(".hidden_button").hide();
	$(".shown_button").click(function(){
	  $(this).next().show();
	  $(this).remove();
	});
	$("#submit_button").hide();
	$(".check_box").click(function(){
		$("#submit_button").click();
	});
	$itemField = $(".item_field").last().detach();
	$(".append").append($itemField);
	// console.log($(".item_form_list").children().last())
});
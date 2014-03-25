// On Ready
$(function(){ 

	/* when a user clicks a certain button, do an action */
	$(".red-bubble-link").click(redBubbleLinkClicked);
	$("#close-link-results").slideUp(400);
	return false;
}); 

function redBubbleLinkClicked() {

	var message = $(this).attr("message");

	// use the space . to css the message inside the link-results
	// without the space its an element that has link-results and message
	$("#link-results .message").html(message);
	$("#link-results").slideDown(400);
	return false
}


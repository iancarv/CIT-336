function init () {
	console.log("This is just a set up function =)");
	$(".nav li").mouseenter(function() {
	  	blink(this);
	});
}

function blink (e) {
    	$(e).fadeTo('slow', 0.2).fadeTo('slow', 1.0);
}

function whichPace (name) {
	alert("This page is: " + name);
}

window.onload = init;
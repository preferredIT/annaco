$(document).ready(function() { 
	$('ul.menu').superfish({ 
		delay:       400,                            // one second delay on mouseout 
		animation:   {opacity:'show',height:'show'},  // fade-in and slide-down animation 
		speed:       'normal',                          // faster animation speed 
		autoArrows:  false,                           // disable generation of arrow mark-up 
		dropShadows: false                            // disable drop shadows 
	}); 
	$(".list-services a.tooltips").easyTooltip();
}); 
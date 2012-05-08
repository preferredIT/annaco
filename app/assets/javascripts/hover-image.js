jQuery(function(){
	// lightbox image
	jQuery(".lightbox-image").append("<span></span>");
	
	jQuery(".lightbox-image").hover(function(){
		jQuery(this).find("img").stop().animate({opacity:0.5}, "normal")
	}, function(){
		jQuery(this).find("img").stop().animate({opacity:1}, "normal")
	});
});
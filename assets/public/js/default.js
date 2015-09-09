$(document).ready(function() {

	$("a.terms").fancybox({
	    'titleShow'     : false,
		'transitionIn'	: 'none',
		'transitionOut'	: 'none'
	});

	// EFFECT    
    if ($('.scroll-down').size() > 0) {
    	// Load first time
     	TweenMax.from('.scroll-down', 1, {scale:0.5, opacity:0, delay:0.06, ease:Elastic.easeOut}, 0.1);        
    	// Bouncing Effects
        TweenMax.fromTo( $('.scroll-down'), 1.2, {css:{y:-4}, immediateRender:true, ease:Elastic.easeInOutBounce}, {css:{y:0}, ease:Elastic.easeInOutBounce, repeat:-1});
        // Hover Effectd
        $('.scroll-down').hover(function(){ 
	        TweenMax.to($(this), .05, {css:{scale:1.05}, immediateRender:true, ease:Quad.easeOut}); 
	    },function() {
	        TweenMax.to($(this), .05, {css:{scale:1}, immediateRender:true, ease:Quad.easeOut}); 
	    });
    }
    if ($('.img-pocky').size() > 0) {
    	// Bouncing Effects
        //TweenMax.fromTo( $('.img-pocky'), 1.8, {css:{rotation:2,scale:0.2}, ease:Elastic.easeIn}, {css:{rotation:0,scale:1}, ease:Elastic.easeOut, repeat:-1});
        
   	}

});
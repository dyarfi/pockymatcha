$(document).ready(function() {
    
    jQuery(window).load(function() { 
        jQuery("#preloader").delay(50).fadeOut("slow");
        jQuery("#load").delay(50).fadeOut("slow");
    });

	$("a.terms").fancybox({
	    'titleShow'     : false,
		'transitionIn'	: 'none',
		'transitionOut'	: 'none'
	});

	// Animated with tweenmax    
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

    if ($('.error-handler .alert').size() > 0) {
        $('.error-handler').fancybox({
            'titleShow'     : false,
            'minWidth' : '50%',
            'autoSize' : true,
            'width'    : "auto",
            'autoScale': true,
            'transitionIn'  : 'none',
            'transitionOut' : 'none'
        }).trigger('click');
    }

    $('#form-questionnaire').submit(function() { });

    if($('#form-questionnaire').size() > 0) {
        var $this   = $('#form-questionnaire');
        var $input  = $( '#form-questionnaire :input');
        //console.log($input);
        $.each($input.serializeArray(), function(i, field) {
            //input_checked[field.name] = field.value;
            //console.log(field);
            $this.find('.'+field.name).addClass('bg-success');
        });
    }

    // Checkbox form on questionnaire
    if ($('.check_box').size() > 0) {
        $('.check_box').on('click',function () {
            var $handler = $(this).attr('name');
            $(this).parent().addClass('animated swing');
            $('.'+$handler).addClass('animated flipInX bg-success');
        });
    }

    $('.headline').addClass("hidden_box").viewportChecker({
        classToAdd: 'visible_box animated bounceInDown', // Class to add to the elements when they are visible
        offset: 100
    });   

    $('.main-handler').addClass("hidden_box").viewportChecker({
        classToAdd: 'visible_box animated bounceInUp', // Class to add to the elements when they are visible
        offset: 100
    });   

});
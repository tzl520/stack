(function (jQuery) {
"use strict";



// meanmenu
    jQuery('#mobile-menu').meanmenu({
        meanMenuContainer: '.mobile-menu',
        meanScreenWidth: "991"
    });



// sticky
var wind = jQuery(window);
var sticky = jQuery('#sticky-header');
wind.on('scroll', function () {
	var scroll = wind.scrollTop();
	if (scroll < 150) {
		sticky.removeClass('sticky');
	} else {
		sticky.addClass('sticky');
	}
});



// mainSlider

    function mainSlider() {
        var BasicSlider = jQuery('.slider-active');
        BasicSlider.on('init', function(e, slick) {
            var jQueryfirstAnimatingElements = jQuery('.single-slider:first-child').find('[data-animation]');
            doAnimations(jQueryfirstAnimatingElements);
        });
        BasicSlider.on('beforeChange', function(e, slick, currentSlide, nextSlide) {
            var jQueryanimatingElements = jQuery('.single-slider[data-slick-index="' + nextSlide + '"]').find('[data-animation]');
            doAnimations(jQueryanimatingElements);
        });
        BasicSlider.slick({
            autoplay: false,
            autoplaySpeed: 10000,
            dots: true,
            fade: true,
			arrows:true,
		    prevArrow:'<button type="button" class="slick-prev"> <i class="ti-angle-left"></i> </button>',
            nextArrow:'<button type="button" class="slick-next"><i class="ti-angle-right"></i></button>',
            responsive: [
                { breakpoint: 767, settings: { dots: false, arrows: false } }
            ]
        });

        function doAnimations(elements) {
            var animationEndEvents = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
            elements.each(function() {
                var jQuerythis = jQuery(this);
                var jQueryanimationDelay = jQuerythis.data('delay');
                var jQueryanimationType = 'animated ' + jQuerythis.data('animation');
                jQuerythis.css({
                    'animation-delay': jQueryanimationDelay,
                    '-webkit-animation-delay': jQueryanimationDelay
                });
                jQuerythis.addClass(jQueryanimationType).one(animationEndEvents, function() {
                    jQuerythis.removeClass(jQueryanimationType);
                });
            });
        }
    }
mainSlider();


/* counter */
jQuery('.counter').counterUp({
    delay: 10,
    time: 1000
});


/* gallery-active */
jQuery('.gallery-active').owlCarousel({
    loop:true,
	margin:0,
    nav:false,
	dots:true,
    responsive:{
        0:{
            items:1
        },
        576:{
            items:2
        },
        768:{
            items:2
        },
        992:{
            items:3
        },
        1200:{
            items:4
        }
    }
})


/* brand-active */
jQuery('.brand-active').owlCarousel({
    loop:true,
    nav:false,
	autoplay:true,
    responsive:{
        0:{
            items:1
        },
        576:{
            items:2
        },
        768:{
            items:3
        },
        992:{
            items:4
        },
        1200:{
            items:4
        }
    }
})

/* special-menu-active */
jQuery('.special-menu-active').owlCarousel({
    loop:true,
    nav:true,
	dots:false,
	navText:['<i class="fas fa-chevron-left"></i>','<i class="fas fa-chevron-right"></i>'],
    responsive:{
        0:{
            items:1
        },
        767:{
            items:1
        },
        1000:{
            items:2
        },
        1200:{
            items:2
        }
    }
})

/* news-active */
jQuery('.news-active').owlCarousel({
    loop:true,
    nav:false,
	dots:true,
    responsive:{
        0:{
            items:1
        },
        576:{
            items:1
        },
        768:{
            items:1
        },
        992:{
            items:2
        },
        1200:{
            items:2
        }
    }
})

/* product-active*/
jQuery('.product-active').owlCarousel({
    loop:true,
    nav:false,
    responsive:{
        0:{
            items:1
        },
        576:{
            items:2
        },
        768:{
            items:2
        },
        992:{
            items:3
        },
        1200:{
            items:3
        }
    }
})

/* image-link */
jQuery('.image-link').magnificPopup({
  type: 'image',
  gallery:{
    enabled:true
  }
});

/* magnificPopup video view */
jQuery('.popup-video').magnificPopup({
	type: 'iframe'
});





// scrollToTop
jQuery.scrollUp({
	scrollName: 'scrollUp', // Element ID
	topDistance: '300', // Distance from top before showing element (px)
	topSpeed: 300, // Speed back to top (ms)
	animation: 'fade', // Fade, slide, none
	animationInSpeed: 200, // Animation in speed (ms)
	animationOutSpeed: 200, // Animation out speed (ms)
	scrollText: '<i class="fas fa-angle-up"></i>', // Text for element
	activeOverlay: false, // Set CSS color to display scrollUp active point, e.g '#00FFFF'
});

// WOW active
new WOW().init();

// niceSelect
jQuery('select').niceSelect();


// map
function basicmap() {
	// Basic options for a simple Google Map
	// For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
	var mapOptions = {
		// How zoomed in you want the map to start at (always required)
		zoom: 11,
		scrollwheel: false,
		// The latitude and longitude to center the map (always required)
		center: new google.maps.LatLng(40.6700, -73.9400), // New York
		// This is where you would paste any style found on Snazzy Maps.
		styles: [{ "featureType": "all", "elementType": "geometry.fill", "stylers": [{ "hue": "#ffb500" }, { "lightness": "54" }, { "saturation": "-61" }] }, { "featureType": "administrative", "elementType": "labels.text.fill", "stylers": [{ "color": "#444444" }] }, { "featureType": "poi", "elementType": "all", "stylers": [{ "visibility": "off" }] }, { "featureType": "road", "elementType": "all", "stylers": [{ "saturation": -100 }, { "lightness": 45 }] }, { "featureType": "road.highway", "elementType": "all", "stylers": [{ "visibility": "simplified" }] }, { "featureType": "road.arterial", "elementType": "labels.icon", "stylers": [{ "visibility": "off" }] }, { "featureType": "transit", "elementType": "all", "stylers": [{ "visibility": "off" }] }, { "featureType": "water", "elementType": "all", "stylers": [{ "color": "#000" }, { "visibility": "on" }] }]
	};
	// Get the HTML DOM element that will contain your map
	// We are using a div with id="map" seen below in the <body>
	var mapElement = document.getElementById('contact-map');

	// Create the Google Map using our element and options defined above
	var map = new google.maps.Map(mapElement, mapOptions);

	// Let's also add a marker while we're at it
	var marker = new google.maps.Marker({
		position: new google.maps.LatLng(40.6700, -73.9400),
		map: map,
		title: 'Cryptox'
	});
}
if (jQuery('#contact-map').length != 0) {
	google.maps.event.addDomListener(window, 'load', basicmap);
}







})(jQuery);
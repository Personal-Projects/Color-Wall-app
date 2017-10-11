jQuery(document).ready(function($){

/*==========================*/	
/*Preloader */	
/*==========================*/
$('#preloader-outer').delay(1000).fadeOut('slow');
	$('nav ul li.dropdown > a').click(function(){
		
		if($(this).hasClass('active')){
			$(this).removeClass('active');
			$(this).next('ul').slideUp();
			
		}
		
		else{
			$('nav ul li a').removeClass('active');
			$(this).addClass('active');
			$('nav ul li ul').slideUp();
			$(this).next('ul').slideDown();
			}
		
	
		return false;
	})
	

/*==========================*/	
/* Masonry */	
/*==========================*/
$(function () {
	var self = $("#masonry");

	
  // init Masonry
  var $grid = $('.grid').masonry({
    itemSelector: '.grid-item',
    percentPosition: true,
    columnWidth: '.grid-sizer',
	gutter: '.gutter-sizer',
  });
  // layout Isotope after each image loads
  $grid.imagesLoaded().progress( function() {
    $grid.masonry();
  });  

	$("ul.project-category li a").click(function(e) {
		e.preventDefault();
		$('ul.project-category li a').removeClass('active');
		$(this).addClass('active');
		var filter = $(this).attr("data-filter");

		self.masonryFilter({
			filter: function () {
				if (!filter) return true;
				return $(this).attr("data-filter") == filter;
			}
		});
	});
});
	

/*==========================*/	
/* Lighbox */	
/*==========================*/	
$('.image-gallery').magnificPopup({
  delegate: '.grid-item:visible a', // child items selector, by clicking on it popup will open
  type: 'image',
  // other options
  gallery: {
  enabled: true,
  preload: [0,2], 
  removalDelay: 300,
  navigateByImgClick: true,
 
  mainClass: 'mfp-fade',
  titleSrc: 'title', 
  arrowMarkup: '<button title="%title%" type="button" class="mfp-arrow mfp-arrow-%dir%"></button>', // markup of an arrow button

  tPrev: 'Previous (Left arrow key)', // title for left button
  tNext: 'Next (Right arrow key)', // title for right button
  tCounter: '<span class="mfp-counter">%curr% of %total%</span>' // markup of counter
}
});
	
/*==========================*/	
/* Post Slider */	
/*==========================*/
	$('.post-slider').slick({
		autoplay:true,
		infinite: true,
		dots: false,
		speed: 700,
		adaptiveHeight: true,
		fade:true
		
	});
/*==========================*/	
/* Google Map */	
/*==========================*/

	if($('#map-canvas').length != 0){
 var map;
 function initialize() {
    var mapOptions = {
        zoom: 16,
        scrollwheel: false,
        center: new google.maps.LatLng(25.932884, 83.569633),
        styles: [{"stylers": [{ "hue": "#daf2fa" }]}, { "featureType": "road", "elementType": "labels",  "stylers": [{"visibility": "off"}] },
 { "featureType": "road", "elementType": "geometry",  "stylers": [{"lightness": 100},  {"visibility": "simplified"}] } ] };

	map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
	 var image = 'include/images/map-marker.png';
	 var myLatLng = new google.maps.LatLng(25.932884, 83.569633);
	 var beachMarker = new google.maps.Marker({position: myLatLng, map: map, icon: image
	 });
	}
		google.maps.event.addDomListener(window, 'load', initialize);}
	
	
 /*==========================*/	
/* Grid Post Show More  */	
/*==========================*/
		
	$('.post-toggle-btn').click(function(){
		if($(this).closest('.grid-post-box').hasClass('active')){
			$('.grid-post-box').removeClass('active');
			$('body').removeClass('showMore');
		}
		
		else{
			$('body').addClass('showMore');
			$('.grid-post-box').removeClass('active');
			$(this).closest('.grid-post-box').toggleClass('active');
			}
		
	});	
	
	$('.overlay').click(function(){
		$('body').removeClass('showMore');
		$('.grid-post-box').removeClass('active');
	});
	
	
	$('body').click(function(e){
		$('body').removeClass('showMore');
		$('.grid-post-box').removeClass('active');
	});
	
	$('.grid-post-box').click(function(e){
		e.stopPropagation();
		
	});
	
	
	$('.menu-toggle a').click(function(){
		if(!$('body').hasClass('menuOpen')){
			$('body').addClass('menuOpen');
			$(this).addClass('active');
		}
	else{
		$(this).removeClass('active');
		$('body').removeClass('menuOpen');
		}
		return false;
			
	})
	
	
	$('.sidebar-toggle a').click(function(){
		if(!$('body').hasClass('sidebarOpen')){
			$('body').addClass('sidebarOpen');
			$(this).addClass('active');
		}
	else{
		$(this).removeClass('active');
		$('body').removeClass('sidebarOpen');
		}
		return false;
			
	})


});
	
/*==========================*/	
/* Custom Scrollbar */	
/*==========================*/
(function($){
	$(window).load(function(){
		
		$(".scroll-container").mCustomScrollbar({
			autoHideScrollbar:true,
			theme:"minimal-dark"
		});
		
	});
})(jQuery);

	 
	
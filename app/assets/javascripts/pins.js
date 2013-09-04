$(document).ready(function(){
	var $container = $('#isotope-container');
  $container.imagesLoaded(function(){
  	$container.isotope({
  		itemSelector: '.box',
  	});
  	$container.infinitescroll({
      navSelector  : '.pagination',    // selector for the paged navigation 
      nextSelector : '.next_page a',  // selector for the NEXT link (to page 2)
      itemSelector : '.box',     // selector for all items you'll retrieve
      loading: {
          finishedMsg: 'No more images to load.',
          img: 'http://i.imgur.com/qkKy8.gif'
        }
      },
      // call Isotope as a callback
      function( newElements ) {
        $container.isotope( 'appended', $( newElements ) ); 
      }
    );  
  })
});
$(function(){

  // Declare Scroll Animation 
  function scroll_to(div){
    $('html, body').animate({
      scrollTop: $(div).offset().top
    },1000);
  }

  // Load all the pins on Isotope once the page is ready
  function loadPin() {
    $container.imagesLoaded(function(){
      $container.isotope({
        itemSelector: '.box'
      });
    });
    // Load all the buttons that goes onto the pins
    pageLoad();
  }

  // Function that loads all the buttons and its animation when hover overs the images
  function pageLoad() {
    $('.move_button').hide();
    $('.add_button').hide();
    $('.like_button').hide();
      
    $('.box').hover(function(){
      $($(this).find('.move_button')).show();
    }, function (){
      $($(this).find('.move_button')).hide();
    });
     //If it is not the current user
    $('.box').hover(function(){
      $($(this).find('.add_button, .like_button')).show();
    }, function (){
      $($(this).find('.add_button, .like_button')).hide();
    });
  }

  // Start of Pin Initialization
  var $container = $('#isotope-container');
  loadPin();

  // Infinite Scroll setup with a isotope callback
  $container.infinitescroll({
    navSelector  : '.pagination',    // selector for the paged navigation 
    nextSelector : '.next_page a',  // selector for the NEXT link (to page 2)
    itemSelector : '.box',     // selector for all items you'll retrieve
    loading: {
        finishedMsg: 'No more images to load.',
        img: 'http://i.imgur.com/qkKy8.gif'
      }
    },
    // Call Isotope as a callback to reorganize the pins
    function( newElements ) {
      var $newElems = $(newElements);
      $newElems.imagesLoaded(function(){
        $container.isotope('appended', $newElems );
      });
      pageLoad();
    }
  );

  // Scrolling Animation Action
  $("#topbtn").click(function(){
    scroll_to("#top");
    return false;
  });

  $("#introbtn").click(function(){
    scroll_to("#intro");
    return false;
  });

  $("#portfoliobtn").click(function(){
    scroll_to("#portfolio");
    return false;
  });

  $("#contactbtn").click(function(){
    scroll_to("#contact");
    return false;
  });

  // Initialize the nav-tabs on User Profile
  $('#userTab a:first').tab('show');

  // Initialize the nav-tabs on User Profile
  $('#bookTab a:first').tab('show');
  
  // Window Reload when the user profile is clicked
  $('.pin_link').click(function(){
    var nextPage = $(this).attr('href');
    location.replace(nextPage);
    location.reload;
  }); 

})

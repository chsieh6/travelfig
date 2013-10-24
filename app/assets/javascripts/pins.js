$(document).ready(function(){

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

  // Load all the pins once the page is ready
  function loadPin() {
    $container.imagesLoaded(function(){
      $container.isotope({
        itemSelector: '.box'
      });
    });
    // Load all the buttons that goes onto the pins
    pageLoad();
  }

  var $container = $('#isotope-container');
  $('#myTab a:first').tab('show');
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
    // call Isotope as a callback
    function( newElements ) {
      var $newElems = $(newElements);
      $newElems.imagesLoaded(function(){
        $container.isotope('appended', $newElems );
      });
      pageLoad();
    }
  );

  $('.pin_link').click(function(){
    var nextPage = $(this).attr('href');
    console.log(nextPage);
    location.replace(nextPage);
    location.reload;
  }); 

  $('.modal_image').click(function(){
    $($(this).parentsUntil('.isotope-container').find('.modal-header')).find('.add_button', '.like_button').show();
    $($(this).parentsUntil('.isotope-container').find('.modal-header')).find('.move_button').show();
  });
})

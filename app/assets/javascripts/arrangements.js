$(document).ready(function(){

  var $overlay = $('<div id="overlay"></div>');
  var $clickedImage=$("<img>");
  var $caption=$("<p></p>");
  var $close = $('<a href="#" class="close-button"><i class="fa fa-times-circle fa-2x"></i></a>');


  //can append the image before you append the overlay to the body (totally ok)
  $overlay.append($clickedImage);

  //add close box
  $overlay.append($close);

  //a caption - will appear after the image
  $overlay.append($caption);

  //2. Add an overlay
  $('body').append($overlay);



  //prevent default from happening
  $(".item-image").on("click", function(event){
    event.preventDefault();
    $("body").css("overflow", "hidden");
    var imageLocation = $(this).attr("src");

    $clickedImage.attr("src", imageLocation);
    $overlay.show();

    var $captionText =$(this).attr("alt");
    $caption.text($captionText);
    });

    $overlay.on("click", function(event){
      $overlay.hide();
       $("body").css("overflow", "scroll");
    })

    //add close button to overlay
    $close.on("click", function(event){
      event.preventDefault();
            $overlay.hide();
      });

    //close overlay if escape button is pressed
    $(document).keyup(function(e){
      if (e.keyCode == 27) {
        $overlay.hide();
        $("body").css("overflow", "scroll");
        }
      });
})
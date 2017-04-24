//= require betterjs/twbs_ext/affix_2_1_0

jQuery(function() {

  $('#aside').affix({
    offset: {
      top: function () {
        offset = getInt( $("body").css("padding-top") );
        return (this.top = $("#aside").offset().top - offset)
      }
    }
  });
  
  $('#aside_toggle').affix({
    offset: {
      top: function () {
        if ( $("body").hasClass("fixed-nav") ) {
          var neededTop = $("#aside").offset().top - 50;
        } else {
          var neededTop = $("#aside").offset().top;
        }
        return (this.top = neededTop)
      }
    }
  });
  
  $("body").on( "click", "#aside_toggle", function(e){
    e.preventDefault();
    $('body').toggleClass("with_aside");
  });
  
});
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//# require jquery
//# require_tree .

//= require better_styles
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
  
});
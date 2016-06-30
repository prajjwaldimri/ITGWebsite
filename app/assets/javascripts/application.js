// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require_tree .

$(function() {

  $(document).foundation();

  $(document).ready(function(){
    $(window).load(function() {
  		// Animate loader off screen
  		$(".spinner-wrapper").fadeOut("slow");;
  	});
  });

  $(".mega-button a").click(function() {
    $(".mega-menu").toggle("slow");
  });

  $('.tertiary-nav .search-icon').click(function(event) {

    if ($('.inline-list li.search-field').hasClass('open')) {

      $('.inline-list li.search-field').animate({
        width: "0px",
        margin: "0px"
      }, 500).removeClass('open')

      $('.inline-list').style({
        margin: "0 -10px 0 0"
      })

    } else {

      $('.inline-list li.search-field').animate({
        width: "160px",
        margin: "0 0 0 10px"
      }, 500).addClass('open')

    }
  });
});

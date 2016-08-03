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
//= require semantic-ui
//= require jquery.particleground.min.js
//= require jquery.elevator.min.js
//= require unslider-min.js
//= require_tree .

$(function() {

  $(document).ready(function(){
    $(window).load(function() {
      // Animate loader off screen
      $(".spinner-wrapper").fadeOut("slow");;
    });
  });

  //Closing message
  $('.message .close')
  .on('click', function() {
    $(this)
      .closest('.message')
      .transition('fade');
  });

  //Listening to scroll

  $(window).scroll(function(){
    var wScroll = $(this).scrollTop();
		if (wScroll > 100) {
			$('.elevator-button').fadeIn();
		} else {
			$('.elevator-button').fadeOut();
		}
	});

  //MenuIcon
  var $menubutton = $(".menu-button");
  $menubutton.on("click", function(e) {
    $('.ui.sidebar')
    .sidebar('setting', 'transition', 'scale down')
    .sidebar('toggle');
  });

  var elevator = new Elevator({
    element: document.querySelector('.up-elevator-button'),
    mainAudio: '/assets/elevator.mp3',
    endAudio: '/assets/ding.mp3'
  });

  $('.down-elevator-button').click(function(){
    $('html, body').velocity({
       scrollTop: $(document).height()}, 5000);
  });

  $('.developer-button').click(function(){
    $('.ui.modal')
  .modal('show');
  });
});

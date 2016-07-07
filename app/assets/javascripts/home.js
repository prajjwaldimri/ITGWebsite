$(function(){

  function tick(){
    $('#ticker li:first').fadeOut( function () { $(this).appendTo($('#ticker')).fadeIn(); });
    $('#ticker1 li:first').slideUp(function(){$(this).appendTo($('#ticker1')).slideDown();});
  }
  setInterval(function(){ tick () }, 5000);

  $('.tlt').textillate({
    loop: true,
    initialDelay: 2000
  });

  $('.hero-particles').particleground({
    dotColor: 'rgba(127, 140, 141,0.8)',
    lineColor: 'rgba(127, 140, 141,0.8)'
  });

  $("#scroll-to-main").click(function() {
    $('html,body').animate({
      scrollTop: $(".main").offset().top},
      'slow');
  });

    var elevator = new Elevator({
      element: document.querySelector('.elevator-button'),
      mainAudio: '/assets/elevator.mp3',
      endAudio: '/assets/ding.mp3'
    });
});

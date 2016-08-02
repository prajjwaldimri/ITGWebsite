$(function(){

  function tick(){
    $('#ticker li:first').fadeOut( function () { $(this).appendTo($('#ticker')).fadeIn(); });
    $('#ticker1 li:first').slideUp(function(){$(this).appendTo($('#ticker1')).slideDown();});
  }
  setInterval(function(){ tick () }, 5000);

  //Listening to scrollTop

  $(window).scroll(function(){
    var wScroll = $(this).scrollTop();
    $('.hero-content').css({
      'transform' : 'translate(0px, '+ wScroll /5 +'%)'
    });
    if(wScroll >50){
      $('.ui.secondary.menu').css({
        'background-color':'#fff', 'transition':'background-color 0.5s ease'
      });
      $('.ui.menu .item').css({
        'color':'#000', 'transition':'color 0.5s ease'
      });
    }
    if(wScroll<50){
      $('.ui.secondary.menu').css({
        'background-color':'rgba(0,0,0,0)', 'transition':'background-color 0.5s ease'
      });
      $('.ui.menu .item').css({
        'color':'#000', 'transition':'color 0.5s ease'
      });
    }

    //main-body
    if(wScroll > $('.large-window1').offset().top - $(window).height()){
      var opacity = (wScroll - $('.large-window1').offset().top + 400) / (wScroll/5);
      $('.window1-tint').css({'opacity' : opacity});
    }
    if(wScroll > $('.large-window2').offset().top - $(window).height()){
      var opacity = (wScroll - $('.large-window2').offset().top + 400) / (wScroll/5);
      $('.window2-tint').css({'opacity' : opacity});
    }
    if(wScroll > $('.large-window3').offset().top - $(window).height()){
      var opacity = (wScroll - $('.large-window3').offset().top + 400) / (wScroll/5);
      $('.window3-tint').css({'opacity' : opacity});
    }
    if(wScroll > $('.large-window4').offset().top - $(window).height()){
      var opacity = (wScroll - $('.large-window4').offset().top + 400) / (wScroll/5);
      $('.window4-tint').css({'opacity' : opacity});
    }
  });


    $('.tlt').textillate({
    loop: true,
    initialDelay: 2000
  });

  $('.tlt').click(function(){
    $('.ui.modal')
    .modal('show');
  });


  $("#learnmore").click(function() {
    $('html,body').velocity({
      scrollTop: $(".main-body").offset().top -70},
      'slow');
    });
  });

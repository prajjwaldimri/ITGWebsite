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
//= require turbolinks
//= require_tree .

$(function() {

  $(document).foundation();

  $(".mega-button a").click(function() {
    $(".mega-menu").toggle("slow");
  });

    var time = 7; // time in seconds

    var $progressBar,
        $bar,
        $elem,
        isPause,
        tick,
        percentTime;

    //Init the carousel
    $("#owl-demo").owlCarousel({
        slideSpeed: 500,
        paginationSpeed: 500,
        singleItem: true,
        afterInit: progressBar,
        afterMove: moved,
        startDragging: pauseOnDragging
    });

    //Init progressBar where elem is $("#owl-demo")
    function progressBar(elem) {
        $elem = elem;
        //build progress bar elements
        buildProgressBar();
        //start counting
        start();
    }

    //create div#progressBar and div#bar then prepend to $("#owl-demo")
    function buildProgressBar() {
        $progressBar = $("<div>", {
            id: "progressBar"
        });
        $bar = $("<div>", {
            id: "bar"
        });
        $progressBar.append($bar).prependTo($elem);
    }

    function start() {
        //reset timer
        percentTime = 0;
        isPause = false;
        //run interval every 0.01 second
        tick = setInterval(interval, 10);
    };

    function interval() {
        if (isPause === false) {
            percentTime += 1 / time;
            $bar.css({
                width: percentTime + "%"
            });
            //if percentTime is equal or greater than 100
            if (percentTime >= 100) {
                //slide to next item
                $elem.trigger('owl.next')
            }
        }
    }

    //pause while dragging
    function pauseOnDragging() {
        isPause = true;
    }

    //moved callback
    function moved() {
        //clear interval
        clearTimeout(tick);
        //start again
        start();
    }

    $elem.on('mouseover', function() {
        isPause = true;
    })
    $elem.on('mouseout', function() {
        isPause = false;
    })

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

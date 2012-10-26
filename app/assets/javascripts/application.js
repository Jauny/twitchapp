// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function() {
    var adjs = ["ultimate", "dream", "best of the best", "paramount", "highest peak", "longest orgasm", "shit"];

    var rand_adj = function() {
      adj = adjs.shift();

      $('#home_adj').fadeOut(1000, function() {
        var $this = $(this);
        $this.text(adj + "?");
        $this.fadeIn(1000);
      });
      adjs.push(adj);
    };

    rand_adj();
    setInterval(function() {rand_adj()}, 1000);
});



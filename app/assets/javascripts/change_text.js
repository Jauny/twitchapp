$(document).ready(function() {
    var adjs = ["is OP", "can count to the infinite", "tweets more than 140 characters", "remembers the future", "will be back!", "is my dream", "found Sarah Connor", "and Waldo", "at the same time", "gives multiple orgasms", "must hire me", "all in and win", "LEERROOOOOYYYYYYY JEEENNNNNNNNKKIINNNSSSSS"];

    var rand_adj = function() {
      adj = adjs.shift();

      $('#home_adj').fadeOut(1500, function() {
        var $this = $(this);
        $this.text(adj);
        $this.fadeIn(1500);
      });
      adjs.push(adj);
    };

    rand_adj();
    setInterval(function() {rand_adj()}, 3000);
});
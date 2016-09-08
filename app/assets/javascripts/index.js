"use strict";

$(document).on('turbolinks:load', function() {

    $("#initial_place").hide();
    $("#move").hide();

    $("#place_button").click(function(){
        $("#place_data").hide();
        $("#move").show();
        $("#opening").hide();
        $("#initial_place").show();
    });

});


"use strict";

$(document).on('turbolinks:load', function() {

    $("#report").hide();
    $("#move").hide();


    $("#place_button").click(function(){
        $("#place_data").hide();
        $("#move").show();
        $("#opening").hide();
        $("#report").show();
    });

    $("#place").click(function(){
        $("#move").show();
    });

    $("#place_2").click(function(){
        $("#move").show();
    });

});


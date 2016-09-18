/**
 * Created by abhi on 05/09/16.
 */
$(document).ready (function(){

    $(".show-meaning").click(function(){
        $(".question-box").removeClass("hide");
        $(".container").removeClass("hide");
    });
    $(".next").click(function(){
        $(".question-box").addClass("hide");
        $(".container").addClass("hide");
    });
});

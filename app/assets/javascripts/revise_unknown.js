/**
 * Created by abhi on 18/09/16.
 */

$(document).ready(function(){
    $.get("/word", {category: "Unknown"},function(data){
        var newWord = data.word;
        $(".word").text(newWord);
    })
});


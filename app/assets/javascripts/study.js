/**
 * Created by abhi on 17/09/16.
 */
var currentWord;
var wordID;
function displayNewWord() {
    $.get("/new",  function (data) {
        console.log(data);
        currentWord = data.word;
        wordID = data.id;
        $(".word").text(currentWord);
        var googleImage = "/assets/google/"+currentWord+".png";
        var vocabImage = "/assets/vocab-"+currentWord+".png";
        
        var oxfordImage = "/assets/oxford-"+currentWord+".png";
        var websterImage = "assets/webster-"+currentWord+".png";
        $("#google-meaning").attr("src",googleImage);
        $("#vocab-meaning").attr("src",vocabImage);
        $("#oxford-meaning").attr("src",oxfordImage);
        $("#webster-meaning").attr("src",websterImage);

    });
}

$(document).ready(function () {

    displayNewWord();
    console.log("on ready");
    $("#next").click(function(){

        var selection = $("input[type='radio']:checked").val();
        console.log(wordID,selection);
        if (selection == 'Yes')
        {
            selection = 'Known';
        }
        else {
            selection = 'Unknown';
        }
        console.log(selection);
        $.post("/category", { id: wordID, category: selection}, function(){
           displayNewWord();
        });

    });
});


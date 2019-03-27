$(function () {

    var input= $(".left").find("input");
    console.log(input[1]);

    input.mouseenter(function () {
        console.log("---------");
    });

    input[1].onclick=function(){
        console.log(">>>>");
    }
    input.click(function () {
        console.log(123);
    });
});
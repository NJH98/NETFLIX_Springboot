$(window).on('scroll',function(){ 
    if($(window).scrollTop()){ 
        $('#header').addClass('active'); }
        else{ 
            $('#header').removeClass('active'); } 
            });

window.onload=function innerHtmltest(){
     var element = document.getElementById("video");
     var element2 = document.getElementById("conlogo");
     var num = Math.floor((Math.random()*3)+1);
    element.innerHTML = "<video src='img/"+num+".mp4' autoplay muted></video>";
    element2.innerHTML = "<img src='img/"+num+".png' width='450px' height='130px'>";
    
}
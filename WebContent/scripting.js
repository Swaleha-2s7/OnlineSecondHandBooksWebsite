var modal = document.getElementById('id01'); //Modal Login From
//Slideshow
var slideIndex = 0;
    function showSlides() {
      var i;
      var slides = document.getElementsByClassName("mySlides");
      var dots = document.getElementsByClassName("dot");
      for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";  
      }
      slideIndex++;
      if (slideIndex > slides.length) {slideIndex = 1}    
      for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
      }
      slides[slideIndex-1].style.display = "block";  
      dots[slideIndex-1].className += " active";
      setTimeout(showSlides, 10000); // Change image every 10 seconds
    }
//Modal Image Gallery Script
//Get the modal image effect on given click event
function onClick(element){
    //document.getElementById("img01").src=element.src;
    document.getElementById("modal01").style.display="block";
    document.getElementById("caption").innerText=element.alt;
}

//Modal Login Form Script
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
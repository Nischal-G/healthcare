<style type="text/css">
  
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}

</style>

<?php
include("header.php");
?>
<div class="wrapper col1" style="background-color: #0AABD7">
  <center>
  <div id="container" >
    <div id="content">

      <!-- <img src="images/hospital.png" alt="..." width="100%"> -->
      

      <div class="slideshow-container">
        <div class="mySlides fade">
          <!-- <div class="numbertext">1 / 3</div> -->
          <img src="images/hospital.png" style="width:100%">
          <div class="text">Health Care</div>
        </div>

        <div class="mySlides fade">
          <!-- <div class="numbertext">2 / 3</div> -->
          <img src="images/hospital3.png" style="width:100%">
          <div class="text">Health Care</div>
        </div>

        <div class="mySlides fade">
          <!-- <div class="numbertext">3 / 3</div> -->
          <img src="images/hospital2.png" style="width:70%">
          <div class="text">Health Care</div>
        </div>

        </div>
        <br>

        <div style="text-align:center">
          <span class="dot"></span> 
          <span class="dot"></span> 
          <span class="dot"></span> 
        </div>

      <div class="homecontent">
        <center>
        <ul>
          <li >
            <div class="links" onclick="location.href='patientappointment.php'"><p>Book Your Appointment</p></div>
          </li>
          <li class="last">
            <div class="links" onclick="location.href='patientlogin.php'"><p>Login Users</p></div>
          </li>
        </ul>
        </center>
        <div class="clear"></div>
      </div>
    
    </div>
   
    <div class="clear"></div>
  </div>
</center>
</div>
<?php
include("footer.php");
?>

<script>
var slideIndex = 0;
showSlides();

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
  setTimeout(showSlides, 3000); // Change image every 3 seconds
}
</script>
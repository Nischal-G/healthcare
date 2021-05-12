<div class="wrapper col5" style="background-color: #3882C4">
  <div id="footer" style="display: flex; text-align: center;">

    <div id="copyright">
      <p class="fl_left">Copyright &copy; 2021 - All Rights Reserved | <a href="adminlogin.php">Admin Login Panel</a> | <a href="doctorlogin.php">Doctor Login Panel</a></p>
      <p class="fl_right"></p>
      <br class="clear" />
    </div>
    <div class="clear"></div>
  </div>
</div>
</body>

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
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
</html>
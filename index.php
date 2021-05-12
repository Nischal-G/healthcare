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
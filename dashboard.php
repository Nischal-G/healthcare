
<?php
session_start();
if(!isset($_SESSION['adminid']))
{
	echo "<script>window.location='adminlogin.php';</script>";
}
include("dbconnection.php");
include("headers.php");
?>
<link rel="stylesheet" type="text/css" href="layout/styles/tiles.css">
	<div class="containerdash">
		<div class="">
			<br>
			<h3>
				<form method="POST" action=""><strong>Date -</strong> 
					<input type="date" name="date" value="<?php echo $_POST[date]; ?>" >
					<input type="submit" name="submit" value="Submit">
					<input type="reset" name="reset" value="Reset" onClick="window.location.href=window.location.href">
				</form>
			</h3>
			<hr>
			
			<div class="">
				<div class="tile wide resource">
			    <div class="bodyheader">
			      <div class="left">
			        <div class="count">
			        	<?php
						$sql = "SELECT * FROM patient WHERE status='Active' and gender='Male'";
						if(isset($_POST[date]))
						{
							$sql = $sql . " AND admissiondate ='$_POST[date]'";
						}
						$qsql = mysqli_query($con,$sql);
						echo mysqli_num_rows($qsql);
						?>
			        </div>
			        <div class="title">Male</div>
			      </div>
			      <div class="right">
			        <div class="count">
			        	<?php
						$sql = "SELECT * FROM patient WHERE status='Active' and gender='Female'";
						if(isset($_POST[date]))
						{
							$sql = $sql . " AND admissiondate ='$_POST[date]'";
						}
						$qsql = mysqli_query($con,$sql);
						echo mysqli_num_rows($qsql);
						?>
			        </div>
			        <div class="title">Female</div>
			      </div>
			    </div>
			    <div class="bodytile">
			      <div class="title">Total Patient</div>
			    </div>
			  </div>
				
			  <div class="tile job">
			    <div class="bodyheader">
			      <div class="count">
			      	<?php
						$sql = "SELECT * FROM appointment WHERE status='Approved'";
						if(isset($_POST[date]))
						{
							$sql = $sql . " AND appointmentdate ='$_POST[date]'";
						}
						$qsql = mysqli_query($con,$sql);
						echo mysqli_num_rows($qsql);
						?>
			      </div>
			      <div class="title"></div>
			    </div>
			    <div class="bodytile">
			      <div class="title">Total Appointment</div>
			    </div>
			  </div>
			  <div class="tile job">
			    <div class="bodyheader">
			      <div class="count">
			      	<?php
					$sql = "SELECT * FROM billing WHERE billingid !='0'";
					if(isset($_POST[date]))
					{
						$sql = $sql . " AND billingdate ='$_POST[date]'";
					}
					$qsql = mysqli_query($con,$sql);
					echo mysqli_num_rows($qsql);
					?>
			      </div>
			      <div class="title"></div>
			    </div>
			    <div class="bodytile">
			      <div class="title">Total Billing</div>
			    </div>
			  </div>
			  <div class="tile job">
			    <div class="bodyheader">
			      <div class="count">
			      	 <?php
						$sql = "SELECT * FROM treatment_records WHERE status='Active'";
						if(isset($_POST[date]))
						{
							$sql = $sql . " AND treatment_date  ='$_POST[date]'";
						}
						$qsql = mysqli_query($con,$sql);
						echo mysqli_num_rows($qsql);
						?>
			      </div>
			      <div class="title"></div>
			    </div>
			    <div class="bodytile">
			      <div class="title">Total Treatment</div>
			    </div>
			  </div>
			  <div class="tile job">
			    <div class="bodyheader">
			      <div class="count">
			      	<?php
						$sql = "SELECT * FROM prescription WHERE status='Active'";
						if(isset($_POST[date]))
						{
							$sql = $sql . " AND prescriptiondate   ='$_POST[date]'";
						}
						$qsql = mysqli_query($con,$sql);
						echo mysqli_num_rows($qsql);
						?>
			      </div>
			      <div class="title"></div>
			    </div>
			    <div class="bodytile">
			      <div class="title">Total Prescription</div>
			    </div>
			  </div>
			   
			  <div class="tile wide resource">
			    <div class="bodyheader">
			      <div class="left">
			        <div class="count">
			        	<?php
						$sql = "SELECT * FROM prescription_records WHERE status='Active'";
						$qsql = mysqli_query($con,$sql);
						echo mysqli_num_rows($qsql);
						?>
			        </div>
			        <div class="title">Diagnosis</div>
			      </div>
			      <div class="right">
			        <div class="count">
			        	<?php
						$sql = "SELECT * FROM treatment WHERE status='Active'";
						$qsql = mysqli_query($con,$sql);
						echo mysqli_num_rows($qsql);
						?>
			        </div>
			        <div class="title">Treatment</div>
			      </div>
			    </div>
			    <div class="bodytile">
			      <div class="title">Cure Stat</div>
			    </div>
			  </div>

			  <div class="tile job">
			    <div class="bodyheader">
			      <div class="count">
			      	<?php
					$sql = "SELECT * FROM admin WHERE status='Active'";
					$qsql = mysqli_query($con,$sql);
					echo mysqli_num_rows($qsql);
					?>
			      </div>
			      <div class="title"></div>
			    </div>
			    <div class="bodytile">
			      <div class="title">Total Admin</div>
			    </div>
			  </div>

			  <div class="tile job">
			    <div class="bodyheader">
			      <div class="count">
			      	<?php
					$sql = "SELECT * FROM department WHERE status='Active'";
					$qsql = mysqli_query($con,$sql);
					echo mysqli_num_rows($qsql);
					?>
			      </div>
			      <div class="title"></div>
			    </div>
			    <div class="bodytile">
			      <div class="title">Total Department</div>
			    </div>
			  </div>

			  <div class="tile job">
			    <div class="bodyheader">
			      <div class="count">
			      	<?php
						$sql = "SELECT * FROM doctor WHERE status='Active'";
						$qsql = mysqli_query($con,$sql);
						echo mysqli_num_rows($qsql);
						?>
			      </div>
			      <div class="title"></div>
			    </div>
			    <div class="bodytile">
			      <div class="title">Total Doctor</div>
			    </div>
			  </div>
			  <div class="tile wide resource">
			    <div class="bodyheader">
			      <div class="">
			        <div class="count">$ 
			        	<?php
							$sql = "SELECT SUM(bill_amount) as Revenue FROM billing_records WHERE status='Active'";
							$qsql = mysqli_query($con,$sql);
							$row = mysqli_fetch_array($qsql);
							echo($row['Revenue']/1000);
							//echo mysqli_num_rows($qsql);
							?>
			        </div>
			        <div class="title">Thousand</div>
			      </div>
			    </div>
			    <div class="bodytile">
			      <div class="title">Total Revenue</div>
			    </div>
			  </div>


			</div>
		</div>	
	</div>
<div style="height: 450px"></div>
<?php
include("footers.php");
?>
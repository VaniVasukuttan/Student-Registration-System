<?php
session_start();
include '../config/connection.php';
include_once '../controller/Mycontroller.php';
include 'student_header.php';
$vard=new Mycontroller();
$res3=$vard->s_viewsubject($_SESSION['dep']);

 
 ?>

<!------------------faculty list for superuser section starts------------------------->


<section class="margin_top"> 
	<div class="container margin_top">
		<div class="row">
		<div class="col-md-12">
		
		<div class="card-header text-center p-1 bg-info "><h2 class="text-white">SUBJECTS</h2></div>
			
		</div>				
			<div class="col-md-12 mt-3">
				<div style="overflow-x:auto;">
				<table class="container-fluid table ">
				
				  
				      <th>Department</th>
					  <th>Course</th>
					  <th>Semester</th>
					  <th>Subjects</th>
					</tr>
				  </thead>
				 
				  <?php
				while($row=mysqli_fetch_assoc($res3))
					{	
 					?>
					  <tbody id="myTable">
					  
						<tr>
						 <td><?php echo $row['id']; ?></td>
						  <td><?php echo $row['dep']; ?></td>
						  <td><?php echo $row['sem']; ?></td>
						  <td><?php echo $row['sub_code']; ?></td>
						  <td><?php echo $row['subject']; ?></td>
						</tr>
				
					</tbody>
					
					<?php 
					}
					?>

				</table>
			</div>
			</div>
		</div>
	</div>
</section>


<!----------------------------------------Footer Starts--------------------------------------------------->  
 
<?php include('footer.php');?>
<!----------------------------------------Footer End--------------------------------------------------->




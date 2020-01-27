<!------------------login page  starts------------------------->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1">
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/style.css">
	
		<title>Login</title>
	</head>
	<body>
	<!------------------starts first section----------------------->
		<header class="bg-color p-3 pl-3">
			<a class="text-dark text-decoration-none" href="index.php"><h5>YCT University</h5></a>
		</header>
		<section>
			<h4 class="pt-4 text-dark text-center text-h">We Ensure better education for a better world</h4>
			<div class="container-fluid bg-style media1">
			
				<div class="row">
					
					<div class="col-md-12 log-style">
						<form action="" name="loginform" method="post" class="m-auto jumbotron text-light p-3 form-style rounded">

							
							<h3 div class="text-center text-dark">Sign In</h3>
								<input type="text" class="form-control inputcomponent mt-md-3 space" name="email" required="required" placeholder="Email">
							
								<input type="password" class="form-control inputcomponent mt-md-3 space" name="password" required="required" placeholder="Password">
							
							<button type="submit" class="btn-primary mt-md-3 px-5 rounded shadow" name="submit" ><a class="a">Sign IN</a></button>
								
								<button type="button" class="btn btn-default loginbutton m-t-5">
								<span class="google-button__icon">	
								</span>
								<span class="google-button__text">Not Registred?<a href="registration.php">Sign Up</a></span>
								</button>

								<div class='text-center m-t-8'>
									<a href="#">Forgot Password?</a>
								</div>

						</form>
						<?php
                        if(isset($_POST['submit']))	
                         {   
                         include '../controller/Mycontroller.php';
                         $obj=new Mycontroller();
                         $obj->login($_POST['email'],$_POST['password']);
                   
						}
						?>
					</div>
				</div>
			</div>
		</section>
<!-----------------------------ends first section---------------->
<!-----------------------footer starts---------------->

	<footer class="bg-color py-2 foot text-center">
			<h5 class="text-center">Powered by YCT University </h5>
		</footer>	
		<script src="js/jquery.min.js"></script>
		<script src="js/validation.js"></script>
		<Script src="js/jquery.validate.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/popper.min.js"></script>

</body>
</html>
<!-----------------------------footr ends ---------------->
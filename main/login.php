<?php
session_start();
include '../includes/header.php';
?>

<main>

	<div class="jumbotron container">
  		<h1 class="display-4">Welcome</h1>
  		<hr class="my-4">
  		<h2 class="display-5">Library User Site</h2>
  		<p class="lead">Login or sign up below</p>
  		<hr class="my-4">
  		<form action="../model/index.php" method="post">
  			<input type="hidden" name="action" value="verify_login">
		  		<div class="container form-inline row justify-content-center">
					<div class="form-group ">
					   	<input type="text" readonly class="form-control-plaintext" name="fullnameText" value="Patron Name" id="fullnameText">
					</div>
					<div class="form-group ">
					   	<label for="fullName" class="sr-only">Full Name</label>
					   	<input type="text" class="form-control" name="fullName" placeholder="Full Name">
					</div>
					<div class="form-group ml-3"> REQUIRED </div>
					
					<div class="container form-inline row justify-content-center">
						<div class="form-group ">
					    	<input type="text" readonly class="form-control-plaintext" id="patronIDText" value="Patron Number">
						</div>
						<div class="form-group ">
					    	<label for="patronID" class="sr-only">ID</label>
					    	<input type="number" class="form-control" pattern="[0-9]{8}" title="Your ID must have 8 digits." placeholder="8 Digit ID" name="patronID" required>
					 	</div>
						<div class="form-group ml-3"> REQUIRED </div>
					</div>
				</div>
		 		<div class="container form-inline row justify-content-center mt-3">
		    		<input type="submit" class="btn btn-primary btn-lg mr-3" value="Login">
		    		<a class="btn btn-primary btn-lg" href="signup.php" role="button" value="signup">Signup</a>
	  			</div>
  		</form>
	</div>

</main>

<?php include '../includes/footer.php'; ?>
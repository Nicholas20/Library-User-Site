<?php
session_start();
include '../includes/header.php';
?>

<main>

	<div class="jumbotron container">
  		<h1 class="display-5">Library User Site</h1>
  		<p class="lead">Create your account here</p>
  		<hr class="my-4">
  		<form action="../model/index.php" method="post">
  			<input type="hidden" name="action" value="init_user">
	  		<div class="container form-inline row justify-content-center">
				<div class="form-group ">
				   	
				   	<input type="text" readonly class="form-control-plaintext" name="fullname" value="Patron Name" id="fullname">
				</div>
				<div class="form-group ">
				   	<label for="fullName" class="sr-only">Full Name</label>
				   	<input type="text" class="form-control" id="fullName" placeholder="Full Name">
				</div>
				<div class="form-group ml-3"> REQUIRED </div>
				
				<div class="container form-inline row justify-content-center">
					<div class="form-group ">
				    	
				    	<input type="text" readonly class="form-control-plaintext" id="patronID" value="8 Digit ID">
					</div>
					<div class="form-group ">
				    	<label for="patronID" class="sr-only">ID</label>
				    	<input type="number" class="form-control" id="num" pattern="[0-9]{8}" title="Your ID must have 8 digits." placeholder="Patron Number" required>
				 	</div>
					<div class="form-group ml-3"> REQUIRED </div>
				</div>
				<div class="container form-inline row justify-content-center">
					<div class="form-group ">
				    	
				    	<input type="text" readonly class="form-control-plaintext" id="patronEmail" value="Email">
					</div>
					<div class="form-group ">
				    	<label for="patronID" class="sr-only">ID</label>
				    	<input type="email" class="form-control" id="num" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title="Enter a valid email address" placeholder="example@mail.com" required>
				 	</div>
					<div class="form-group ml-3"> REQUIRED </div>
				</div>
			</div>
	 		<p class="lead text-center mt-3">
	    		<button type="submit" class="btn btn-primary btn-lg" value="Submit">Create Account</button>
  			</p>
  		</form>
	</div>

</main>

<?php include '../includes/footer.php'; ?>
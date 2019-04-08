<?php
session_start();
require("../model/database.php");
require("../model/functions_db.php");

$action = filter_input(INPUT_POST, 'action');
if ($action == NULL) {
	$action = filter_input(INPUT_GET, 'action');
	if ($action == NULL) {
		$action = 'login';
	}
}

if ($action == 'signup'){
	include('../main/signup.php');

} else if ($action == 'login'){
	include('../main/login.php');

} else if ($action == 'verify_login'){
	$fullName = filter_input(INPUT_POST, 'fullName');
	$name = explode(" ", $fullName);
	$fname = $name[0];
	$lname = $name[1];

    $patronID = filter_input(INPUT_POST, 'patronID');

    $result = verifyLogin($fname, $lname, $patronID);

    if ($result > 0){
    	header("Location: .?action=patronList");

    } else {
    	$loginLink = '../main/login.php';
    	$signupLink = '../main/signup.php';
    	echo nl2br ("There has been an error with your input: \n " . $fullName . "\n" . $patronID . "\n");
    	echo "Please try again. ";
    	echo " <a href='".$loginLink."'>Login</a> <a href='".$signupLink."'>Signup</a>";
    }

} else if ($action == 'patronList'){
	$currentBooks = booksCheckedOut($patronID);
	$orderedBooks = booksOnOrder($patronID);

	include('../main/main.php');

} else if ($action == 'init_user'){
	$fullName = filter_input(INPUT_POST, 'fullName');
	$name = explode(" ", $fullName);
	$fname = $name[0];
	$lname = $name[1];


	$patronID = filter_input(INPUT_POST, 'patronID');
	
	$email = filter_input(INPUT_POST, 'email');

	add_user($patronID, $fname, $lname, $email);
	header("Location: .?action=patronList");

} else if ($action == 'returnBook'){
	
} else if ($action == 'searchBook'){
	
} else if ($action == 'signout'){
	session_destroy();
	header("Location : .?action=login");
}

?>
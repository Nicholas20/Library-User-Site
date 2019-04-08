

function loginError(){
	alert("This account does not seem to exist. Please sign up or try again.");
}

function validateForm(){
	var validCard = validateCardNumber();
	var validEmail = validateEmail();

	if (validCard == true && validEmail == true){
		return true;
	}
}

function validateCardNumber(){
	var cardNum = document.getElementById('num').value;
	if (cardNum.length != 8){
		window.alert("Your Card Number must be 8 digits!");
	} else {
		return true;
	}
}

function validateEmail() 
{
	var emailValid = /^([a-zA-Z0-9_.-])+@(([a-zA-Z0-9-])+.)+([a-zA-Z0-9]{2,4})+$/;
	var email = document.getElementById('email').value;
	if (!emailValid.test(email)) {
		window.alert("You have entered an invalid email address!");
		return false;
	} else {
		return true;
	}
}

function verify(){
	// var users = [
	// {
	// 	name: 'John Doe',
	// 	cardNum: 12312312,
	// },
	// {
	// 	name: 'Charles Danger',
	// 	cardNum: 12345678,
	// },
	// {
	// 	name: 'Jane Doe',
	// 	cardNum: 87654321,
	// },
	// {
	// 	name: 'Jane Danger',
	// 	cardNum: 99999999,
	// },
	// {
	// 	name: 'admin admin',
	// 	cardNum: 24681012,
	// },
	// ];

	var loginVerified = false;

	var fullName = document.getElementById('fullname').value;
	var cardNum = document.getElementById('num').value;

	for (var i = users.length - 1; i >= 0; i--) {
		
		if(fullName == users[i].name && cardNum == users[i].cardNum) {
			loginVerified = true;
			login();
			break;
		}
	}

	if(loginVerified == false){
		window.alert("This user does not exist. Try again or create an account");
	}

}



function mailinglist(){
	// if(document.getElementById('sendMail').checked){
	// 	window.alert("You're on the mailing list!");
	// }
}
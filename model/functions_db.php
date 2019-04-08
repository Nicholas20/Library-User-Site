<?php
require '../model/database.php';

function addUser($patronID, $fname, $lname, $email) {
    global $db;
    $query = 'INSERT INTO patrons
             (cardNumber, fname, lname, email)
             VALUES
             (:patronID, :fname , :lname , :email)';
    $statement = $db->prepare($query);
    $statement->bindValue(':patronID', $cardNumber);
    $statement->bindValue(':fname', $fname);
    $statement->bindValue(':lname', $lname);
    $statement->bindValue(':email', $email);
    $statement->execute();    
    $statement->closeCursor();
}

function verifyLogin($fname, $lname, $patronID) {
    global $db;
    $query = "SELECT * FROM patrons
             WHERE cardNumber = $patronID
             AND fname = '$fname'
             AND lname = '$lname'";
    $statement = $db->prepare($query);
    $statement->execute();    
    $q = $statement->fetchAll();
    $statement->closeCursor(); 
    $rows = mysql_num_rows($q);
    return $rows;
}

function books($bookID) {
	global $db;
	$query = 'SELECT * FROM books
             WHERE callNumber = $bookID';
	$statement = $db->prepare($query);
    $statement->execute();    
    $books = $statement->fetchAll();
    $statement->closeCursor(); 
    return $books;
}

function booksCheckedOut($patronID) {
    global $db;
    $query = 'SELECT * FROM booksCheckedOut
             WHERE cardNumber = $patronID';
    $statement = $db->prepare($query);
    $statement->execute();    
    $patronBooks = $statement->fetchAll();
    $statement->closeCursor(); 
    return $patronBooks;
}

function booksOnOrder($patronID) {
    global $db;
    $query = 'SELECT * FROM booksOnOrder
              WHERE cardNumber = $patronID';
    $statement = $db->prepare($query);
    $statement->execute();    
    $c = $statement->fetchAll();
    $statement->closeCursor(); 
    return $c; 
}

?>
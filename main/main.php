<?php
session_start();
include '../includes/header.php';
?>

<main>

	<div class="jumbotron jumbotron-fluid">
		<div class="container text-center">
			<h1 class="display-4 text-black"> Library User System </h1>
			
			<table>
				<tr> Search </tr>

				<tr>
					<th>ID</th>
					<th>Book One</th>
					<th>Book Two</th>
					<th>Book Three</th>
					<th>Book Four</th>
					<th>Book Five</th>
					<th>Change Book</th>
					<th>Return</th>
				</tr>
				<tr>
					
					<td><?php echo $currentBooks['patronID'] ?></td>
					<td><?php echo $currentBooks['bookOneID'] ?></td>
					<td><?php echo $currentBooks['bookTwoID'] ?></td>
					<td><?php echo $currentBooks['bookThreeID'] ?></td>
					<td><?php echo $currentBooks['bookFourID'] ?></td>
					<td><?php echo $currentBooks['bookFiveID'] ?></td>
					<td>
						<form action="../model/index.php">
							<input type="hidden" name="action" value="edit_book">
							<input type="hidden" name="id" value="<?php echo $book['']; ?>">
							<input type="submit" name="return" value="Edit" class="btn btn-primary btn-sm mr-3">
						</form>
					</td>
					<td>
						<form action="../model/index.php">
							<input type="hidden" name="action" value="return_book">
							<input type="hidden" name="id" value="<?php echo $book['']; ?>">
							<input type="submit" name="delete" value="Return" class="btn btn-primary btn-sm mr-3">
						</form>
					</td>
				</tr>
			</table>

			<table>
				<tr>
					<th>ID</th>
					<th>Book One</th>
					<th>Book Two</th>
					<th>Change Book</th>
					<th>Return</th>
				</tr>
				<tr>
					
					<td><?php echo $orderedBooks['patronID'] ?></td>
					<td><?php echo $orderedBooks['bookOneID'] ?></td>
					<td><?php echo $orderedBooks['bookTwoID'] ?></td>
					<td>
						<form action="../model/index.php">
							<input type="hidden" name="action" value="edit_book">
							<input type="hidden" name="id" value="<?php echo $book['patronID']; ?>">
							<input type="submit" name="return" value="Edit" class="btn btn-primary btn-sm mr-3">
						</form>
					</td>
					<td>
						<form action="../model/index.php">
							<input type="hidden" name="action" value="return_book">
							<input type="hidden" name="id" value="<?php echo $book['patronID']; ?>">
							<input type="submit" name="delete" value="Return" class="btn btn-primary btn-sm mr-3">
						</form>
					</td>
				</tr>
			</table>


		</div>
	</div>

</main>

<?php include '../includes/footer.php'; ?>
<!DOCTYPE html>
<html>
<head>
	<title>Midterm Project</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script type="text/javascript" src="js/main.js"></script>
</head>
<body>
	<header><h1>Pace Ice Cream Shop</h1></header>
	<section>
		<article>
			<form action="sale.php" method="get">
				<label>flavor:
					<select name="flavor" id="flavor"> 
					<?php include 'flavors.php';?>
					</select>
				</label>
				<label>scoops:
					<input name="scoops" type="text" id="scoops"></input>
				</label>
				<input type="submit" value="Submit PHP">
				<input type="button" value="Submit AJAX" onclick="sendForm()">
			</form>
		</article>
	</section>
</body>
</html>
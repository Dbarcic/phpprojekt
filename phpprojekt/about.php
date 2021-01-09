<?php
require('./frontend/header.php');
require('./frontend/footer.php');
require('./util/db.php');

$stmt = $db->query('SELECT * FROM about');
$about = $stmt->fetchAll();

echo $header;
?>

<main>
	<h1>About</h1>
	<h2>Career</h2>
	<video width="50%" controls>
		<source src="video/uzumakianimeinterview.mp4" type="video/mp4">
		Your browser does not support HTML5 video.
	</video>
	<?php foreach ($about as $ab) { ?>
	<p><?= $ab['body'] ?></p>
	<?php } ?>
	<p>Original <a href="https://youtu.be/jtM5x_4SejA" target="_blank">youtube.com</a></p>
</main>

<?php
echo $footer;
?>
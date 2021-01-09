<?php
require('./frontend/header.php');
require('./frontend/footer.php');
require('./util/db.php');

echo $header;

$stmt = $db->query('SELECT * FROM news2');
$news = $stmt->fetchAll();
?>

<main>
	<h1>NEWS</h1>
	<div id="news_gallery">
		<figure id="1">
			<img src="news/woh.jpg" alt="Ingame screenshot" title="Ingame screenshot">
			<figcaption>In-game screenshot.<figcaption>
		</figure>
		<figure id="2">
			<img src="news/woh2.png" alt="Ingame screenshot" title="Ingame screenshot">
			<figcaption>In-game screenshot.<figcaption>
		</figure>
		<figure id="3">
			<img src="news/woh3.jpg" alt="Ingame screenshot" title="Ingame screenshot">
			<figcaption>In-game screenshot.<figcaption>
		</figure>
	</div>
	<hr>
	<div class="news">
		<h2>Behold the dreadful tale of WORLD OF HORROR.</h2>
		<p class="description">The Old Gods are reawakening, clawing their way back.</p>
		<?php foreach($news as $new){?>
		<p><?= $new['body']?></p>
		<?php } ?>
		<p>Source: <a href="https://www.wohgame.com/" target="_blank">WOH</a></p>
		<p><a href="news.php">Go back</a></p>
	</div>
</main>

<?php
echo $footer;
?>
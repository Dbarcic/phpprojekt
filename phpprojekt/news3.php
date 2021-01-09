<?php
require('./frontend/header.php');
require('./frontend/footer.php');
require('./util/db.php');

echo $header;

$stmt = $db->query('SELECT * FROM news3');
$news = $stmt->fetchAll();
?>

<main>
	<h1>NEWS</h1>
	<div id="news_gallery">
		<figure id="1">
			<img src="news/news3.webp" alt="Death Stranding" title="Death Stranding">
			<figcaption>Screenshot from Kojima's game Death Stranding<figcaption>
		</figure>
	</div>
	<hr>
	<div class="news">
		<h2>Hideo Kojima wants to work with manga artist Junji Ito on a horror game</h2>
		<p class="description">He invited the artist to work on a horror game 'he may be doing'.</p>
		<?php foreach ($news as $new) { ?>
		<p><?= $new['body'] ?></p>
		<?php } ?>
		<p>Source: <a href="https://www.pcgamer.com/hideo-kojima-wants-to-work-with-manga-artist-junji-ito-on-a-horror-game/" target="_blank">PC Gamer</a></p>
		<p><a href="news.php">Go back</a></p>
	</div>
</main>

<?php
echo $footer;
?>
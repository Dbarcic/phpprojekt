<?php
require('./frontend/header.php');
require('./frontend/footer.php');

echo $header;
?>

<main>
	<h1>NEWS</h1>
	<div class="news">
		<a href="news3.php"><img src="news/news3.webp" alt="Kojima Ito" title="Kojima Ito"></a>
		<h2>Kojima wants to work with manga artist Junji Ito</h2>
		<p>Manga artist Junji Ito says he overstated Hideo Kojima's offer of <a href="news3.php">More ...</a></p>
		<p><time datetime="2020-05-28">28 July 2020</time></p>
		<hr>
		<a href="news2.php"><img src="news/woh.jpg" alt="Behold the dread" title="Behold the Dreadful tale of WORLD OF HORROR"></a>
		<h2>Behold the Dreadful tale of WORLD OF HORROR</h2>
		<p>The unsettling cosmic horror retro RPG from Panstasz and Ysbryd Games <a href="news2.php">More ...</a></p>
		<p><time datetime="2020-03-12">12 March 2020</time></p>
		<hr>
		<a href="news1.php"><img src="news/news1.jpg" alt="Top 10 manga to read" title="Top 10 manga to read"></a>
		<h2>The top 10 manga stories from Junji Ito</h2>
		<p>There are a lot of Junji Ito books. His longer horror stories – Tomie, Uzumaki, and Gyo – are each <a href="news1.php">More ...</a></p> 
		<p><time datetime="2020-01-17">17 January 2020</time></p>
		<hr>
	</div>
</main>

<?php
echo $footer;
?>
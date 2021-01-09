<?php
require('./frontend/header.php');
require('./frontend/footer.php');
require('./util/db.php');

echo $header;

$stmt = $db->query('SELECT * FROM news');
$news = $stmt->fetchAll();
?>

<main>
	<h1>NEWS</h1>
	<div class="container">
  		<div class="mySlides">
    		<div class="numbertext">1 / 6</div>
    		<img src="news/news1.jpg" style="width:100%">
  		</div>

  		<div class="mySlides">
    		<div class="numbertext">2 / 6</div>
    		<img src="news/news1-1.jpg" style="width:100%">
  		</div>

  		<div class="mySlides">
    		<div class="numbertext">3 / 6</div>
    		<img src="news/story1.jpg" style="width:100%">
  		</div>
    
  		<div class="mySlides">
    		<div class="numbertext">4 / 6</div>
    		<img src="news/story2.webp" style="width:100%">
  		</div>

  		<div class="mySlides">
    		<div class="numbertext">5 / 6</div>
    		<img src="news/story3.jpg" style="width:100%">
  		</div>
    
  		<div class="mySlides">
    		<div class="numbertext">6 / 6</div>
    		<img src="news/story4.jpg" style="width:100%">
  		</div>
    
  		<a class="prev" onclick="plusSlides(-1)">❮</a>
  		<a class="next" onclick="plusSlides(1)">❯</a>

  		<div class="caption-container">
    		<p id="caption"></p>
  		</div>

  		<div class="row">
    		<div class="column">
      			<img class="demo cursor" src="news/news1.jpg" style="width:100%" onclick="currentSlide(1)" alt="Uzumaki">
    		</div>
    		<div class="column">
      			<img class="demo cursor" src="news/news1-1.jpg" style="width:100%" onclick="currentSlide(2)" alt="Hanging Blimp">
    		</div>
    		<div class="column">
      			<img class="demo cursor" src="news/story1.jpg" style="width:100%" onclick="currentSlide(3)" alt="Hanging Blimp">
    		</div>
    		<div class="column">
      			<img class="demo cursor" src="news/story2.jpg" style="width:100%" onclick="currentSlide(4)" alt="The Enigma of Amigara Fault">
    		</div>
    		<div class="column">
      			<img class="demo cursor" src="news/story3.jpg" style="width:100%" onclick="currentSlide(5)" alt="The Thing That Drifted Ashore">
    		</div>    
    		<div class="column">
      			<img class="demo cursor" src="news/story4.jpg" style="width:100%" onclick="currentSlide(6)" alt="Greased">
    		</div>
  		</div>
	</div>

	<script>
		var slideIndex = 1;
		showSlides(slideIndex);

		function plusSlides(n) {
  			showSlides(slideIndex += n);
		}

		function currentSlide(n) {
  			showSlides(slideIndex = n);
		}

		function showSlides(n) {
  			var i;
 			var slides = document.getElementsByClassName("mySlides");
		  	var dots = document.getElementsByClassName("demo");
  			var captionText = document.getElementById("caption");
  			if (n > slides.length) {slideIndex = 1}
  			if (n < 1) {slideIndex = slides.length}
  			for (i = 0; i < slides.length; i++) {
      			slides[i].style.display = "none";
  			}
  			for (i = 0; i < dots.length; i++) {
      			dots[i].className = dots[i].className.replace(" active", "");
  			}
  			slides[slideIndex-1].style.display = "block";
  			dots[slideIndex-1].className += " active";
  			captionText.innerHTML = dots[slideIndex-1].alt;
		}
	</script>

	<hr>
	<div class="news">
		<h2>The top 10 manga stories from Junji Ito</h2>
		<p class="description">There are a lot of Junji Ito books. His longer horror stories – Tomie, Uzumaki, and Gyo – are each available as solo books.</p>
		<p>Then there’s his phenomenal adaptation of Frankenstein, which is perhaps the best adaptation of Shelley’s original novel that’s ever been made. Finally, there’s a wide selection of short stories. 
			Junji Ito’s short stories do the best job of showcasing the diversity of horror in his ideas, his writing, and his art skills, 
			and they can be found in collections: Shiver, Fragments of Horror, and Smashed, as well as featuring as bonus stories in the previously mentioned full-length books.</p>
		<?php foreach($news as $n) { ?>
		<p class="description"><?= $n['titles']; ?></p>
		<p><?= $n['body']; ?></p>
		<?php } ?>
		<p><a href="news.php">Go back</a></p>
	</div>
</main>
<?php
echo $footer;
?>
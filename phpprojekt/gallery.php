<?php
require('./frontend/header.php');
require('./frontend/footer.php');

echo $header;
?>

<main>
	<h1>Gallery</h1>
	<style>
		* {box-sizing: border-box;}
		body {font-family: Verdana, sans-serif;}
		.mySlides {display: none;}
		img {vertical-align: middle;}

		.slideshow-container {
  			max-width: 1000px;
  			position: relative;
  			margin: auto;
		}

		.text {
  			color: #f2f2f2;
  			font-size: 15px;
  			padding: 8px 12px;
  			position: absolute;
  			bottom: 8px;
  			width: 100%;
  			text-align: center;
		}

		.numbertext {
  			color: #f2f2f2;
  			font-size: 12px;
  			padding: 8px 12px;
  			position: absolute;
  			top: 0;
		}

		.dot {
  			height: 15px;
  			width: 15px;
  			margin: 0 2px;
  			background-color: #bbb;
  			border-radius: 50%;
  			display: inline-block;
  			transition: background-color 0.6s ease;
		}

		.active {
  			background-color: #717171;
		}

		.fade {
  		-webkit-animation-name: fade;
  		-webkit-animation-duration: 1.5s;
  		animation-name: fade;
  		animation-duration: 1.5s;
		}

		@-webkit-keyframes fade {
  			from {opacity: .4} 
  			to {opacity: 1}
		}

		@keyframes fade {
  		from {opacity: .4} 
  		to {opacity: 1}
		}

		@media only screen and (max-width: 300px) {
  		.text {font-size: 11px}
		}
</style>
<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 5</div>
  <img src="gallery/slika1.jpg" style="width:100%">
  <div class="text">Night</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 5</div>
  <img src="gallery/slika2.jpg" style="width:100%">
  <div class="text">City</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 5</div>
  <img src="gallery/slika3.jpg" style="width:100%">
  <div class="text">Storm</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">4 / 5</div>
  <img src="gallery/slika4.jpg" style="width:100%">
  <div class="text">Woods</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">5 / 5</div>
  <img src="gallery/slika5.jpg" style="width:100%">
  <div class="text">Cottage</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span>
  <span class="dot"></span>
  <span class="dot"></span>
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 4000);
}
</script>
</main>

<?php
echo $footer;
?>
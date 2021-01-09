<?php
require('./frontend/header.php');
require('./frontend/footer.php');
require('./util/db.php');

echo $header;

$stmt = $db->query('SELECT * FROM countries');
$sel = $stmt->fetchAll();
?>

<main>
	<h1>Contact Form</h1>
	<div id="contact">
		<form action="http://work2.eburza.hr/pwa/responzive-page/send-contact.php" id="contact_form" name="contact_form" method="POST">
			<div class="namelname">
				<label for="fname">Your Name *</label>
				<input type="text" id="fname" name="firstname" placeholder="First name.." required>
				<input type="text" id="lname" name="lastname" placeholder="Last name.." required>
			</div>
			
			<div class="email"> 
				<label for="email">Your E-mail *</label>
				<input type="email" id="email" name="email" placeholder="Your e-mail.." required>
			</div>
			
			<div class="countries"> 
				<label for=country>Country</label>
				<select id="country" name="country">
				<?php foreach($sel as $s) { ?>
					<option value="">Please select</option>
					<option value=""><?= $s['name']; ?></option>
				<?php } ?>
				</select>
			</div>
			
			<div class="tarea">
				<label for="sub">Question</label>
				<textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>
			</div>
			<hr>
			<div class="sub">
				<input type="submit" value="Submit">
			</div>
		</form>
	</div>
</main>

<?php
echo $footer;
?>
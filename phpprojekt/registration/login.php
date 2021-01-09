<?php
  require('../util/db.php');

  $errors = array();

  if(isset($_POST['username']) && isset($_POST['password']))
  {
	  $username = $_POST['username'];
	  $password = $_POST['password'];

	  if (empty($username))	{  array_push($errors, "Username is required");	}
	  if (empty($password))	{  array_push($errors, "Password is required"); }

	  if(count($errors) == 0){
		$sql = 'SELECT username, password FROM users WHERE username = :username';
	  	$stmt = $db->prepare($sql);
	  	$stmt->bindValue(':username', $username);
	  	$stmt->execute();
		$user = $stmt->fetch();

		$validPassword = password_verify($password, $user['password']);

		if($validPassword)
	  	{
		  $_SESSION['user'] = $user;
		  header('Location: /phpprojekt/index.php');
		  exit;
		}
	} else {
		array_push($errors, "Wrong username/password combination");
	}
}
?>
<!DOCTYPE html>
<html>
<head>
  <title>DigiBase Login</title>
  <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
  <div class="header">
  	<h2>Login</h2>
  </div>
  <form method="post" action="login.php">
  <?php if (count($errors) > 0) : ?>
	  <div class="error">
		<?php foreach ($errors as $er) : ?>
			<p><?php echo $er ?><p>
		<?php endforeach ?>
	  </div>
	<?php endif ?>
  	<div class="input-group">
  		<label for="username">Username</label>
  		<input type="text" name="username" id="username">
  	</div>
  	<div class="input-group">
  		<label for="password">Password</label>
  		<input type="password" name="password" id="password">
  	</div>
  	<div class="input-group">
  		<button type="submit" class="btn">Login</button>
  	</div>
  	<p>
  		Not yet a member? <a href="register.php">Sign up</a>
  	</p>
  </form>
</body>
</html>
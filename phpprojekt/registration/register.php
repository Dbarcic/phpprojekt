<?php
  require('../util/db.php');

  $errors = array();
  $username = "";
  $email = "";

  if(isset($_POST['reg_user']))
  {
	  $username = $_POST['username'];
	  $email = $_POST['email'];
	  $password_1 = $_POST['password_1'];
	  $password_2 = $_POST['password_2'];

	  if (empty($username)) { array_push($errors, "Username is required"); }
	  if (empty($email)) { array_push($errors, "Email is required"); }
  	  if (empty($password_1)) { array_push($errors, "Password is required"); }
  	  if ($password_1 != $password_2) {
	  array_push($errors, "The two passwords do not match");}

	  $user_check = 'SELECT * FROM users WHERE username = :username OR email = :email LIMIT 1';
	  $stmt = $db->prepare($user_check);
	  $stmt->bindValue(':username', $username);
	  $stmt->bindValue(':email', $email);
	  $stmt-> execute();
	  $user = $stmt->fetch();

	  if($user) {
		  if ($user['username'] === $username){
			  array_push($errors, "Username already exists!");
		  }
		  if ($user['email'] === $email){
			  array_push($errors, "This email is in use");
		  }
	  }

	  if(count($errors) == 0)
	  {
	  $hased_password = password_hash($password_1, PASSWORD_BCRYPT);

	  $sql = 'INSERT INTO users (username, password, email) VALUES (:username, :password_1, :email)';
	  $stmt = $db->prepare($sql);
	  $stmt->bindValue(':username', $username);
	  $stmt->bindValue(':email', $email);
	  $stmt->bindValue(':password_1', $hased_password);
	  $stmt->execute();
	  header('Location: /phpprojekt/index.php');
	  }
  }
?>
<!DOCTYPE html>
<html>
<head>
  <title>Sign up</title>
  <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
  <div class="header">

  	<h2>Sign up</h2>
  </div>
	
  <form method="post" action="register.php">
  	<?php if (count($errors) > 0) : ?>
	  <div class="error">
		<?php foreach ($errors as $er) : ?>
			<p><?php echo $er ?><p>
		<?php endforeach ?>
	  </div>
	<?php endif ?>
  	<div class="input-group">
  	  <label for="username">Username</label>
  	  <input type="text" name="username" id="username" value="<?php echo $username; ?>">
  	</div>
  	<div class="input-group">
  	  <label for="email">Email</label>
  	  <input type="email" name="email" id="email" value="<?php echo $email; ?>">
  	</div>
  	<div class="input-group">
  	  <label for="password_1">Password</label>
  	  <input type="password" name="password_1" id="password_1">
  	</div>
  	<div class="input-group">
  	  <label for="password_2">Confirm password</label>
  	  <input type="password" name="password_2" id="password_2">
  	</div>
  	<div class="input-group">
  	  <button type="submit" class="btn" name="reg_user">Register</button>
  	</div>
  	<p>
  		Already a member? <a href="login.php">Sign in</a>
  	</p>
  </form>
</body>
</html>
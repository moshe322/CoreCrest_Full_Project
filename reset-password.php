<?php
session_start();
require_once __DIR__.'/config/db.php';

$error="";

if(!isset($_SESSION['reset_email']) || !isset($_SESSION['otp_verified'])){
    header("Location:forgot-password.php");
    exit;
}

if(isset($_POST['reset'])){

    $email=$_SESSION['reset_email'];
    $password=$_POST['password'];
    $confirm=$_POST['confirm_password'];

    if($password !== $confirm){
        $error="Passwords do not match";
    }else{

        $hash=password_hash($password,PASSWORD_DEFAULT);

        $stmt=$conn->prepare(
            "UPDATE users_logins_table SET password=?, reset_otp=NULL, reset_otp_expiry=NULL WHERE email=?"
        );

        $stmt->bind_param("ss",$hash,$email);
        $stmt->execute();

        unset($_SESSION['reset_email']);
        unset($_SESSION['otp_verified']);

        header("Location:login.php");
        exit;
    }
}
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Reset Password</title>

<link href="assets/vendors/bootstrap/bootstrap.min.css" rel="stylesheet">

<style>
body{
min-height:100vh;
background:radial-gradient(circle at top left,rgba(255,255,255,.30),transparent 28%),linear-gradient(135deg,#002b5b,#00b4d8,#00c896);
font-family:Arial,sans-serif;
}
.auth-wrapper{min-height:100vh;display:flex;align-items:center;justify-content:center;padding:25px;}
.auth-card{background:rgba(255,255,255,.96);border-radius:25px;padding:30px;max-width:420px;width:100%;box-shadow:0 25px 60px rgba(0,0,0,.3);}
.form-control{border-radius:12px;padding:11px;}
.btn{border-radius:12px;}
.logo{width:120px;}
</style>
</head>

<body>
<div class="auth-wrapper">
<div class="auth-card">

<div class="text-center mb-3">
<img class="logo" src="assets/images/Core-Crest-logo.png">
<h3 class="text-danger mt-3">Reset Password</h3>
<p class="text-muted">Create your new password</p>
</div>

<?php if($error){ ?>
<div class="alert alert-danger"><?php echo htmlspecialchars($error); ?></div>
<?php } ?>

<form method="POST">

<div class="mb-3">
<label>New Password</label>
<input type="password" name="password" class="form-control" required>
</div>

<div class="mb-3">
<label>Confirm Password</label>
<input type="password" name="confirm_password" class="form-control" required>
</div>

<button name="reset" class="btn btn-danger w-100">Reset Password</button>

</form>

</div>
</div>
</body>
</html>

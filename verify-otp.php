<?php
session_start();
require_once __DIR__.'/config/db.php';

$error="";

if(!isset($_SESSION['reset_email'])){
    header("Location:forgot-password.php");
    exit;
}

if(isset($_POST['verify'])){

    $email=$_SESSION['reset_email'];
    $otp=$_POST['otp'];

    $stmt=$conn->prepare(
        "SELECT * FROM users_logins_table WHERE email=? AND reset_otp=? AND reset_otp_expiry > NOW() LIMIT 1"
    );

    $stmt->bind_param("ss",$email,$otp);
    $stmt->execute();
    $result=$stmt->get_result();

    if($result->num_rows>0){
        $_SESSION['otp_verified']=true;
        header("Location:reset-password.php");
        exit;
    }else{
        $error="Invalid or expired OTP";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Verify OTP</title>

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
<h3 class="text-success mt-3">Verify OTP</h3>
<p class="text-muted">OTP sent to your registered email</p>
</div>

<?php if($error){ ?>
<div class="alert alert-danger"><?php echo htmlspecialchars($error); ?></div>
<?php } ?>

<form method="POST">

<div class="mb-3">
<label>Enter OTP</label>
<input type="text" name="otp" class="form-control" required>
</div>

<button name="verify" class="btn btn-success w-100">Verify OTP</button>

</form>

<div class="text-center mt-3">
<a href="forgot-password.php">Resend OTP</a>
</div>

</div>
</div>
</body>
</html>

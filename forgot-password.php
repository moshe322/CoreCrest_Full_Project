<?php
session_start();
require_once __DIR__.'/config/db.php';
require __DIR__.'/vendor/autoload.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

$msg="";
$error="";

if(isset($_POST['send'])){

    $email=$_POST['email'];

    $stmt=$conn->prepare("SELECT * FROM users_logins_table WHERE email=? LIMIT 1");
    $stmt->bind_param("s",$email);
    $stmt->execute();
    $result=$stmt->get_result();

    if($result->num_rows>0){

        $otp=rand(100000,999999);
        $expiry=date("Y-m-d H:i:s",strtotime("+10 minutes"));

        $update=$conn->prepare("UPDATE users_logins_table SET reset_otp=?, reset_otp_expiry=? WHERE email=?");
        $update->bind_param("sss",$otp,$expiry,$email);
        $update->execute();

        $mail=new PHPMailer(true);

        try{
            $mail->isSMTP();
            $mail->Host='smtp.gmail.com';
            $mail->SMTPAuth=true;

            $mail->Username='corecrest15@gmail.com';
            $mail->Password='wbza oesv qtxi mhws';

            $mail->SMTPSecure='tls';
            $mail->Port=587;

            $mail->setFrom('corecrest15@gmail.com','CoreCrest HR');
            $mail->addAddress($email);

            $mail->Subject='CoreCrest Password Reset OTP';
            $mail->Body="Your CoreCrest password reset OTP is: $otp";

            $mail->send();

            $_SESSION['reset_email']=$email;

            header("Location:verify-otp.php");
            exit;

        }catch(Exception $e){
            $error="OTP email failed. Check Gmail app password.";
        }

    }else{
        $error="Email not found";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Forgot Password</title>

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
<h3 class="text-primary mt-3">Forgot Password</h3>
<p class="text-muted">Enter your registered email</p>
</div>

<?php if($error){ ?>
<div class="alert alert-danger"><?php echo htmlspecialchars($error); ?></div>
<?php } ?>

<form method="POST">

<div class="mb-3">
<label>Email Address</label>
<input type="email" name="email" class="form-control" required>
</div>

<button name="send" class="btn btn-primary w-100">Send OTP</button>

</form>

<div class="text-center mt-3">
<a href="login.php">Back to Login</a>
</div>

</div>
</div>
</body>
</html>

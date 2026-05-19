<?php
session_start();
require_once __DIR__ . '/config/db.php';

$error = "";

if(isset($_POST['login'])){

    $email = trim($_POST['email']);
    $password = trim($_POST['password']);

    $stmt = $conn->prepare("SELECT * FROM users_logins_table WHERE email=? LIMIT 1");
    $stmt->bind_param("s",$email);
    $stmt->execute();

    $result = $stmt->get_result();

    if($result->num_rows == 1){

        $user = $result->fetch_assoc();

        if(password_verify($password,$user['password'])){

            $_SESSION['user_id']=$user['id'];
            $_SESSION['user_name']=$user['name'];
            $_SESSION['user_email']=$user['email'];
            $_SESSION['role']=$user['role'];

            header("Location:index.php");
            exit;

        }else{
            $error="Invalid password. Please use Forgot Password to reset.";
        }

    }else{

        $default_name = explode("@",$email)[0];
        $hash = password_hash($password,PASSWORD_DEFAULT);

        $stmt = $conn->prepare(
            "INSERT INTO users_logins_table (name,email,password,role)
             VALUES (?,?,?,'user')"
        );

        $stmt->bind_param("sss",$default_name,$email,$hash);

        if($stmt->execute()){

            $_SESSION['user_id']=$conn->insert_id;
            $_SESSION['user_name']=$default_name;
            $_SESSION['user_email']=$email;
            $_SESSION['role']='user';

            header("Location:index.php");
            exit;

        }else{
            $error="Unable to create login. Please try again.";
        }
    }
}
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CoreCrest Login</title>

<link href="assets/vendors/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="assets/vendors/bootstrap-icons/font/bootstrap-icons.min.css" rel="stylesheet">

<style>
body{
min-height:100vh;
background:radial-gradient(circle at top left,rgba(255,255,255,.30),transparent 28%),linear-gradient(135deg,#002b5b,#00b4d8,#00c896);
font-family:Arial,sans-serif;
overflow:hidden;
}

.login-wrapper{
min-height:100vh;
display:flex;
align-items:center;
justify-content:center;
padding:25px;
}

.login-card{
background:rgba(255,255,255,.96);
border-radius:25px;
padding:25px;
max-width:340px;
margin:auto;
box-shadow:0 25px 60px rgba(0,0,0,.3);
}

.info-box{
background:rgba(255,255,255,.16);
color:white;
border-radius:30px;
padding:55px;
backdrop-filter:blur(12px);
box-shadow:0 25px 60px rgba(0,0,0,.28);
border:1px solid rgba(255,255,255,.25);
width:100%;
min-height:84vh;
display:flex;
flex-direction:column;
justify-content:center;
}

.brand-title{
font-size:48px;
font-weight:800;
}

.feature-box{
background:rgba(255,255,255,.18);
border-radius:18px;
padding:16px;
margin-top:16px;
}

.logo{
width:110px;
}

.form-control{
border-radius:12px;
padding:10px;
}

.btn{
border-radius:12px;
}

.small-text{
font-size:14px;
}
</style>
</head>

<body>

<div class="login-wrapper">
<div class="container-fluid">
<div class="row align-items-center justify-content-center g-5">

<div class="col-lg-3 col-md-4">
<div class="login-card">

<div class="text-center mb-3">
<img class="logo" src="assets/images/Core-Crest-logo.png">
<h3 class="text-primary mt-3">Welcome Back</h3>
<p class="text-muted small-text">Enter email and password to continue</p>
</div>

<?php if($error){ ?>
<div class="alert alert-danger py-2">
<?php echo htmlspecialchars($error); ?>
</div>
<?php } ?>

<form method="POST">

<div class="mb-3">
<label>Email Address</label>
<input type="email" name="email" class="form-control" required>
</div>

<div class="mb-3">
<label>Password</label>
<input type="password" name="password" class="form-control" required>
</div>

<button type="submit" name="login" class="btn btn-primary w-100">
Login
</button>

<div class="text-center mt-3">
<a href="forgot-password.php" class="text-primary small-text">
Forgot Password?
</a>
</div>

</form>

</div>
</div>

<div class="col-lg-9 col-md-8">
<div class="info-box">

<h1 class="brand-title">CoreCrest HR Services</h1>

<p class="lead mt-3">
Empowering businesses with reliable staffing, recruitment, payroll management, workforce transformation and talent acquisition solutions.
</p>

<div class="feature-box">
<i class="bi bi-people-fill"></i>
<strong> Smart Recruitment</strong>
<p class="mb-0">Find skilled candidates faster with organized hiring workflows.</p>
</div>

<div class="feature-box">
<i class="bi bi-shield-check"></i>
<strong> Secure Access</strong>
<p class="mb-0">User login, admin control and database-driven management.</p>
</div>

<div class="feature-box">
<i class="bi bi-graph-up-arrow"></i>
<strong> Business Growth</strong>
<p class="mb-0">Track applications, contacts, users and HR operations.</p>
</div>

<div class="feature-box">
<i class="bi bi-globe"></i>
<strong> Workforce Solutions</strong>
<p class="mb-0">Domestic and overseas recruitment support.</p>
</div>

</div>
</div>

</div>
</div>
</div>

</body>
</html>

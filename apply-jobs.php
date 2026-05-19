<?php
session_start();

if(!isset($_SESSION['user_id'])){
    header("Location: login.php");
    exit;
}

require_once __DIR__ . '/config/db.php';

$success = "";
$error = "";

if(isset($_POST['submit_application'])){

    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $state = $_POST['state'];
    $city = $_POST['city'];
    $experience = $_POST['experience'];
    $industry = $_POST['industry'];
    $functional_area = $_POST['area'];
    $role = $_POST['role'];
    $company = $_POST['company'];
    $designation = $_POST['designation'];

    $resume = "";

    if(!empty($_FILES['resume']['name'])){

        $resume = time() . "_" . basename($_FILES['resume']['name']);

        move_uploaded_file(
            $_FILES['resume']['tmp_name'],
            __DIR__ . "/uploads/" . $resume
        );
    }

    $stmt = $conn->prepare("
        INSERT INTO job_applications
        (name,email,phone,state,city,experience,industry,functional_area,role_name,company,designation,resume)
        VALUES
        (?,?,?,?,?,?,?,?,?,?,?,?)
    ");

    $stmt->bind_param(
        "ssssssssssss",
        $name,
        $email,
        $phone,
        $state,
        $city,
        $experience,
        $industry,
        $functional_area,
        $role,
        $company,
        $designation,
        $resume
    );

    if($stmt->execute()){

        require __DIR__ . '/vendor/autoload.php';

        $logged_user_email = $_SESSION['user_email'];
        $resume_link = "https://crest.deployapp.online/uploads/" . $resume;

        $mail = new PHPMailer\PHPMailer\PHPMailer(true);

        try{

            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';
            $mail->SMTPAuth = true;

            $mail->Username = 'corecrest15@gmail.com';
            $mail->Password = 'wbza oesv qtxi mhws';

            $mail->SMTPSecure = 'tls';
            $mail->Port = 587;

            $mail->setFrom('corecrest15@gmail.com','CoreCrest HR');
            $mail->addAddress($logged_user_email);

            $mail->isHTML(true);
            $mail->Subject = 'CoreCrest Job Application Submitted Successfully';

            $mail->Body = "
                <h2>Your Job Application Submitted Successfully</h2>
                <table border='1' cellpadding='8' cellspacing='0'>
                    <tr><th>Name</th><td>$name</td></tr>
                    <tr><th>Email</th><td>$email</td></tr>
                    <tr><th>Phone</th><td>$phone</td></tr>
                    <tr><th>State</th><td>$state</td></tr>
                    <tr><th>City</th><td>$city</td></tr>
                    <tr><th>Experience</th><td>$experience</td></tr>
                    <tr><th>Industry</th><td>$industry</td></tr>
                    <tr><th>Functional Area</th><td>$functional_area</td></tr>
                    <tr><th>Role</th><td>$role</td></tr>
                    <tr><th>Company</th><td>$company</td></tr>
                    <tr><th>Designation</th><td>$designation</td></tr>
                    <tr><th>Resume</th><td><a href='$resume_link'>Download Resume</a></td></tr>
                </table>
            ";

            $mail->send();

        }catch(Exception $e){
            error_log($mail->ErrorInfo);
        }

        $success = "Your data submitted successfully";

    }else{
        $error = "Data not submitted. Please try again.";
    }
}

include("includes/header.php");
?>

<main>

<section class="section contact__v2" id="contact">

<div class="container">

<div class="row d-flex justify-content-center">

<div class="col-md-8">

<div class="form-wrapper">

<?php if($success){ ?>
<div id="successMessage" class="alert alert-success text-center">
<?php echo $success; ?>
</div>

<script>
setTimeout(function(){
    var msg = document.getElementById("successMessage");
    if(msg){
        msg.style.display = "none";
    }
}, 2000);

</script>
<?php } ?>
<?php if($error){ ?>
<div class="alert alert-danger text-center">
<?php echo $error; ?>
</div>
<?php } ?>

<form method="POST" enctype="multipart/form-data" class="needs-validation" novalidate>

<div class="row mb-3">

<div class="col-md-6">
<label>Name</label>
<input class="form-control" type="text" name="name" required>
</div>

<div class="col-md-6">
<label>Email</label>
<input class="form-control" type="email" name="email" value="<?php echo htmlspecialchars($_SESSION['user_email']); ?>" required>
</div>

</div>

<div class="row mb-3">

<div class="col-md-6">
<label>Phone</label>
<input class="form-control" type="text" name="phone" required>
</div>

<div class="col-md-6">
<label>State</label>
<select class="form-select" name="state" required>
<option value="">Select State</option>
<option>Andhra Pradesh</option>
<option>Telangana</option>
<option>Tamil Nadu</option>
<option>Karnataka</option>
<option>Maharashtra</option>
<option>Delhi</option>
</select>
</div>

</div>

<div class="row mb-3">

<div class="col-md-6">
<label>City</label>
<input class="form-control" type="text" name="city" required>
</div>

<div class="col-md-6">
<label>Experience</label>
<input class="form-control" type="number" name="experience" required>
</div>

</div>

<div class="row mb-3">

<div class="col-md-6">
<label>Industry</label>
<input class="form-control" type="text" name="industry" required>
</div>

<div class="col-md-6">
<label>Functional Area</label>
<input class="form-control" type="text" name="area" required>
</div>

</div>

<div class="row mb-3">

<div class="col-md-6">
<label>Role</label>
<input class="form-control" type="text" name="role" required>
</div>

<div class="col-md-6">
<label>Company</label>
<input class="form-control" type="text" name="company" required>
</div>

</div>

<div class="row mb-3">

<div class="col-md-6">
<label>Designation</label>
<input class="form-control" type="text" name="designation" required>
</div>

<div class="col-md-6">
<label>Resume</label>
<input class="form-control" type="file" name="resume" required>
</div>

</div>

<button class="btn btn-primary" type="submit" name="submit_application">
Apply Now
</button>

</form>

</div>
</div>
</div>
</div>

</section>

<?php include("includes/footer.php"); ?>

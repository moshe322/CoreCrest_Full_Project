<?php
require_once __DIR__ . '/config/db.php';

$success = "";
$error = "";

if(isset($_POST['submit_contact'])){

    $name = $_POST['name'];
    $email = $_POST['email'];
    $subject = $_POST['subject'];
    $message = $_POST['message'];

    $stmt = $conn->prepare(
        "INSERT INTO contact_messages
        (name,email,subject,message)
        VALUES(?,?,?,?)"
    );

    $stmt->bind_param(
        "ssss",
        $name,
        $email,
        $subject,
        $message
    );

    if($stmt->execute()){
        $success = "Your message submitted successfully";
    }else{
        $error = "Unable to submit message";
    }
}

include("includes/header.php");
?>

<main>

<div class="page-title light-background">
<div class="container d-lg-flex justify-content-between align-items-center">
<h1 class="mb-2 mb-lg-0">Contact</h1>

<nav class="breadcrumbs">
<ol>
<li><a href="index.php">Home</a></li>
<li class="current">contact</li>
</ol>
</nav>

</div>
</div>

<section class="section contact__v2" id="contact">

<div class="container">

<div class="row mb-5">
<div class="col-md-8 col-lg-8 mx-auto text-center">

<h2 class="h2 fw-bold mb-3">
Contact Us
</h2>

<p>
Transform your ideas into stunning realities with our intuitive, powerful tools.
</p>

</div>
</div>

<div class="row">

<div class="col-md-6 pe-xl-5">

<div class="d-flex gap-5 flex-column">

<div class="d-flex align-items-start gap-3">
<div class="icon d-block">
<i class="bi bi-telephone"></i>
</div>

<span>
<span class="d-block">Phone</span>
<strong>+91 9920346980</strong>
</span>
</div>

<div class="d-flex align-items-start gap-3">
<div class="icon d-block">
<i class="bi bi-send"></i>
</div>

<span>
<span class="d-block">Email</span>
<strong>info@corecresthr.com</strong>
</span>
</div>

<div class="d-flex align-items-start gap-3">
<div class="icon d-block">
<i class="bi bi-geo-alt"></i>
</div>

<span>
<span class="d-block">Address</span>
<address class="fw-bold">
SS3, No. 804, 1st floor, Sector 8, Kopar Khairane, Thane 400709
</address>
</span>
</div>

</div>

</div>

<div class="col-md-6">

<div class="form-wrapper">

<?php if($success){ ?>

<div id="successMessage" class="alert alert-success text-center">
<?php echo htmlspecialchars($success); ?>
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
<?php echo htmlspecialchars($error); ?>
</div>

<?php } ?>

<form method="POST" id="contactForm" class="needs-validation" novalidate>

<div class="row gap-3 mb-3">

<div class="col-md-12">
<label class="mb-2 form-label">Name</label>
<input class="form-control" type="text" name="name" required>
<div class="invalid-feedback">
Please Enter Your Name
</div>
</div>

<div class="col-md-12">
<label class="mb-2">Email</label>
<input class="form-control" type="email" name="email" required>
<div class="invalid-feedback">
Please Enter Your Email ID
</div>
</div>

<div class="col-md-12">
<label class="mb-2">Subject</label>
<input class="form-control" type="text" name="subject" required>
<div class="invalid-feedback">
Please Enter Your Subject
</div>
</div>

</div>

<div class="row gap-3 gap-md-0 mb-3">

<div class="col-md-12">
<label class="mb-2">Message</label>
<textarea class="form-control" name="message" rows="5" required></textarea>
<div class="invalid-feedback">
Please Enter Your Message
</div>
</div>

</div>

<button class="btn btn-primary fw-semibold btn-lg" type="submit" name="submit_contact">
Send Message
</button>

</form>

</div>

</div>

</div>

</div>

</section>

<section>
<div class="container-fluid">

<iframe
src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d15080.468372913818!2d73.00020917301741!3d19.102518419956308!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sSS3%2C%20Room%20No.%20804%2C%201st%20floor%2C%20Sector%208%2C%20Kopatkhairane%2C%20Thane%20400709!5e0!3m2!1sen!2sin!4v1751961068489!5m2!1sen!2sin"
width="100%"
height="550"
style="border:0;"
allowfullscreen=""
loading="lazy"
referrerpolicy="no-referrer-when-downgrade">
</iframe>

</div>
</section>

<script>
(function () {
'use strict';

var forms = document.querySelectorAll('.needs-validation');

Array.prototype.slice.call(forms).forEach(function (form) {
form.addEventListener('submit', function (event) {

if (!form.checkValidity()) {
event.preventDefault();
event.stopPropagation();
}

form.classList.add('was-validated');

}, false);
});

})();
</script>

<?php include("includes/footer.php"); ?>

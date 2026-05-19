<?php
require_once __DIR__ . '/config/db.php';

if(isset($_POST['submit_contact'])){

    $name=$_POST['name'];
    $email=$_POST['email'];
    $subject=$_POST['subject'];
    $message=$_POST['message'];

    $sql="INSERT INTO contact_messages
    (name,email,subject,message)
    VALUES
    ('$name','$email','$subject','$message')";

    if(mysqli_query($conn,$sql)){

        header("Location: contact.php");
        exit;

    }else{

        echo mysqli_error($conn);

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

<section class="section contact__v2">

<div class="container">

<div class="row mb-5">

<div class="col-md-8 col-lg-8 mx-auto text-center">

<h2 class="h2 fw-bold mb-3">
Contact Us
</h2>

<p>
Transform your ideas into stunning realities.
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

</div>

</div>

<div class="col-md-6">

<div class="form-wrapper">

<form
method="POST"
class="needs-validation"
novalidate>

<div class="row gap-3 mb-3">

<div class="col-md-12">

<label>Name</label>

<input
class="form-control"
type="text"
name="name"
required>

</div>

<div class="col-md-12">

<label>Email</label>

<input
class="form-control"
type="email"
name="email"
required>

</div>

<div class="col-md-12">

<label>Subject</label>

<input
class="form-control"
type="text"
name="subject"
required>

</div>

</div>

<div class="row mb-3">

<div class="col-md-12">

<label>Message</label>

<textarea
class="form-control"
name="message"
rows="5"
required></textarea>

</div>

</div>

<button
class="btn btn-primary fw-semibold btn-lg"
type="submit"
name="submit_contact">

Send Message

</button>

</form>

</div>

</div>

</div>

</div>

</section>

<?php include("includes/footer.php"); ?>

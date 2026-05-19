<?php
session_start();

if(!isset($_SESSION['user_id'])){
    header("Location: login.php");
    exit;
}

if($_SESSION['role'] == 'admin'){
    header("Location: admin.php");
    exit;
}

require_once __DIR__ . '/config/db.php';
include("includes/header.php");
?>

<main>

<section class="section" style="background:#f2edf3;min-height:80vh;">

<div class="container mt-5">

<div class="row justify-content-center">

<div class="col-md-8">

<div class="card shadow border-0">
<div class="card-body text-center p-5">

<h2 class="text-primary mb-3">
Welcome to CoreCrest Dashboard
</h2>

<p class="mb-4">
You are logged in as a normal user.
</p>

<a href="apply-jobs.php" class="btn btn-primary me-2">
Apply For Job
</a>

<a href="contact.php" class="btn btn-success">
Contact Us
</a>

</div>
</div>

</div>

</div>

</div>

</section>

</main>

<?php include("includes/footer.php"); ?>

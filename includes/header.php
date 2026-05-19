<?php
if(session_status()===PHP_SESSION_NONE){
session_start();
}

$isAdmin = (
isset($_SESSION['role'])
&&
$_SESSION['role']=='admin'
);
?>

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">

<title>CORECREST HR SERVICES</title>

<link href="assets/vendors/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="assets/vendors/bootstrap-icons/font/bootstrap-icons.min.css" rel="stylesheet">
<link href="assets/vendors/glightbox/glightbox.min.css" rel="stylesheet">
<link href="assets/vendors/swiper/swiper-bundle.min.css" rel="stylesheet">
<link href="assets/vendors/aos/aos.css" rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet">

</head>

<body>

<div class="site-wrap">

<header class="fbs__net-navbar navbar navbar-expand-lg dark">

<div class="container d-flex align-items-center justify-content-between">

<a class="navbar-brand"
href="<?php echo $isAdmin ? 'admin.php':'index.php'; ?>">

<img
class="logo dark img-fluid"
src="assets/images/Core-Crest-logo.png"
alt="CoreCrest">

</a>

<?php if(!$isAdmin){ ?>

<div class="offcanvas offcanvas-start w-75" id="fbs__net-navbars">

<div class="offcanvas-body align-items-lg-center">

<ul class="navbar-nav me-auto ms-auto nav ps-lg-5">

<li class="nav-item">
<a class="nav-link" href="index.php">Home</a>
</li>

<li class="nav-item">
<a class="nav-link" href="about.php">About</a>
</li>

<li class="nav-item">
<a class="nav-link" href="volume-hiring.php">Services</a>
</li>

<li class="nav-item">
<a class="nav-link" href="htd.php">HTD</a>
</li>

<li class="nav-item">
<a class="nav-link" href="contact.php">Contact</a>
</li>

</ul>

</div>

</div>

<?php } ?>

<div class="ms-auto">

<div class="header-social d-flex align-items-center gap-2">

<?php if($isAdmin){ ?>

<a class="btn btn-warning py-2" href="admin.php">
Admin_Data
</a>

<a class="btn btn-success py-2" href="all-tables.php">
DB Tables
</a>

<a class="btn btn-info py-2" href="uploaded-resumes.php">
Uploaded Resumes
</a>

<?php }else{ ?>

<a class="btn btn-primary py-2" href="apply-jobs.php">
Apply For Job
</a>

<button
class="fbs__net-navbar-toggler"
data-bs-toggle="offcanvas"
data-bs-target="#fbs__net-navbars">

☰

</button>

<?php } ?>

</div>

</div>

</div>

</header>

<?php if(isset($_SESSION['user_id'])){ ?>

<div style="
position:fixed;
top:10px;
right:10px;
z-index:99999;">

<a class="btn btn-dark" href="logout.php">
Logout
</a>

</div>

<?php } ?>

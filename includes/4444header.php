<?php
if(session_status() === PHP_SESSION_NONE){
    session_start();
}
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CORECREST HR SERVICES PRIVATE LIMITED</title>

<link rel="apple-touch-icon" sizes="57x57" href="assets/images/fav/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="assets/images/fav/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="assets/images/fav/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="assets/images/fav/apple-icon-76x76.png">

<link rel="icon" type="image/png" sizes="32x32" href="assets/images/fav/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="assets/images/fav/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="assets/images/fav/favicon-16x16.png">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">

<link href="assets/vendors/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="assets/vendors/bootstrap-icons/font/bootstrap-icons.min.css" rel="stylesheet">
<link href="assets/vendors/glightbox/glightbox.min.css" rel="stylesheet">
<link href="assets/vendors/swiper/swiper-bundle.min.css" rel="stylesheet">
<link href="assets/vendors/aos/aos.css" rel="stylesheet">

<link href="assets/css/style.css" rel="stylesheet">

</head>

<body>

<div class="site-wrap">

<header class="fbs__net-navbar navbar navbar-expand-lg dark"
aria-label="freebootstrap.net navbar">

<div class="container d-flex align-items-center justify-content-between">

<a class="navbar-brand w-auto" href="index.php">

<img class="logo dark img-fluid"
src="assets/images/Core-Crest-logo.png"
alt="">

<img class="logo light img-fluid"
src="assets/images/Core-Crest-logo-small.png"
alt="">

</a>

<div class="offcanvas offcanvas-start w-75"
id="fbs__net-navbars"
tabindex="-1">

<div class="offcanvas-header">

<div class="offcanvas-header-logo">

<a class="logo-link"
href="index.php">

<img class="logo dark img-fluid"
src="assets/images/Core-Crest-logo.png"
alt="">

<img class="logo light img-fluid"
src="assets/images/Core-Crest-logo-small.png"
alt="">

</a>

</div>

<button class="btn-close btn-close-black"
type="button"
data-bs-dismiss="offcanvas">
</button>

</div>

<div class="offcanvas-body align-items-lg-center">

<ul class="navbar-nav me-auto ms-auto nav ps-lg-5 mb-2 mb-lg-0">

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

<div class="ms-auto w-auto">

<div class="header-social d-flex align-items-center gap-2">

<a class="btn btn-primary py-2"
href="apply-jobs.php">
Apply For Job
</a>

<?php if(
isset($_SESSION['role'])
&&
$_SESSION['role']=='admin'
){ ?>

<a class="btn btn-warning py-2"
href="admin.php">
Admin
</a>

<a class="btn btn-success py-2"
href="all-tables.php">
DB Tables
</a>

<a class="btn btn-danger py-2"
href="users-list.php">
USERS
</a>

<?php } ?>

<button
class="fbs__net-navbar-toggler
justify-content-center
align-items-center
ms-auto"

data-bs-toggle="offcanvas"
data-bs-target="#fbs__net-navbars"

aria-controls="fbs__net-navbars"
aria-label="Toggle navigation">

<svg class="fbs__net-icon-menu"
xmlns="http://www.w3.org/2000/svg"
width="24"
height="24"
viewBox="0 0 24 24"
fill="none"
stroke="currentColor"
stroke-width="2"
stroke-linecap="round"
stroke-linejoin="round">

<line x1="21" x2="3" y1="6" y2="6"></line>
<line x1="15" x2="3" y1="12" y2="12"></line>
<line x1="17" x2="3" y1="18" y2="18"></line>

</svg>

</button>

</div>

</div>

</div>

</header>

<?php if(isset($_SESSION['user_id'])){ ?>

<div style="
position:fixed;
top:10px;
right:10px;
z-index:99999;
">

<a class="btn btn-dark py-2"
href="logout.php">

Logout

</a>

</div>

<?php } ?>

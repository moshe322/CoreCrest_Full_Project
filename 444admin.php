<?php
session_start();

if(!isset($_SESSION['user_id'])){
    header("Location: login.php");
    exit;
}

if($_SESSION['role'] != 'admin'){
    die("Access denied. Only admin can view this page.");
}

require_once __DIR__ . '/config/db.php';

$total_applications = mysqli_fetch_assoc(
    mysqli_query($conn, "SELECT COUNT(*) AS total FROM job_applications")
);

$total_contacts = mysqli_fetch_assoc(
    mysqli_query($conn, "SELECT COUNT(*) AS total FROM contact_messages")
);
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin - CoreCrest</title>

<link href="assets/vendors/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="assets/vendors/bootstrap-icons/font/bootstrap-icons.min.css" rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet">
<link href="https://cdn.datatables.net/2.3.8/css/dataTables.bootstrap5.css" rel="stylesheet">
</head>

<body>

<?php include("includes/header.php"); ?>

<main>

<section class="section" style="background-color:#f2edf3;">

<div class="container-fluid mb-3">
<div class="row">

<div class="col-md-4 mb-2">
<div class="card shadow">
<div class="card-body bg-primary text-white rounded">
<h6>Total Applications</h6>
<div class="big-text"><?php echo $total_applications['total']; ?></div>
</div>
</div>
</div>

<div class="col-md-4 mb-2">
<div class="card shadow">
<div class="card-body bg-warning text-dark rounded">
<h6>Contact Messages</h6>
<div class="big-text"><?php echo $total_contacts['total']; ?></div>
</div>
</div>
</div>

<div class="col-md-4 mb-2">
<div class="card shadow">
<div class="card-body bg-success text-white rounded">
<h6>Admin Access</h6>
<div class="big-text">Active</div>
</div>
</div>
</div>

</div>
</div>

<div class="container-fluid">

<div class="card shadow mb-5">
<div class="card-body">

<h3 class="mb-3">Job Applications</h3>

<table id="applicationsTable" class="table table-bordered table-striped table-hover align-middle nowrap">
<thead class="table-dark">
<tr>
<th>Name</th>
<th>Email</th>
<th>Phone</th>
<th>State</th>
<th>City</th>
<th>Experience</th>
<th>Industry</th>
<th>Functional Area</th>
<th>Role</th>
<th>Company</th>
<th>Designation</th>
<th>Resume</th>
<th>Date</th>
</tr>
</thead>

<tbody>
<?php
$applications = mysqli_query($conn, "SELECT * FROM job_applications ORDER BY id DESC");

while($row = mysqli_fetch_assoc($applications)){
?>
<tr>
<td><?php echo htmlspecialchars($row['name']); ?></td>
<td><?php echo htmlspecialchars($row['email']); ?></td>
<td><?php echo htmlspecialchars($row['phone']); ?></td>
<td><?php echo htmlspecialchars($row['state']); ?></td>
<td><?php echo htmlspecialchars($row['city']); ?></td>
<td><?php echo htmlspecialchars($row['experience']); ?></td>
<td><?php echo htmlspecialchars($row['industry']); ?></td>
<td><?php echo htmlspecialchars($row['functional_area']); ?></td>
<td><?php echo htmlspecialchars($row['role_name']); ?></td>
<td><?php echo htmlspecialchars($row['company']); ?></td>
<td><?php echo htmlspecialchars($row['designation']); ?></td>
<td>
<?php if(!empty($row['resume'])) { ?>
<a class="btn btn-success btn-sm" href="uploads/<?php echo htmlspecialchars($row['resume']); ?>" download>
Download
</a>
<?php } else { ?>
<span class="badge bg-danger">No Resume</span>
<?php } ?>
</td>
<td><?php echo htmlspecialchars($row['created_at']); ?></td>
</tr>
<?php } ?>
</tbody>
</table>

</div>
</div>

<div class="card shadow">
<div class="card-body">

<h3 class="mb-3">Contact Messages</h3>

<table id="contactTable" class="table table-bordered table-striped table-hover align-middle nowrap">
<thead class="table-dark">
<tr>
<th>Name</th>
<th>Email</th>
<th>Subject</th>
<th>Message</th>
<th>Date</th>
</tr>
</thead>

<tbody>
<?php
$contacts = mysqli_query($conn, "SELECT * FROM contact_messages ORDER BY id DESC");

while($c = mysqli_fetch_assoc($contacts)){
?>
<tr>
<td><?php echo htmlspecialchars($c['name']); ?></td>
<td><?php echo htmlspecialchars($c['email']); ?></td>
<td><?php echo htmlspecialchars($c['subject']); ?></td>
<td><?php echo htmlspecialchars($c['message']); ?></td>
<td><?php echo htmlspecialchars($c['created_at']); ?></td>
</tr>
<?php } ?>
</tbody>
</table>

</div>
</div>

</div>

</section>

</main>

<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script src="https://cdn.datatables.net/2.3.8/js/dataTables.js"></script>
<script src="https://cdn.datatables.net/2.3.8/js/dataTables.bootstrap5.js"></script>

<script>
new DataTable('#applicationsTable');
new DataTable('#contactTable');
</script>

</body>
</html>

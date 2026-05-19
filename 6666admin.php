<?php
session_start();

if(!isset($_SESSION['user_id'])){
    header("Location: login.php");
    exit;
}

if($_SESSION['role'] != 'admin'){
    header("Location: index.php");
    exit;
}

require_once __DIR__ . '/config/db.php';

$total_applications = mysqli_fetch_assoc(
    mysqli_query($conn, "SELECT COUNT(*) AS total FROM job_applications")
);

$total_contacts = mysqli_fetch_assoc(
    mysqli_query($conn, "SELECT COUNT(*) AS total FROM contact_messages")
);

$total_users = mysqli_fetch_assoc(
    mysqli_query($conn, "SELECT COUNT(*) AS total FROM users_logins_table")
);

include("includes/header.php");
?>

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>CoreCrest Admin Panel</title>

<link href="assets/vendors/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="assets/vendors/bootstrap-icons/font/bootstrap-icons.min.css" rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet">

<link href="https://cdn.datatables.net/2.3.8/css/dataTables.bootstrap5.css" rel="stylesheet">

<style>

body{
background:#f2edf3;
}

.dashboard-card{
border:none;
border-radius:18px;
overflow:hidden;
box-shadow:0 10px 30px rgba(0,0,0,.12);
}

.big-text{
font-size:34px;
font-weight:700;
}

.table-card{
border:none;
border-radius:18px;
overflow:hidden;
box-shadow:0 10px 30px rgba(0,0,0,.12);
}

.section-title{
font-weight:700;
}

</style>

</head>

<body>

<main>

<section class="section py-5">

<div class="container-fluid">

<div class="row mb-4">

<div class="col-md-4 mb-3">

<div class="card dashboard-card">
<div class="card-body bg-primary text-white">

<h6>Total Applications</h6>

<div class="big-text">
<?php echo $total_applications['total']; ?>
</div>

</div>
</div>

</div>

<div class="col-md-4 mb-3">

<div class="card dashboard-card">
<div class="card-body bg-success text-white">

<h6>Total Contacts</h6>

<div class="big-text">
<?php echo $total_contacts['total']; ?>
</div>

</div>
</div>

</div>

<div class="col-md-4 mb-3">

<div class="card dashboard-card">
<div class="card-body bg-danger text-white">

<h6>Total Users</h6>

<div class="big-text">
<?php echo $total_users['total']; ?>
</div>

</div>
</div>

</div>

</div>

<div class="card table-card mb-5">

<div class="card-body">

<h3 class="section-title text-primary mb-4">
Job Applications
</h3>

<div class="table-responsive">

<table id="applicationsTable"
class="table table-bordered table-striped table-hover align-middle">

<thead class="table-dark">

<tr>
<th>ID</th>
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
$applications = mysqli_query(
$conn,
"SELECT * FROM job_applications ORDER BY id DESC"
);

while($row = mysqli_fetch_assoc($applications)){
?>

<tr>

<td><?php echo htmlspecialchars($row['id']); ?></td>

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

<?php if(!empty($row['resume'])){ ?>

<a
class="btn btn-success btn-sm"
href="uploads/<?php echo htmlspecialchars($row['resume']); ?>"
download>

Download

</a>

<?php }else{ ?>

<span class="badge bg-danger">
No Resume
</span>

<?php } ?>

</td>

<td><?php echo htmlspecialchars($row['created_at']); ?></td>

</tr>

<?php } ?>

</tbody>

</table>

</div>

</div>

</div>

<div class="card table-card mb-5">

<div class="card-body">

<h3 class="section-title text-success mb-4">
Contact Messages
</h3>

<div class="table-responsive">

<table id="contactsTable"
class="table table-bordered table-striped table-hover align-middle">

<thead class="table-dark">

<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Subject</th>
<th>Message</th>
<th>Date</th>
</tr>

</thead>

<tbody>

<?php
$contacts = mysqli_query(
$conn,
"SELECT * FROM contact_messages ORDER BY id DESC"
);

while($c = mysqli_fetch_assoc($contacts)){
?>

<tr>

<td><?php echo htmlspecialchars($c['id']); ?></td>

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

<div class="card table-card">

<div class="card-body">

<h3 class="section-title text-danger mb-4">
Login Users
</h3>

<div class="table-responsive">

<table id="usersTable"
class="table table-bordered table-striped table-hover align-middle">

<thead class="table-dark">

<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Role</th>
<th>Created At</th>
</tr>

</thead>

<tbody>

<?php
$users = mysqli_query(
$conn,
"SELECT id,name,email,role,created_at
FROM users_logins_table
ORDER BY id DESC"
);

while($u = mysqli_fetch_assoc($users)){
?>

<tr>

<td><?php echo htmlspecialchars($u['id']); ?></td>

<td><?php echo htmlspecialchars($u['name']); ?></td>

<td><?php echo htmlspecialchars($u['email']); ?></td>

<td>

<span class="badge bg-<?php echo $u['role']=='admin' ? 'danger' : 'success'; ?>">

<?php echo htmlspecialchars($u['role']); ?>

</span>

</td>

<td><?php echo htmlspecialchars($u['created_at']); ?></td>

</tr>

<?php } ?>

</tbody>

</table>

</div>

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
new DataTable('#contactsTable');
new DataTable('#usersTable');

</script>

<?php include("includes/footer.php"); ?>

</body>
</html>

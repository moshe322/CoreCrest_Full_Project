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

$total_resumes = mysqli_fetch_assoc(
    mysqli_query($conn, "SELECT COUNT(*) AS total FROM job_applications WHERE resume IS NOT NULL AND resume != ''")
);

include("includes/header.php");
?>

<main>

<section class="section" style="background:#f2edf3;min-height:100vh;">

<div class="container-fluid py-5">

<div class="card shadow mb-4">
<div class="card-body bg-primary text-white rounded">
<h4>Total Uploaded Resumes</h4>
<h1><?php echo $total_resumes['total']; ?></h1>
</div>
</div>

<div class="card shadow">
<div class="card-body">

<h3 class="text-primary mb-4">
Uploaded Resumes List
</h3>

<div class="table-responsive">

<table class="table table-bordered table-striped table-hover align-middle">
<thead class="table-dark">
<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Phone</th>
<th>Role</th>
<th>Company</th>
<th>Designation</th>
<th>Resume</th>
<th>Uploaded Date</th>
</tr>
</thead>

<tbody>

<?php
$resumes = mysqli_query(
    $conn,
    "SELECT * FROM job_applications WHERE resume IS NOT NULL AND resume != '' ORDER BY id DESC"
);

while($row = mysqli_fetch_assoc($resumes)){
?>

<tr>
<td><?php echo htmlspecialchars($row['id']); ?></td>
<td><?php echo htmlspecialchars($row['name']); ?></td>
<td><?php echo htmlspecialchars($row['email']); ?></td>
<td><?php echo htmlspecialchars($row['phone']); ?></td>
<td><?php echo htmlspecialchars($row['role_name']); ?></td>
<td><?php echo htmlspecialchars($row['company']); ?></td>
<td><?php echo htmlspecialchars($row['designation']); ?></td>

<td>
<a class="btn btn-success btn-sm"
href="uploads/<?php echo htmlspecialchars($row['resume']); ?>"
download>
Download Resume
</a>
</td>

<td><?php echo htmlspecialchars($row['created_at']); ?></td>
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

<?php include("includes/footer.php"); ?>

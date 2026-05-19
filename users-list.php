<?php
session_start();
require_once __DIR__ . '/config/db.php';

if(!isset($_SESSION['user_id'])){
    header("Location: login.php");
    exit;
}

if($_SESSION['role'] != 'admin'){
    die("Access denied. Only admins can view users.");
}

include("includes/header.php");

$users = mysqli_query($conn, "SELECT id,name,email,phone,role,created_at FROM users_logins_table ORDER BY id DESC");
?>

<main>
<div class="container mt-5 mb-5">

<h2 class="mb-4 text-primary">User Login Details</h2>

<div class="card shadow">
<div class="card-header bg-danger text-white">
Users Logins Table Data
</div>

<div class="card-body table-responsive">

<table class="table table-bordered table-striped table-hover">
<thead class="table-dark">
<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Phone</th>
<th>Role</th>
<th>Created At</th>
</tr>
</thead>

<tbody>
<?php while($row=mysqli_fetch_assoc($users)){ ?>
<tr>
<td><?php echo htmlspecialchars($row['id']); ?></td>
<td><?php echo htmlspecialchars($row['name']); ?></td>
<td><?php echo htmlspecialchars($row['email']); ?></td>
<td><?php echo htmlspecialchars($row['phone'] ?? ''); ?></td>
<td>
<span class="badge bg-<?php echo $row['role']=='admin' ? 'danger' : 'success'; ?>">
<?php echo htmlspecialchars($row['role']); ?>
</span>
</td>
<td><?php echo htmlspecialchars($row['created_at']); ?></td>
</tr>
<?php } ?>
</tbody>
</table>

</div>
</div>

</div>
</main>

<?php include("includes/footer.php"); ?>

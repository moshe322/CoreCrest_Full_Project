<?php
require_once __DIR__ . '/config/db.php';
include("includes/header.php");
?>

<div class="container mt-5">

<h2 class="mb-4">Contact Messages</h2>

<div class="row">

<?php
$result = mysqli_query(
$conn,
"SELECT * FROM contact_messages ORDER BY id DESC"
);

while($row = mysqli_fetch_assoc($result)){
?>

<div class="col-md-6 mb-4">

<div class="card shadow border-0">

<div class="card-body">

<h5 class="card-title text-primary">
<?php echo htmlspecialchars($row['name']); ?>
</h5>

<p>
<strong>Email:</strong>
<?php echo htmlspecialchars($row['email']); ?>
</p>

<p>
<strong>Subject:</strong>
<?php echo htmlspecialchars($row['subject']); ?>
</p>

<p>
<strong>Message:</strong><br>
<?php echo htmlspecialchars($row['message']); ?>
</p>

<?php if(isset($row['created_at'])){ ?>
<small class="text-muted">
<?php echo htmlspecialchars($row['created_at']); ?>
</small>
<?php } ?>

</div>

</div>

</div>

<?php } ?>

</div>

</div>

<?php include("includes/footer.php"); ?>

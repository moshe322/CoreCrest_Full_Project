<?php
require_once __DIR__ . '/config/db.php';
include("includes/header.php");

$tables = mysqli_query($conn, "SHOW TABLES");
$selected_table = $_GET['table'] ?? '';
?>

<main>
<div class="container-fluid mt-5 mb-5">

<h2 class="mb-4">CoreCrest Database Tables</h2>

<div class="row">

<div class="col-md-3">
<div class="card shadow">
<div class="card-header bg-dark text-white">
Tables
</div>
<div class="list-group list-group-flush">

<?php while($t = mysqli_fetch_array($tables)) { 
$table_name = $t[0];
?>
<a class="list-group-item list-group-item-action"
href="all-tables.php?table=<?php echo urlencode($table_name); ?>">
<?php echo htmlspecialchars($table_name); ?>
</a>
<?php } ?>

</div>
</div>
</div>

<div class="col-md-9">
<div class="card shadow">
<div class="card-header bg-primary text-white">
<?php echo $selected_table ? htmlspecialchars($selected_table) : 'Select a table'; ?>
</div>

<div class="card-body table-responsive">

<?php
if($selected_table != ''){

    $check = mysqli_query($conn, "SHOW TABLES LIKE '$selected_table'");

    if(mysqli_num_rows($check) > 0){

        $columns = mysqli_query($conn, "SHOW COLUMNS FROM `$selected_table`");
        $data = mysqli_query($conn, "SELECT * FROM `$selected_table` ORDER BY 1 DESC LIMIT 100");
?>

<table class="table table-bordered table-striped table-hover">
<thead class="table-dark">
<tr>
<?php while($col = mysqli_fetch_assoc($columns)) { ?>
<th><?php echo htmlspecialchars($col['Field']); ?></th>
<?php } ?>
</tr>
</thead>

<tbody>
<?php while($row = mysqli_fetch_assoc($data)) { ?>
<tr>
<?php foreach($row as $value) { ?>
<td><?php echo htmlspecialchars($value ?? ''); ?></td>
<?php } ?>
</tr>
<?php } ?>
</tbody>
</table>

<?php
    } else {
        echo "<div class='alert alert-danger'>Invalid table selected</div>";
    }

} else {
    echo "<div class='alert alert-info'>Click any table name from left side to view data.</div>";
}
?>

</div>
</div>
</div>

</div>
</div>
</main>

<?php include("includes/footer.php"); ?>

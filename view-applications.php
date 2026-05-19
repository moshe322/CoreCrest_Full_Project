<?php
$conn = new mysqli("localhost", "root", "YOUR_MYSQL_PASSWORD", "corecrest");

if ($conn->connect_error) {
    die("Database failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM job_applications ORDER BY id DESC";
$result = $conn->query($sql);
?>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Role</th>
        <th>Resume</th>
        <th>Date</th>
    </tr>

<?php while ($row = $result->fetch_assoc()) { ?>
    <tr>
        <td><?php echo $row['id']; ?></td>
        <td><?php echo $row['name']; ?></td>
        <td><?php echo $row['email']; ?></td>
        <td><?php echo $row['phone']; ?></td>
        <td><?php echo $row['role_name']; ?></td>
        <td><?php echo $row['resume']; ?></td>
        <td><?php echo $row['created_at']; ?></td>
    </tr>
<?php } ?>

</table>

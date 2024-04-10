<?php 
session_start();
        
if(!isset($_SESSION['admin_login'])) 
    header('location:adminlogin.php');   
?>

<?php
include '_inc/dbconn.php';
$name=  mysqli_real_escape_string($conn,$_REQUEST['edit_name']);
$gender=  mysqli_real_escape_string($conn,$_REQUEST['edit_gender']);
$dob=  mysqli_real_escape_string($conn,$_REQUEST['edit_dob']);
$id=  mysqli_real_escape_string($conn,$_REQUEST['current_id']);
$type=  mysqli_real_escape_string($conn,$_REQUEST['edit_account']);
$nominee=  mysqli_real_escape_string($conn,$_REQUEST['edit_nominee']);
$address=  mysqli_real_escape_string($conn,$_REQUEST['edit_address']);
$mobile=  mysqli_real_escape_string($conn,$_REQUEST['edit_mobile']);
$email=  mysqli_real_escape_string($conn,$_REQUEST['edit_email']);

$sql="UPDATE customer SET  name='$name', dob='$dob', nominee='$nominee', account='$type', 
     address='$address', 
        mobile='$mobile', gender='$gender', email='$email' WHERE id='$id'";
mysqli_query($conn,$sql) or die(mysqli_error($conn));
header('location:admin_hompage.php');
?>
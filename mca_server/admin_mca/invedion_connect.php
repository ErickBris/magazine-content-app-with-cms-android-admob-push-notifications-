<?php
// Type here your database connection information
function idbc(){
	
$invedion_lh = 'localhost'; // Your server address, sometimes IP 
$invedion_user = 'user_name'; // User name
$invedion_pass = 'password'; // Password
$invedion_database_name = 'database_name'; // Database name
	
$invedion = new mysqli($invedion_lh, $invedion_user, $invedion_pass, $invedion_database_name);
mysqli_set_charset($invedion, "utf8");
if (!$invedion)
    throw new Exception('Database Error...Please try again later...');
else
    return $invedion;
} 
?>
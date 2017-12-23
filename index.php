<?php
if (isset($_POST['cikis'])) {
	session_start();
ob_start();
session_destroy();
ob_end_flush();
}
include("header.php");
include("sidebar.php");
include("content.php");
include("footer.php");


?>
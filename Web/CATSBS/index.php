<?php
include_once('config.php');
include_once('includes/sessions.inc.php');


if (isset($_GET["page"])){$page=$_GET["page"];}
else{$page="home";}
include_once(ABSPATH . "includes/header.inc.php");
include_once(ABSPATH . "includes/navigation.inc.php");
include_once(ABSPATH . "pages/".$page.".php");
include_once(ABSPATH . "includes/footer.inc.php");
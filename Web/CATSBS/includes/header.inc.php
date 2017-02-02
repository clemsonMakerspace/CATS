<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>CATS Admin Panel</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="<?php echo URLADDR; ?>assets/css/styles.css">

    <!-- IZI MODAL CSS-->
    <link rel="stylesheet" href="<?php echo URLADDR; ?>assets/css/iziModal.css">

    <!-- FONT AWESOME CSS-->
    <link rel="stylesheet" href="<?php echo URLADDR; ?>assets/css/font-awesome.css">

    <!-- DATA TABLES CSS -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/dataTables.bootstrap.min.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div id="modal-alert2" class="iziModal" data-iziModal-group="alert"></div>
<div id="modal-login" class="iziModal">
    <form>
        <button data-iziModal-close class="icon-close"><i class="fa fa-times"></i></button>
        <section>
            <input type="text" placeholder="Username" name="username">
            <input type="password" placeholder="Password" name="password">
            <footer>
                <button data-iziModal-close>Cancel</button>
                <button class="submit">Log in</button>
            </footer>
        </section>
    </form>
</div>
<div class="content">
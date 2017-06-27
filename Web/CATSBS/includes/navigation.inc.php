
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand">CATS Admin Panel</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li<?php if($page=="home"){echo" class='active'";}?>> <a href="?page=home"><i class="fa fa-home fa-lg" aria-hidden="true"></i></a></li>
                <?php
                /*
                if (isset($user_data) && count($user_data) > 0) {

                */?>
                            <li<?php if($page=="security"){echo" class='active'";}?>> <a href="?page=security"><i class="fa fa-flag fa-fw" aria-hidden="true"></i></a></li>
                            <li<?php if($page=="mcp"){echo" class='active'";}?>> <a href="?page=mcp"><i class="fa fa-cog fa-fw" aria-hidden="true"></i></a></li>
                            <li<?php if($page=="users"){echo" class='active'";}?>> <a href="?page=users"><i class="fa fa-user fa-fw" aria-hidden="true"></i></a></li>
                    <li<?php /*if($page=="data"){echo" class='active'";}*/?>> <a href="?page=data"><i class="fa fa-area-chart fa-lg" aria-hidden="true"></i></a></li>
                    /*<li> <a class="trigger-logout" href="?page=login"><i class="fa fa-sign-out fa-lg" aria-hidden="true"></i></a></li>
                    <?php /*
                } else {
                    ?>
                    <li> <a class="trigger-custom" href="?page=login"><i class="fa fa-sign-in fa-lg" aria-hidden="true"></i>
                        </a></li>
                    <?php
                }*/
                ?>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
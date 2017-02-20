
<div class="navbar navbar-inverse navbar-fixed-left">
    <a class="navbar-brand" >User Control Panel</a>
    <ul class="nav navbar-nav">
        <li<?php if($page=="users"){echo" class='active'";}?>> <a href="?page=users" class="btn btn-primary active"><i class="fa fa-search fa-fw" aria-hidden="true" align="left"></i>View Users</a></li>
        <li<?php if($page=="adduser"){echo" class='active'";}?>> <a href="?page=adduser" class="btn btn-primary"><i class="fa fa-plus fa-fw" aria-hidden="true"></i>Add User</a></li>
        <li<?php if($page=="modifyuser"){echo" class='active'";}?>> <a href="#" class="btn btn-primary"><i class="fa fa-wrench fa-fw" aria-hidden="true"></i>Modify User</a></li>
    </ul>
</div>


<br>
<div class="row" align = "center">
    <div     class="well" width ="625px">
        <table id="users" class="display" cellspacing="0" width="600px" align="center">
            <thead>
            <tr>
                <th>ID</th>
                <th>Username</th>
                <th>CUID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Major</th>
                <th>Class</th>
                <th>Auth1</th>
                <th>Admin</th>
            </tr>
            </thead>
        </table>
    </div>
</div>


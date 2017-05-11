<br>
<div class="row">
    <div class="col-md-10 col-md-offset-1">
        <?php
        try {
            $db = new catsadmin();
            $users = $db->query("SELECT * FROM users");
            if (is_array($users) && count($users) > 0) {
                ?>
                <div class="well">
                    <a href="?page=adduser" class="btn btn-default" role="button"><i class="fa fa-plus fa-fw" aria-hidden="true"></i> Add User</a>
                    <br>
                    <br>
                <table id="users" class="datatable display" style="width:100%">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Username</th>
                    <th>CUID</th>
                    <th>2FA</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Major</th>
                    <th>Class</th>
                    <th>Auth1</th>
                    <th>Auth2</th>
                    <th>Auth3</th>
                    <th>Admin</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <?php
                foreach ($users as $key => $user) {
                    if ($user->user2fa == 1) {
                        $user->user2fa = 'Yes';
                    } else if ($user->user2fa == 0) {
                        $user->user2fa = 'No';
                    }
                    if ($user->admin == 1) {
                        $user->admin = 'Yes';
                    } else if ($user->admin == 0) {
                        $user->admin = 'No';
                    }
                    if ($user->auth1 == 1) {
                        $user->auth1 = 'Yes';
                    } else if ($user->auth1 == 0) {
                        $user->auth1 = 'No';
                    }
                    if ($user->auth2 == 1) {
                        $user->auth2 = 'Yes';
                    } else if ($user->auth1 == 0) {
                        $user->auth2 = 'No';
                    }
                    if ($user->auth3 == 1) {
                        $user->auth3 = 'Yes';
                    } else if ($user->auth1 == 0) {
                        $user->auth3 = 'No';
                    }
                echo '<tr>';
                echo '<td>'.$user->id.'</td>';
                echo '<td>'.$user->username.'</td>';
                echo '<td>'.$user->cuid.'</td>';
                echo '<td>'.$user->user2fa.'</td>';
                echo '<td>'.$user->fn.'</td>';
                echo '<td>'.$user->ln.'</td>';
                echo '<td>'.$user->major.'</td>';
                echo '<td>'.$user->class.'</td>';
                echo '<td>'.$user->auth1.'</td>';
                echo '<td>'.$user->auth2.'</td>';
                echo '<td>'.$user->auth3.'</td>';
                echo '<td>'.$user->admin.'</td>';
                echo '<td><a href="?page=modifyuser" class="btn btn-success"><i class="fa fa-pencil"></i> </a><a href="#" class="btn btn-danger"><i class="fa fa-times"></i></a></td>';
                echo '</tr>';
                }
                 ?>
            </tbody>
            </table>
            </div>
            <?php
        }
        } catch (Exception $e) {
            echo '<h3>Error:</h3>';
            echo $e->getCode() . ': ' . $e->getMessage();
            echo '<h3>Stack trace:</h3>';
            foreach ($e->getTrace() as $trace) {
                echo $trace['file'] . ' Line #' . $trace['line'] . '<br />';
            }
        }
        ?>
    </div>
</div>
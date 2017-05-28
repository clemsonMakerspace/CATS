<br>
<div class="row">
    <div class="col-md-10 col-md-offset-1">
        <?php
        try {
            $db = new catsadmin();
            $machines = $db->query("SELECT * FROM machines");
            if (is_array($machines) && count($machines) > 0) {
                ?>
                <div class="well">
                    <a href="?page=addmachine" class="btn btn-default" role="button"><i class="fa fa-plus fa-fw" aria-hidden="true"></i> Add Machine</a>
                    <br>
                    <br>
                    <table id="machines" class="datatable display" style="width:100%">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>CATS Serial #</th>
                            <th>Type</th>
                            <th>Name</th>
                            <th>Authentication Group</th>
                            <th>2 Factor Auth.</th>
                            <th>Machine State</th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        foreach ($machines as $key => $machine) {
                            if($machine->mstate == 0) {
                                $machine->mstate = '<input class="mtoggle" class="tselector" type="checkbox" data-toggle="toggle" />';
                            } else if ($machine->mstate == 1) {
                                $machine->mstate = '<input class="mtoggle" class="tselector" type="checkbox" data-toggle="toggle" checked />';
                            }
                            if ($machine->mach2fa == 1) {
                                $machine->mach2fa = 'Yes';
                            } else if ($machine->mach2fa == 0) {
                                $machine->mach2fa = 'No';
                            }
                            echo '<tr>';
                            echo '<td>'.$machine->mid.'</td>';
                            echo '<td>'.$machine->catssn.'</td>';
                            echo '<td>'.$machine->mtype.'</td>';
                            echo '<td>'.$machine->mname.'</td>';
                            echo '<td>'.$machine->authType.'</td>';
                            echo '<td>'.$machine->mach2fa.'</td>';
                            echo '<td>'.$machine->mstate.'</td>';
                            echo '<td><a href="?page=modifymachine&mid='.$machine->mid.'" class="btn btn-success"><i class="fa fa-pencil"></i> </a><a href="#" class="btn btn-danger"><i class="fa fa-times"></i></a></td>';
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
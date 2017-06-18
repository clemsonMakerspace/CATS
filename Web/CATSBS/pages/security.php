
<br>
<div class="row">
    <div class="col-md-10 col-md-offset-1">
        <?php
        try {
            $db = new catsadmin();
            $events = $db->query("SELECT * FROM events");
            if (is_array($events) && count($events) > 0) {
                ?>
                <div class="well">
                    <table id="users" class="datatable display" style="width:100%">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Machine ID</th>
                            <th>User ID</th>
                            <th>Status</th>
                            <th>Time Stamp</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        foreach ($events as $key => $event) {
                            if ($event->status == 0) {
                                $event->status = 'Successful Entry';
                            } else if ($event->status == 1) {
                                $event->status = 'Not Authorized';
                            } else if ($event->status == 2) {
                                $event->status = 'Machine Error';
                            } else if ($event->status == 3) {
                                $event->status = 'Input Device Not Found';
                            } else if ($event->status == 4) {
                                $event->status = 'Multiple Log-in Attempt';
                            } else if ($event->status == 5) {
                                $event->status = 'Hostname Not found';
                            }
                            echo '<tr>';
                            echo '<td>'.$event->id.'</td>';
                            echo '<td>'.$event->machineID.'</td>';
                            echo '<td>'.$event->userID.'</td>';
                            echo '<td>'.$event->status.'</td>';
                            echo '<td>'.$event->t.'</td>';
                            echo '</tr>';
                        }
                        ?>
                        </tbody>
                    </table>
                </div>
                <?php
            }
        }catch (Exception $e) {
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

<div class="navbar navbar-inverse navbar-fixed-left">
    <a class="navbar-brand" >User Control Panel</a>
    <ul class="nav navbar-nav">
        <li<?php if($page=="users"){echo" class='active'";}?>> <a href="?page=users" class="btn btn-primary active"><i class="fa fa-search fa-fw" aria-hidden="true" align="left"></i>View Users</a></li>
        <li<?php if($page=="adduser"){echo" class='active'";}?>> <a href="?page=adduser" class="btn btn-primary"><i class="fa fa-plus fa-fw" aria-hidden="true"></i>Add User</a></li>
        <li<?php if($page=="users"){echo" class='active'";}?>> <a href="#" class="btn btn-primary"><i class="fa fa-wrench fa-fw" aria-hidden="true"></i>Modify User</a></li>
    </ul>
</div>

<br>
<form class="form-horizontal" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
    <fieldset>
        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="username">Username</label>
            <div class="col-md-4">
                <input id="username" name="username" type="text" placeholder="Example: johndoe" class="form-control input-md" required="">
                <span class="help-block">Do not include @g.clemson.edu</span>
            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="cuid"><i class="fa fa-id-card fa-fw" aria-hidden="true"></i>CUID</label>
            <div class="col-md-4">
                <input id="cuid" name="cuid" type="text" placeholder="Example: C12345678" class="form-control input-md" required="">
                <span class="help-block">Format: C########</span>
            </div>
        </div>

        <!-- Password input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="pin"><i class="fa fa-lock fa-fw" aria-hidden="true"></i>
                CATS PIN</label>
            <div class="col-md-4">
                <input id="pin" name="pin" type="password" placeholder="PIN here" class="form-control input-md" required="">
                <span class="help-block">Must be a 4 digit number.</span>
            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="fn">First Name</label>
            <div class="col-md-4">
                <input id="fn" name="fn" type="text" placeholder="First Name Here" class="form-control input-md" required="">

            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="ln">Last Name</label>
            <div class="col-md-4">
                <input id="ln" name="ln" type="text" placeholder="Last Name Here" class="form-control input-md" required="">

            </div>
        </div>

        <!-- Select Multiple -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="major">Major</label>
            <div class="col-md-4">
                <select id="major" name="major" class="form-control" multiple="multiple">
                    <option value="1">Option one</option>
                    <option value="2">Option two</option>
                </select>
            </div>
        </div>

        <!-- Select Basic -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="class"><i class="fa fa-graduation-cap fa-fw" aria-hidden="true"></i>Class</label>
            <div class="col-md-4">
                <select id="class" name="class" class="form-control">
                    <option value="Freshman">Freshman</option>
                    <option value="Sophomore">Sophomore</option>
                    <option value="Junior">Junior</option>
                    <option value="Senior">Senior</option/*>
                </select>
            </div>
        </div>

        <!-- Button (Double) -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="submit">Add User</label>
            <div class="col-md-8">
                <button id="submit" name="submit" class="btn btn-default">Submit</button>
                <button id="cancel" name="cancel" class="btn btn-default">Cancel</button>
            </div>
        </div>

    </fieldset>
</form>

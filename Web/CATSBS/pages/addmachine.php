<br>
<form class="form-horizontal" id="addmachine">
    <fieldset>
        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="mid">CATS Serial Number# </label>
            <div class="col-md-4">
                <input id="catsn" name="catssn" type="text" placeholder="2287 - XXXXX" class="form-control input-md" required="">
                <span class="help-block">This ID can be found at the top of your CATS hardware</span>
            </div>
        </div>

        <!-- Select Basic -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="mtype">Machine Type</label>
            <div class="col-md-4">
                <select id="mtype" name="mtype" class="form-control">
                    <option value="auth1">FDM Printer</option>
                    <option value="auth2">SLA Printer</option>
                    <option value="auth3">Laser Cutter</option>
                    <option value="auth4">Soldering Iron</option>
                </select>
            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="mname">Machine Name</label>
            <div class="col-md-4">
                <input id="mname" name="mname" type="text" placeholder="Machine Name Here" class="form-control input-md" required="">
                <span class="help-block">You can name a machine based on name, brand, or model #.</span>
            </div>
        </div>

        <!-- Select Basic -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="class">Require 2 Factor Authentication?</label>
            <div class="col-md-4">
                <select id="mach2fa" name="mach2fa" class="form-control">
                    <option value="1">Yes</option>
                    <option value="0">No</option/*>
                </select>
            </div>
        </div>

        <!-- Select Basic -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="class">Authorization Level</label>
            <div class="col-md-4">
                <select id="authType" name="authType" class="form-control">
                    <option value="auth1">auth1</option>
                    <option value="auth2">auth2</option>
                    <option value="auth3">auth3</option/*>
                </select>
            </div>
        </div>

		<!-- Button (Double) -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="submit">Add Machine</label>
            <div class="col-md-8">
                <button id="submit" name="submit" class="submit btn btn-default">Submit</button>
                <button id="cancel" name="cancel" class="btn btn-default">Cancel</button>
            </div>
        </div>
    </fieldset>
</form>

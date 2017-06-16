
<br>
<form class="form-horizontal" id="adduser">
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

        <!-- Pin input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="pin"><i class="fa fa-lock fa-fw" aria-hidden="true"></i>
                CATS PIN</label>
            <div class="col-md-4">
                <input id="pin" name="pin" type="password" placeholder="PIN here" class="form-control input-md" required="">
                <span class="help-block">Must be a 4 digit number.</span>
            </div>
        </div>
        <!-- Confirm Pin input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="pinconfirm"><i class="fa fa-lock fa-fw" aria-hidden="true"></i>
                Confirm CATS PIN</label>
            <div class="col-md-4">
                <input id="pinconfirm" name="pinconfirm" type="password" placeholder="Confirm PIN here" class="form-control input-md" required="">
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
                <select id="major" name="major" class="form-control">
                    <option value="1">Accounting</option>
                    <option value="2">Administration and Supervision</option>
                    <option value="3">Agribusiness</option>
                    <option value="4">Agricultural Education</option>
                    <option value="5">Agricultural Mechanization and Business</option>
                    <option value="6">Animal and Veterinary Sciences</option>
                    <option value="7">Anthropology</option>
                    <option value="8">Applied Economics</option>
                    <option value="9">Applied Health Research and Evaluation</option>
                    <option value="10">Applied Psychology</option>
                    <option value="11">Applied Sociology</option>
                    <option value="12">Architecture</option>
                    <option value="13">Art</option>
                    <option value="14">Automotive Engineering</option>
                    <option value="15">Biochemistry</option>
                    <option value="16">Biochemistry and Molecular Biology</option>
                    <option value="17">Bioengineering</option>
                    <option value="18">Biological Sciences</option>
                    <option value="19">Biomedical Engineering</option>
                    <option value="20">Biosystems Engineering</option>
                    <option value="21">Business Administration</option>
                    <option value="22">Chemical Engineering</option>
                    <option value="23">Chemistry</option>
                    <option value="24">City and Regional Planning</option>
                    <option value="25">Civil Engineering</option>
                    <option value="26">Communication</option>
                    <option value="27">Communication, Technology and Society</option>
                    <option value="28">Computer Engineering</option>
                    <option value="29">Computer Information Systems</option>
                    <option value="30">Computer Science</option>
                    <option value="31">Construction Science and Management</option>
                    <option value="32">Counselor Education, Clinical Mental Health Counseling</option>
                    <option value="33">Counselor Education, School Counseling</option>
                    <option value="34">Counselor Education, Student Affairs</option>
                    <option value="35">Curriculum and Instruction</option>
                    <option value="36">Digital Production Arts</option>
                    <option value="37">Early Childhood Education</option>
                    <option value="38">Economics</option>
                    <option value="39">Educational Leadership (Higher Ed)</option>
                    <option value="40">Educational Leadership (P-12)</option>
                    <option value="41">Electrical Engineering</option>
                    <option value="42">Elementary Education</option>
                    <option value="43">Engineering and Science Education</option>
                    <option value="44">English</option>
                    <option value="45">Entomology</option>
                    <option value="46">Environmental and Natural Resources</option>
                    <option value="47">Environmental Engineering</option>
                    <option value="48">Environmental Health Physics</option>
                    <option value="49">Environmental Toxicology</option>
                    <option value="50">Financial Management</option>
                    <option value="51">Food, Nutrition and Culinary Sciences</option>
                    <option value="52">Food Science and Human Nutrition</option>
                    <option value="53">Food Technology</option>
                    <option value="54">Forest Resource Management</option>
                    <option value="55">Forest Resources</option>
                    <option value="56">Genetics</option>
                    <option value="57">Geology</option>
                    <option value="58">Graphic Communications</option>
                    <option value="59">Healthcare Genetics</option>
                    <option value="60">Health Science</option>
                    <option value="61">Historic Preservation</option>
                    <option value="62">History</option>
                    <option value="63">Horticulture</option>
                    <option value="64">Human-Centered Computing</option>
                    <option value="65">Human Factors Psychology</option>
                    <option value="66">Human Resource Development</option>
                    <option value="67">Hydrogeology</option>
                    <option value="68">Industrial Engineering</option>
                    <option value="69">Industrial/Organizational Psychology</option>
                    <option value="70">International Family and Community Studies</option>
                    <option value="71">Justice Studies</option>
                    <option value="72">Landscape Architecture</option>
                    <option value="73">Language and International Health</option>
                    <option value="74">Language and International Trade</option>
                    <option value="75">Learning Sciences</option>
                    <option value="76">Literacy</option>
                    <option value="77">Literacy, Language and Culture</option>
                    <option value="78">Management</option>
                    <option value="79">Marketing</option>
                    <option value="80">Materials Science and Engineering</option>
                    <option value="81">Mathematical Sciences</option>
                    <option value="82">Mathematics Teaching</option>
                    <option value="83">Mechanical Engineering</option>
                    <option value="84">Microbiology</option>
                    <option value="85">Middle Level Education</option>
                    <option value="86">Modern Languages</option>
                    <option value="87">Nursing</option>
                    <option value="88">Packaging Science</option>
                    <option value="89">Pan African Studies</option>
                    <option value="90">Parks, Recreation and Tourism Management</option>
                    <option value="91">Philosophy</option>
                    <option value="92">Photonic Science and Technology</option>
                    <option value="93">Physics</option>
                    <option value="94">Planning, Design and Built Environment</option>
                    <option value="95">Plant and Environmental Sciences</option>
                    <option value="96">Policy Studies</option>
                    <option value="97">Political Science</option>
                    <option value="98">Prepharmacy</option>
                    <option value="99">Preprofessional Health Studies</option>
                    <option value="100">Prerehabilitation Sciences</option>
                    <option value="101">Preveterinary Medicine</option>
                    <option value="102">Production Studies in Performing Arts</option>
                    <option value="103">Professional Communication</option>
                    <option value="104">Psychology</option>
                    <option value="105">Public Administration</option>
                    <option value="106">Real Estate Development</option>
                    <option value="107">Religious Studies</option>
                    <option value="108">Rhetorics, Communication and Information Design</option>
                    <option value="109">Science Teaching</option>
                    <option value="110">Secondary Education</option>
                    <option value="111">Sociology</option>
                    <option value="112">Special Education</option>
                    <option value="113">Sports Communication</option>
                    <option value="114">Teaching and Learning</option>
                    <option value="115">Turfgrass</option>
                    <option value="116">Wildlife and Fisheries Biology</option>
                    <option value="117">Women's Leadership</option>
                    <option value="118">World Cinema</option>
                    <option value="119">Youth Development Leadership</option>
                    <option value="120">Youth Development Studies</option>
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
            <label class="col-md-4 control-label" for="submit">Save Changes</label>
            <div class="col-md-8">
                <button id="submit" name="submit" class="submit btn btn-default">Submit</button>
                <button id="cancel" name="cancel" class="btn btn-default">Cancel</button>
            </div>
        </div>

    </fieldset>
</form>
<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>
<%@ include file="template/localHeader.jsp"%>
<<<<<<< HEAD
<ul id="menu">
    <li class="first">
        <a href="<c:url value='/module/outpatient/create.form'/> ">Child Clinic</a>
    </li>
    <li class="first">
        <a href="<c:url value='/module/outpatient/immunization.form'/> ">immunization</a>
    </li
</ul>
<div class="row">
    <div class="jumbotron col-md-8 col-md-offset-2">
        <h2 class="text-center">Child Clinic Registration</h2>
        <div class="form-group col-md-offset-2 col-md-8">
            <form class="form-horizontal" method="post"  action="<c:url value='/module/outpatient/registerchild.form' />">

                <div class="row">
                    <label>Name</label><br/>
                    <div class="col-md-4">
                        <input type="text" class="form-control" name="givenName" placeholder="Given Name" value="" size="30" required />
                    </div>

                    <div class="col-md-4">
                        <input type="text" class="form-control" name="middleName"  placeholder="Middle Name" value="" size="25" required />
                    </div>

                    <div class="col-md-4">
                        <input type="text" class="form-control" name="familyName" placeholder="Family Name" value="" size="30" required />
                    </div>
                </div>

                <div class="form-group">
                    <label>CWC NO.</label>
                    <input type="number" class="form-control" name="cwc" value="" size="12" maxlength="8" required />
                </div>
                <div class="form-group">
                    <label>Date of Birth</label>
                    <input type="date" class="form-control" name="dateofbirth" value="" size="35" required />
                </div>

                <div class="form-group " >
                    <label>Gender</label>
                    <label class="radio-inline">
                        <input type="radio" name="gender"  value="M"> Male
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="gender"  value="F"> Female
                    </label>
                </div>
                <div class="row">
                    <label>Personal Address</label><br>
                    <div class="col-md-4">
                        <input type="text" class="form-control" name="address" placeholder="Address" value="" size="30" required />
                    </div>
                    <div class="col-md-4">
                        <input type="text" class="form-control" name="city" placeholder="City" value="" size="25" required />
                    </div>

                    <div class="col-md-4">
                        <input type="text" class="form-control" name="postalcode" placeholder="Postal Code" value="" size="30" required />
                    </div>

                </div>

                <div class="form-group">
                    <label>location/Village/Estate</label>
                    <input type="text" class="form-control" name="country" value="" size="10" maxlength="40" required />
                </div>

                <div class="form-group">
                    <label>Weight in Kg</label>
                    <input type="text" class="form-control" name="weight" value="" size="10" maxlength="40" required />
                </div>
                <div class="form-group">
                    <label>BCG</label>
                    <input type="dater" class="form-control" name="bcg" value="" size="12" maxlength="8" required />
                </div>

                <div class="form-group">
                    <label>Measles</label>
                    <input type="date" class="form-control" name="measles" value="" size="35" required />
                </div>
                <div class="form-group">
                    <label>Yellow Fever</label>
                    <input type="date" class="form-control" name="yfever" value="" size="35" required />
                </div>
                <div class="form-group">
                    <label>Vitamin A</label>
                    <input type="date" class="form-control" name="vitamin" value="" size="35" required />
                </div>



                <div class="form-group">
                    <label>BCG</label>
                    <input type="dater" class="form-control" name="bcg" value="" size="12" maxlength="8" required />
                </div>
                <div class="row">
                    <label>PCV 10 (Pneumococcal)</label><br/>
                    <div class="col-md-4">
                        <input type="date" class="form-control" name="polio1" placeholder="pcv 1" value="" size="30" required />
                    </div>

                    <div class="col-md-4">
                        <input type="date" class="form-control" name="polio2"  placeholder="pcv 2" value="" size="25" required />
                    </div>

                    <div class="col-md-4">
                        <input type="date" class="form-control" name="polio3" placeholder="pcv 3" value="" size="30" required />
                    </div>

                </div>

                <div class="form-group">
                    <button type="button" class="btn btn-success">Register</button>
                </div>


            </form>
=======
<head>
    <title>Outpatient</title>
    <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.6.0/pure-min.css">
</head>
<body>
<div style="margin: 50px;" class="grid-wrapper">
    <div class="pure-g" style="margin: auto;
		padding: 8px;
		/*width: 850px; */
		border:2px solid #F0F0F0;
		box-shadow: 0px 0px 47px -3px rgba(0,0,0,0.58);
		border-radius: 5px;
		font-size: 15px;">
        <div class="pure-u-1-3">
            <div class="grid-content">
                <form  action="<c:url value='/module/outpatient/create.form' />" method="get" style="margin-top: 10px;" class="pure-form pure-form-aligned">
                    <fieldset>
                        <%--<legend>Patient Details</legend>--%>
                        <div class="pure-control-group">
                            <label for="id">ID</label>
                            <input name="id" id="id" type="text" placeholder="ID">
                        </div>

                        <div class="pure-control-group">
                            <label for="surname">Surname</label>
                            <input name="surname" id="surname" type="text" placeholder="Surname">
                        </div>

                        <div class="pure-control-group">
                            <label for="fname">First Name</label>
                            <input name="fname" id="fname" type="text" placeholder="First Name">
                        </div>

                        <div class="pure-control-group">
                            <label for="lname">Last Name</label>
                            <input name="lname" id="lname" type="text" placeholder="Last Name">
                        </div>

                        <div class="pure-control-group">
                            <label for="dob">Date of Birth</label>
                            <input name="dob" id="dob" type="text" placeholder="DOB">
                        </div>

                        <div class="pure-control-group">
                            <label for="gender">Gender</label>
                            <select name="gender" id="gender">
                                <option value="M">MALE</option>
                                <option value="F">FEMALE</option>
                            </select>
                        </div>

                        <div class="pure-control-group">
                            <label for="address">Address</label>
                            <input name="address" id="address" type="text" placeholder="Address">
                        </div>

                        <div class="pure-control-group">
                            <button style="float: right; margin-right: 225px;" type="submit" class="pure-button pure-button-primary">Submit</button>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
        <div class="pure-u-1-2">
            <div class="grid-content">
                <table style="margin-right: 13px;margin-top: 10px;" class="pure-table pure-table-bordered">
                    <thead>
                    <tr>
                        <th>Family Name</th>
                        <th>Middle Name</th>
                        <th>Last Name</th>
                        <th>Age</th>
                        <th>Gender</th>
                        <th>DOB</th>
                        <th>Summary</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="patient" items="${patients}" varStatus="status">
                        <tr>
                            <td>${patient.givenName}</td>
                            <td>${patient.middleName}</td>
                            <td>${patient.familyName}</td>
                            <td>${patient.age}</td>
                            <td>${patient.gender}</td>
                            <td>${patient.birthdate}</td>
                            <td><a href="summary.form?patientId=${patient.patientId}">Summary</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
>>>>>>> master
        </div>

    </div>
    <%@ include file="/WEB-INF/template/footer.jsp"%>

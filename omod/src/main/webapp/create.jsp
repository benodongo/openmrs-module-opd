<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>
<%@ include file="template/localHeader.jsp"%>
<ul id="menu">
    <li class="first">
        <a href="<c:url value='/module/outpatient/create.form'/> ">Child Clinic</a>
    </li>
    <li class="first">
        <a href="<c:url value='/module/outpatient/immunization.form'/> ">immunization</a>
    </li>
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
        </div>
    </div>


<%@ include file="/WEB-INF/template/footer.jsp"%>

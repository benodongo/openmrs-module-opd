<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>
<%@ include file="template/localHeader.jsp"%>
<ul id="menu">
    <li class="first">
        <a href="<c:url value='/module/outpatient/create.form'/> ">Special Ailments Clinic</a>
    </li>
    <li class="first">
        <a href="<c:url value='/module/outpatient/hiv.form'/> ">HIV</a>
    </li
</ul>
<div class="row">
    <div class="jumbotron col-md-8 col-md-offset-2">
        <h3 class="text-center" style="text-decoration-color: #2aabd2">HIV/AIDS Care Content</h3>
        <div class="form-group col-md-offset-2 col-md-8">
            <form class="form-horizontal" method="post"  action="<c:url value='/module/outpatient/registerchild.form' />">

                <div class="row">
                    <label>ART Start Date</label><br/>
                    <div class="col-md-4">
                        <input type="text" class="form-control" name="givenName" placeholder="Given Name" value="" size="30" required />
                    </div>

                </div>

                <div class="form-group">
                    <label>Unique Patient Number</label>
                    <input type="text" class="form-control" name="fathername" value="" size="12" maxlength="8" required />
                </div>
                <div class="form-group">
                    <label>Patient's Name'</label>
                    <input type="text" class="form-control" name="mothername" value="" size="12" maxlength="8" required />
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
                    <label>Country</label>
                    <input type="text" class="form-control" name="country" value="" size="10" maxlength="40" required />
                </div>


                <div class="form-group">
                    <label>CD4 Value</label>
                    <input type="dater" class="form-control" name="bcg" value="" size="12" maxlength="8" required />
                </div>
                
                <div class="form-group">
                    <button type="button" class="btn btn-success">Add Info</button>
                </div>


            </form>
        </div>

    </div>
<%@ include file="/WEB-INF/template/footer.jsp"%>
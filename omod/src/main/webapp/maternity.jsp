<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>
<%@ include file="template/localHeader.jsp"%>
<div class="row">
    <div class="jumbotron col-md-8 col-md-offset-2">
        <h2 class="text-center">Maternal Health Registration</h2>
        <h3 class="text-center" style="text-decoration-color: #2aabd2">Maternity Registration</h3>
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
                    <label>Date Admitted to maternity unit</label>
                    <input type="date" class="form-control" name="dateAdmitted" value="" size="35" required />
                </div>

                <div class="form-group">
                    <label>No of ANC Visits</label>
                    <input type="text" class="form-control" name="ancVisits" placeholder="ANC Visits" size = "25" required />
                </div>
                <div class="form-group">
                    <label>In-Patient No</label>
                    <input type="text" class="form-control" name="inpatientNo" placeholder="In-patient No" size="12" required />
                </div>                

                <div class="form-group">
                    <label>Age</label>
                    <input type="text" class="form-control" name="age" value="" size="3" required />
                </div>   

                <div class="form-group">
                    <label>Marital Status</label>
                    <input type="radio" name="maritalStatus" value="married"> Married<br>
					<input type="radio" name="maritalStatus" value="widowed"> Widowed<br>
					<input type="radio" name="maritalStatus" value="divorced"> Divorced<br>
					<input type="radio" name="maritalStatus" value="single"> Single<br>
					<input type="radio" name="maritalStatus" value="separated"> Separated<br>                    
                </div> 

                 <div class="form-group">
                    <label>Village/Estate/Landmark</label>
                    <input type="text" class="form-control" name="location" value="" size="20" required />
                </div>  

                <div class="form-group">
                    <label>Parity</label>
                    <input type="text" class="form-control" name="parity" value="" size="20" required />
                </div> 

                 <div class="form-group">
                    <label>Gravida</label>
                    <input type="text" class="form-control" name="gravida" value="" size="20" required />
                </div>

                 <div class="form-group">
                    <label>Last Menstrual Period</label>
                    <input type="date" class="form-control" name="lastMenstrualPeriod" value="" size="3" required />
                </div>

                <div class="form-group">
                    <label>EStimated Date of Delivery</label>
                    <input type="date" class="form-control" name="estimatedDelivery" value="" size="3" required />
                </div>



                


            </form>
        </div>

    </div>
<%@ include file="/WEB-INF/template/footer.jsp"%>
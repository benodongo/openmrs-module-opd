<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>
<%@ include file="template/localHeader.jsp"%>
<openmrs:htmlInclude file="/moduleResources/outpatient/bootstrap/css/custom.css" />

<script type="text/javascript">

    (function ($) {

        $(document).ready(function() {

            $('#immunization_table1').dataTable({
                "sDom": '<"top"f>rt<"bottom"lp><"clear">'
            });

            $('#encounter_table').dataTable({
                "sDom": '<"top"f>rt<"bottom"lp><"clear">'
            });

            $('#admissionDate').datetimepicker();
            $('#bcgDate').datetimepicker();
            $('#polio1Date').datetimepicker();
            $('#polio2Date').datetimepicker();
            $('#polio3Date').datetimepicker();
            $('#pcv').datetimepicker();
            $('#measlesDate').datetimepicker();
            $('#yellowFeverDate').datetimepicker();
            $('#last_menstrual').datetimepicker();
            $('#estimated_delivery').datetimepicker();
            $('#artDate').datetimepicker();
            $('#ctxDate').datetimepicker();
            $('#tbDate').datetimepicker();

            $('#encountertime').datetimepicker();


            $('#immunizationModal').on('show.bs.modal', function(event) {
                var btn = $(event.relatedTarget);
                var id = btn.data('id');
                $("#opdId").val(id);
            });
            $('#maternalModal').on('show.bs.modal', function(event) {
                var btn = $(event.relatedTarget);
                var id = btn.data('id');
                $("#opdId").val(id);
            });

            $('#hivModal').on('show.bs.modal', function(event) {
                var btn = $(event.relatedTarget);
                var id = btn.data('id');
                $("#opdId").val(id);
            });

            $('#outcome_opt').change(function(){
                var selection = $(this).val();
                //alert(selection);
                switch(selection)
                {
                    case "D":
                        $('#causeofdeath_opt').show();
                        $('#referral_to_opt').hide();
                        break;

                    default:
                        $('#causeofdeath_opt').hide();
                        $('#referral_to_opt').show();
                        break;
                }
            });


            $('#immEncounterModal').on('show.bs.modal', function(event) {
                var btn = $(event.relatedTarget);
                var id = btn.data('id');
                $("#patientId").val(id);
            });
            $('#maternalEncounterModal').on('show.bs.modal', function(event) {
                var btn = $(event.relatedTarget);
                var id = btn.data('id');
                $("#patientId").val(id);
            });

            $('#hivEncounterModal').on('show.bs.modal', function(event) {
                var btn = $(event.relatedTarget);
                var id = btn.data('id');
                $("#patientId").val(id);
            });


            $('#dischargetime').datetimepicker();




        });

    }(jQuery));

</script>
<div class="row">
    <c:if test="${outpatient.patient.dead==true}">
    <div class="panel panel-danger">
        </c:if>
        <c:if test="${outpatient.patient.dead==false}">
        <div class="panel panel-info">
            </c:if>
            <div class="panel-heading">
                <c:if test="${outpatient.patient.dead}">
                    Patient is Dead-(Death Date-&nbsp;${outpatient.patient.deathDate})
                </c:if>
                <h3 class="panel-title">
                    <c:set var="gender" scope="session" value="${outpatient.patient.gender}"/>
                    <c:if test="${gender=='M'}">
                        <i class="fa fa-male"></i>
                    </c:if>
                    <c:if test="${gender=='F'}">
                        <i class="fa fa-female"></i>
                    </c:if>
                    ${outpatient.patient.givenName}&nbsp;${outpatient.patient.middleName}
                    &nbsp;${outpatient.patient.familyName}
                </h3>
                <h4 class="pull-right">Outpatient ID-${patientIdentifier}&nbsp;
                    outpatient ID-${outpatient.opdId}
                </h4>

                <h4 class="panel-title">Age-${outpatient.patient.age}(${outpatient.patient.birthdate})</h4>
            </div>
            <div class="panel-body">
                <div role="tabpanel">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#overview" aria-controls="home" role="tab" data-toggle="tab">Overview</a></li>
                        <li role="presentation"><a href="#immunization" aria-controls="immunization" role="tab" data-toggle="tab">Child Clinic</a></li>
                        <li role="presentation"><a href="#admission" aria-controls="admission" role="tab" data-toggle="tab">General OPD clinic</a></li>
                        <li role="presentation"><a href="#maternal" aria-controls="maternal" role="tab" data-toggle="tab">Maternal Care</a></li>
                        <li role="presentation"><a href="#hiv" aria-controls="hiv" role="tab" data-toggle="tab">HIV Care</a></li>
                        <li role="presentation"><a href="#demographics" aria-controls="orders" role="tab" data-toggle="tab">Demographics</a></li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="overview">

                            <h4>Weight</h4>
                            <br>
                            <h4>Height</h4>
                            <br>
                            <h4>BMI</h4>
                            <br>
                            <h4>Allergies</h4>

                        </div>
           <!--immunization link -->
                        <div role="tabpanel" class="tab-pane" id="immunization">

                            <c:if test="${immunization ==null }">
                                <c:if test="${outpatient.patient.dead==true}">
                                    <button type="button" class="btn btn-success"  disabled="disabled" data-toggle="modal"  data-id="${outpatient.outPatientId}" data-target="#immunizationModal">
                                        <i class="fa fa-plus-square"></i> Admit</button>
                                </c:if>
                                <c:if test="${outpatient.patient.dead==false}">
                                    <button type="button" class="btn btn-success" data-toggle="modal"  data-id="${outpatient.outPatientId}" data-target="#immunizationModal">
                                        <i class="fa fa-plus-square"></i>Register Immunizatiom</button>
                                </c:if>
                            </c:if>


                            <c:if test="${immunization !=null }">

                                <div role="container">

                                    <!-- Nav tabs -->
                                    <ul class="nav nav-pills">
                                        <li r class="active"><a  data-toggle="pill" href="#home" >Add Encounters</a></li>
                                        <li><a  data-toggle="pill" href="#profile">List Encounters</a></li>
                                    </ul>

                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                            <%--Add Encounter--%>
                                        <div role="tabpanel" class="tab-pane active" id="home">
                                            <div>
                                                <br>
                                                <br>
                                                <button class="btn btn-success btn-sm" data-toggle="modal"  data-id="${outpatient.outPatientId}"
                                                        data-target="#immEncounterModal">
                                                    <i class="fa fa-plus-square"></i>Encounter</button>
                                            </div>
                                        </div>

                                        <div role="tabpanel" class="tab-pane" id="profile">

                                            <div class="col-md-10 col-offset-md-1">
                                                <h3>Encounters</h3>
                                                <table class="table table-striped table-responsive table-hover" id="encounter_table">
                                                    <thead>
                                                    <tr>
                                                        <th>#</th>
                                                        <td>Encounter Date</td>
                                                        <td>Encounter Type</td>
                                                        <th>Location</th>
                                                        <th>View</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:set var="count" value="0" scope="page" />
                                                    <c:forEach var="encounter" items="${encounterList}" varStatus="status">
                                                        <tr>
                                                            <c:set var="count" value="${count + 1}" scope="page"/>
                                                            <td>${count}</td>
                                                            <td>${encounter.encounterDatetime}</td>
                                                            <td>${encounter.encounterType.name}</td>
                                                            <td>${encounter.location.name}</td>
                                                            <!-- Button trigger modal -->
                                                            <td>
                                                                <a href="<c:url value='/module/outpatient/obs.form?id=${encounter.encounterId}' />" >
                                                                    <i class="fa fa-plus-square"></i>Obs
                                                                </a>
                                                            </td>
                                                                <%--<td> <button type="button" class="btn btn-info" data-toggle="modal" data-target="#viewDischargeModal_${count}">--%>
                                                                <%--<i class="fa fa-plus-square"></i>View--%>
                                                                <%--</button></td>--%>
                                                        </tr>
                                                    </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>


                                    </div>

                                </div>

                            </c:if>

                        </div>
                        <!--maternal link-->
                        <div role="tabpanel" class="tab-pane" id="maternal">

                            <c:if test="${maternal ==null }">
                                <c:if test="${outpatient.patient.dead==true}">
                                    <button type="button" class="btn btn-success"  disabled="disabled" data-toggle="modal"  data-id="${outpatient.outPatientId}" data-target="#maternalModal">
                                        <i class="fa fa-plus-square"></i> Admit</button>
                                </c:if>
                                <c:if test="${outpatient.patient.dead==false}">
                                    <button type="button" class="btn btn-success" data-toggle="modal"  data-id="${outpatient.outPatientId}" data-target="#maternalModal">
                                        <i class="fa fa-plus-square"></i>Enroll to maternal care</button>
                                </c:if>
                            </c:if>


                            <c:if test="${maternal !=null }">

                                <div role="container">

                                    <!-- Nav tabs -->
                                    <ul class="nav nav-pills">
                                        <li r class="active"><a  data-toggle="pill" href="#home2" >Add Encounters</a></li>
                                        <li><a  data-toggle="pill" href="#profile2">List Encounters</a></li>
                                    </ul>

                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                            <%--Add Encounter--%>
                                        <div role="tabpanel" class="tab-pane active" id="home2">
                                            <div>
                                                <br>
                                                <br>
                                                <button class="btn btn-success btn-sm" data-toggle="modal"  data-id="${outpatient.outPatientId}"
                                                        data-target="#maternalEncounterModal">
                                                    <i class="fa fa-plus-square"></i>Encounter</button>
                                            </div>
                                        </div>

                                        <div role="tabpanel" class="tab-pane" id="profile2">

                                            <div class="col-md-10 col-offset-md-1">
                                                <h3>Encounters</h3>
                                                <table class="table table-striped table-responsive table-hover" id="encounter_table">
                                                    <thead>
                                                    <tr>
                                                        <th>#</th>
                                                        <td>Encounter Date</td>
                                                        <td>Encounter Type</td>
                                                        <th>Location</th>
                                                        <th>View</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:set var="count" value="0" scope="page" />
                                                    <c:forEach var="encounter" items="${encounterList}" varStatus="status">
                                                        <tr>
                                                            <c:set var="count" value="${count + 1}" scope="page"/>
                                                            <td>${count}</td>
                                                            <td>${encounter.encounterDatetime}</td>
                                                            <td>${encounter.encounterType.name}</td>
                                                            <td>${encounter.location.name}</td>
                                                            <!-- Button trigger modal -->
                                                            <td>
                                                                <a href="<c:url value='/module/outpatient/obs.form?id=${encounter.encounterId}' />" >
                                                                    <i class="fa fa-plus-square"></i>Obs
                                                                </a>
                                                            </td>
                                                                <%--<td> <button type="button" class="btn btn-info" data-toggle="modal" data-target="#viewDischargeModal_${count}">--%>
                                                                <%--<i class="fa fa-plus-square"></i>View--%>
                                                                <%--</button></td>--%>
                                                        </tr>
                                                    </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>


                                    </div>

                                </div>

                            </c:if>

                        </div>
                        <!-- Hiv care link -->
                        <div role="tabpanel" class="tab-pane" id="hiv">

                            <c:if test="${hiv ==null }">
                                <c:if test="${outpatient.patient.dead==true}">
                                    <button type="button" class="btn btn-success"  disabled="disabled" data-toggle="modal"  data-id="${outpatient.outPatientId}" data-target="#hivModal">
                                        <i class="fa fa-plus-square"></i> Admit</button>
                                </c:if>
                                <c:if test="${outpatient.patient.dead==false}">
                                    <button type="button" class="btn btn-success" data-toggle="modal"  data-id="${outpatient.outPatientId}" data-target="#hivModal">
                                        <i class="fa fa-plus-square"></i>Enroll to hiv care</button>
                                </c:if>
                            </c:if>


                            <c:if test="${hiv !=null }">

                                <div role="container">

                                    <!-- Nav tabs -->
                                    <ul class="nav nav-pills">
                                        <li r class="active"><a  data-toggle="pill" href="#home3" >Add Encounters</a></li>
                                        <li><a  data-toggle="pill" href="#profile3">List Encounters</a></li>
                                    </ul>

                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                            <%--Add Encounter--%>
                                        <div role="tabpanel" class="tab-pane active" id="home3">
                                            <div>
                                                <br>
                                                <br>
                                                <button class="btn btn-success btn-sm" data-toggle="modal"  data-id="${outpatient.outPatientId}"
                                                        data-target="#hivEncounterModal">
                                                    <i class="fa fa-plus-square"></i>Encounter</button>
                                            </div>
                                        </div>

                                        <div role="tabpanel" class="tab-pane" id="profile3">

                                            <div class="col-md-10 col-offset-md-1">
                                                <h3>Encounters</h3>
                                                <table class="table table-striped table-responsive table-hover" id="encounter_table">
                                                    <thead>
                                                    <tr>
                                                        <th>#</th>
                                                        <td>Encounter Date</td>
                                                        <td>Encounter Type</td>
                                                        <th>Location</th>
                                                        <th>View</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:set var="count" value="0" scope="page" />
                                                    <c:forEach var="encounter" items="${encounterList}" varStatus="status">
                                                        <tr>
                                                            <c:set var="count" value="${count + 1}" scope="page"/>
                                                            <td>${count}</td>
                                                            <td>${encounter.encounterDatetime}</td>
                                                            <td>${encounter.encounterType.name}</td>
                                                            <td>${encounter.location.name}</td>
                                                            <!-- Button trigger modal -->
                                                            <td>
                                                                <a href="<c:url value='/module/outpatient/obs.form?id=${encounter.encounterId}' />" >
                                                                    <i class="fa fa-plus-square"></i>Obs
                                                                </a>
                                                            </td>
                                                                <%--<td> <button type="button" class="btn btn-info" data-toggle="modal" data-target="#viewDischargeModal_${count}">--%>
                                                                <%--<i class="fa fa-plus-square"></i>View--%>
                                                                <%--</button></td>--%>
                                                        </tr>
                                                    </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>


                                    </div>

                                </div>

                            </c:if>

                        </div>
                        <!--discharges-->
                        <div role="tabpanel" class="tab-pane" id="discharge">
                            <div class="col-md-10 col-offset-md-1">
                                <h3>Admissions and Discharges</h3>
                                <table class="table table-striped table-responsive table-hover" id="admission_table1">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <td>Admission Date</td>
                                        <td>Discharge Date</td>
                                        <th>Ward Name</th>
                                        <th>View</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:set var="count" value="0" scope="page" />
                                    <c:forEach var="admission" items="${admissionList}" varStatus="status">
                                        <tr>
                                            <c:set var="count" value="${count + 1}" scope="page"/>
                                            <td>${count}</td>
                                            <td>${admission.admissionDate}</td>
                                            <td>${admission.discharge.dischargeDate}</td>
                                            <td>${admission.ward.wardName}</td>
                                            <!-- Button trigger modal -->
                                            <td> <button type="button" class="btn btn-info" data-toggle="modal" data-target="#viewDischargeModal_${count}">
                                                <i class="fa fa-eye"></i>View
                                            </button></td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>

                        </div>


                        <div role="tabpanel" class="tab-pane" id="demographics">
                            <div class="">
                                <table class="table table-striped">
                                    <thead>
                                    <th>Address </th>
                                    <th>City </th>
                                    <th>County </th>
                                    <th>Country </th>
                                    <th>Postal Code </th>

                                    </thead>

                                    <tbody>
                                    <tr>
                                        <td>${outpatient.patient.personAddress.address1}</td>
                                        <td>${outpatient.patient.personAddress.cityVillage}</td>
                                        <td>${outpatient.patient.personAddress.stateProvince}</td>
                                        <td>${outpatient.patient.personAddress.country}</td>
                                        <td>${outpatient.patient.personAddress.postalCode}</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
   <!--pop up the immunization form -->
    <div class="modal fade" id="immunizationModal" tabindex="-1" role="dialog" aria-labelledby="immunizationModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="immunizationModalLabel">Register Immunization</h4>
                </div>

                <div class="modal-body">
                    <div class="row">
                        <div class="form-group col-md-offset-2 col-md-8">
                            <form class="form-horizontal" method="post"  action="<c:url value='/module/outpatient/saveImmunization.form' />">

                                <input id="opdId" type="hidden" name="opd_id" value="${outpatient.patient.patientId}" required />
                                <div class="form-group">
                                    <label>BCG date</label>
                                    <div class='input-group date' id='bcgDate'>
                                        <input type='text' class="form-control" name="bcg_date" required />
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Polio 1 date</label>
                                    <div class='input-group date' id='polio1Date'>
                                        <input type='text' class="form-control" name="polio1_date" required />
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Polio 2 date</label>
                                    <div class='input-group date' id='polio2Date'>
                                        <input type='text' class="form-control" name="polio2_date" required />
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Polio 3 date</label>
                                    <div class='input-group date' id='polio3Date'>
                                        <input type='text' class="form-control" name="polio3_date" required />
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Measles date</label>
                                    <div class='input-group date' id='measlesDate'>
                                        <input type='text' class="form-control" name="measles_date" required />
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Yellow Fever Date</label>
                                    <div class='input-group date' id='yellowFeverDate'>
                                        <input type='text' class="form-control" name="yellow_fever_date" required />
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Pneumococcal Date</label>
                                    <div class='input-group date' id='pcv'>
                                        <input type='text' class="form-control" name="pcv" required />
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </div>



                                <div class="form-group">
                                    <button type="submit" class="btn btn-success">Submit</button>
                                </div>

                            </form>

                        </div>

                    </div>

                </div>
                <%--<div class="modal-footer">--%>
                <%--<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>--%>
                <%--&lt;%&ndash;<button type="submit" class="btn btn-primary">Save</button>&ndash;%&gt;--%>
                <%--</div>--%>
            </div>
        </div>
    </div>
   <!--pop up the maternal form -->
        <div class="modal fade" id="maternalModal" tabindex="-1" role="dialog" aria-labelledby="maternalModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="maternalModalLabel">Enroll in Maternal Care</h4>
                    </div>

                    <div class="modal-body">
                        <div class="row">
                            <div class="form-group col-md-offset-2 col-md-8">
                                <form class="form-horizontal" method="post"  action="<c:url value='/module/outpatient/saveMaternal.form' />">

                                    <input id="opdId" value="${outpatient.patient.patientId}"type="hidden" name="opd_id"  required />

                                    <%--<div class="form-group">--%>
                                    <%--<label>Admission Date</label>--%>
                                    <%--<input type="date" class="form-control" name="admission_date"   required />--%>
                                    <%--</div>--%>


                                    <div class="form-group">
                                    <label>No of ANC Visits</label>
                                    <input type="text" class="form-control" name="anc_visits"   required />
                            </div>
                                    <div class="form-group">
                                        <label>Marital Status</label>
                                        <select class="form-control" name="marital_status">
                                            <option value="0">Married</option>
                                            <option value="1">Widowed</option>
                                            <option value="2">Divorced</option>
                                            <option value="3">Single</option>
                                            <option value="4">Separated</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Parity</label>
                                        <input type="text" class="form-control" name="parity"   required />
                                    </div>
                                    <div class="form-group">
                                        <label>Gravida</label>
                                        <input type="text" class="form-control" name="gravida"   required />
                                    </div>
                                    <div class="form-group">
                                        <label>Last Menstrual Date</label>
                                        <div class='input-group date' id='last_menstrual'>
                                            <input type='text' class="form-control" name="last_menstrual" required />
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>Estimated Delivery Date</label>
                                        <div class='input-group date' id='estimated_delivery'>
                                            <input type='text' class="form-control" name="estimated_delivery" required />
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-success">Submit</button>
                                    </div>

                                </form>

                            </div>

                        </div>

                    </div>
                    <%--<div class="modal-footer">--%>
                    <%--<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>--%>
                    <%--&lt;%&ndash;<button type="submit" class="btn btn-primary">Save</button>&ndash;%&gt;--%>
                    <%--</div>--%>
                </div>
            </div>
        </div>

        <!-- pop up form for hiv care -->
        <div class="modal fade" id="hivModal" tabindex="-1" role="dialog" aria-labelledby="hivModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="hivModalLabel">Register to HIV Care</h4>
                    </div>

                    <div class="modal-body">
                        <div class="row">
                            <div class="form-group col-md-offset-2 col-md-8">
                                <form class="form-horizontal" method="post"  action="<c:url value='/module/outpatient/saveHiv.form' />">

                                    <input id="opdId" value="${outpatient.patient.patientId}" type="hidden" name="opd_id"  required />

                                    <%--<div class="form-group">--%>
                                    <%--<label>Admission Date</label>--%>
                                    <%--<input type="date" class="form-control" name="admission_date"   required />--%>
                                    <%--</div>--%>
                                    <div class="form-group">
                                        <label>Admission Date</label>
                                        <div class='input-group date' id='admissionDate'>
                                            <input type='text' class="form-control" name="admission_date" required />
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>Serial Counter</label>
                                        <input type="text" class="form-control" name="serial_counter"   required />
                                    </div>
                                    <div class="form-group">
                                        <label>ART Start Date</label>
                                        <div class='input-group date' id='artDate'>
                                            <input type='text' class="form-control" name="art_date" required />
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>Reason for Eligibilty</label>
                                        <input type="text" class="form-control" name="eligibility_reason"   required />
                                    </div>
                                    <div class="form-group">
                                        <label>WHO Clinical Stage</label>
                                        <input type="text" class="form-control" name="clinical_stage"   required />
                                    </div>
                                    <div class="form-group">
                                        <label>CD4 Value (% for children)</label>
                                        <input type="text" class="form-control" name="cd4_value"   required />
                                    </div>
                                    <div class="form-group">
                                        <label>Height of Child (cms)</label>
                                        <input type="text" class="form-control" name="height"   required />
                                    </div>
                                    <div class="form-group">
                                        <label>Weight in Kgs</label>
                                        <input type="text" class="form-control" name="weight"   required />
                                    </div>
                                    <div class="form-group">
                                        <label>CTX Prophylaxis Start Date</label>
                                        <div class='input-group date' id='ctxDate'>
                                            <input type='text' class="form-control" name="ctx_date" required />
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>TB Treatment Date</label>
                                        <div class='input-group date' id='tbDate'>
                                            <input type='text' class="form-control" name="tb_date" required />
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>TB reg.No</label>
                                        <input type="text" class="form-control" name="tb_reg"   required />
                                    </div>
                                    <div class="form-group">
                                        <label>Original Regime</label>
                                        <input type="text" class="form-control" name="original_regime"   required />
                                    </div>


                                    <div class="form-group">
                                        <button type="submit" class="btn btn-success">Submit</button>
                                    </div>

                                </form>

                            </div>

                        </div>

                    </div>
                    <%--<div class="modal-footer">--%>
                    <%--<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>--%>
                    <%--&lt;%&ndash;<button type="submit" class="btn btn-primary">Save</button>&ndash;%&gt;--%>
                    <%--</div>--%>
                </div>
            </div>
        </div>

        <!-- Modal for View -->
        <!-- not yet implemented -->
<%--Encounter Modal--%>
<div class="modal fade" id="immEncounterModal" tabindex="-1" role="dialog" aria-labelledby="immEncounterModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="encounterModalLabel">Add Encounter </h4>
            </div>

            <div class="modal-body">
                <div class="row">
                    <div class="form-group col-md-offset-2 col-md-8">
                        <form class="form-horizontal" method="post"  action="<c:url value='/module/outpatient/saveEncounter.form' />">

                            <input id="patientId" type="hidden" class="form-control" name="patient_id"  required />
                            <input type="hidden"  name="immunization_id"  value="${immunization.immunizationId}" />

                            <div class="form-group">
                                <label>Encounter Date</label>
                                <div class='input-group date' id='encountertime'>
                                    <input type='text' class="form-control" name="encounter_date"/>
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Encounter Type</label>
                                <select name="encounter_type" class="form-control"  required>
                                    <c:forEach var="type" items="${encounterTypeList}">
                                        <option value="${type.encounterTypeId}">${type.name}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <div class="form-group">
                                <label> Location</label>
                                <select name="location" class="form-control"  required>
                                    <c:forEach var="location" items="${locationList}">
                                        <option value="${location.locationId}">${location.name}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <%--<div class="form-group">--%>
                            <%--<label> Provider Role</label>--%>
                            <%--<select name="provider_role" class="form-control"  required>--%>
                            <%--<option value="Unkown">Unkown</option>--%>
                            <%--<option value="Nurse">Nurse</option>--%>
                            <%--<option value="Doctor">Doctor</option>--%>
                            <%--</select>--%>
                            <%--</div>--%>

                            <div class="form-group">
                                <button type="submit" class="btn btn-success">Submit</button>
                            </div>
                        </form>
                    </div>

                </div>

            </div>
            <div class="modal-footer">
            </div>
        </div>
    </div>
</div>
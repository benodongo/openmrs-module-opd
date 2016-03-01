<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>

<%@ include file="template/localHeader.jsp"%>

<openmrs:htmlInclude file="/moduleResources/outpatient/img/search.gif" />
<openmrs:htmlInclude file="/moduleResources/outpatient/img/hiv.jpg" />

<link rel="stylesheet" type="text/css" href="manage.css">
<div class="panel panel-default">
    <div class="panel-heading">
        <i class="fa fa-spinner fa-spin"></i>&nbsp;Dashboard 
    </div>
    <div class="panel-body">
        <div class="row">
            <div class="col-md-2">
                <a style="text-decoration: none" href="<c:url value='/module/outpatient/findPatient.form'/>">
                    <i class="fa fa-search fa-5x"></i><br>
                    <span>Search Patient</span>
                </a>
            </div>

            <div class="col-md-2">
                <a style="text-decoration: none" href="<c:url value='/findPatient.htm'/>">
                    <i class="fa fa-user-plus fa-5x"></i><br>
                    <span>Add Patient</span>
                </a>
            </div>
            <div class="col-md-2">
                <a style="text-decoration: none" href="<c:url value='/module/outpatient/create.form'/> ">
                    <i class="fa fa-stethoscope fa-5x"></i><br>
                    <span>Child Clinic</span>
                </a>
            </div>
            <div class="col-md-2">
                <a style="text-decoration: none" href="<c:url value='/module/outpatient/maternity.form'/> ">
                    <i class="fa fa-user-md fa-5x"></i><br>
                    <span>Maternal Care</span>
                </a>
            </div>
            <div class="col-md-2">
                <a style="text-decoration: none" href="<c:url value='/module/htmlformentry/htmlForm.form'/>">
                    <i class="fa fa-calendar fa-5x"></i><br>
                    <span>Appointments</span>
                </a>
            </div>
            <div class="col-md-2">
                <a style="text-decoration: none" href="<c:url value='/module/outpatient/htmlFormEntry.form'/> ">
                    <i class="fa fa-calendar fa-5x"></i><br>
                    <span>Html Forms</span>
                </a>
            </div>

            <div class="col-md-2">
                <a style="text-decoration: none" href="#">
                    <i class="fa fa-medkit fa-5x"></i><br>
                    <span>Emergency</span>
                </a>
                
            </div>
           
        </div>
    </div>
</div>
<%@ include file="/WEB-INF/template/footer.jsp"%>


<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>

<%@ include file="template/localHeader.jsp"%>
<div class="panel panel-default">
    <div class="panel-heading">
        <i class="fa fa-spinner fa-spin"></i>&nbsp;Dashboard
    </div>
    <div class="panel-body">
        <div class="row">
            <div class="col-md-2">
                <a  style="text-decoration: none"href="#">
                    <i class="fa fa-search fa-5x"></i><br>
                    <span>Search Patient</span>
                </a>
            </div>

            <div class="col-md-2">
                <a style="text-decoration: none" href="#">
                    <i class="fa fa-user-plus fa-5x"></i><br>
                    <span>Add Patient</span>
                </a>
            </div>
            <div class="col-md-2">
                <a style="text-decoration: none" href="#">
                    <i class="fa fa-calendar fa-5x"></i><br>
                    <span>Appointments</span>
                </a>
            </div>
            <div class="col-md-2">
                <a style="text-decoration: none" href="#">
                    <i class="fa fa-calendar fa-5x"></i><br>
                    <span>Active Visits</span>
                </a>
            </div>
            <div class="col-md-2">
                <a style="text-decoration: none" href="#">
                    <i class="fa fa-stethoscope fa-5x"></i><br>
                    <span>Laboratory</span>
                </a>
            </div>
            <div class="col-md-2">
                <a style="text-decoration: none" href="#">
                    <i class="fa fa-medkit fa-5x"></i><br>
                    <span>Emergency</span>
                </a>
            </div>
            <div class="col-md-2">
                <a style="text-decoration: none" href="#">
                    <i class="fa fa-ambulance fa-5x"></i><br>
                    <span>Ambulance</span>
                </a>
            </div>
            <br/>
            <div class="col-md-2">
                <a style="text-decoration: none" href="#">
                    <i class="fa fa-users fa-5x"></i><br>
                    <span>OutPatients List</span>
                </a>
            </div>

        </div>
    </div>
</div>


<%@ include file="/WEB-INF/template/footer.jsp"%>


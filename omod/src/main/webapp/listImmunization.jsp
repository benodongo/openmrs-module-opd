<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp" %>
<%@ include file="template/localHeader.jsp"%>


<script type="text/javascript">

    (function ($) {
        $(document).ready(function() {

            $('#immunization_table').dataTable({
                "sDom": '<"top"f>rt<"bottom"lp><"clear">'
            });

            $('#outcome_opt').change(function(){
                var selection = $(this).val();
                //alert(selection);
                switch(selection)
                {
                    case "D":
                        $('#causeofdeath_opt').show();
                        break;

                    default:
                        $('#causeofdeath_opt').hide();
                        break;
                }
            });


            $('#dischargeModal').on('show.bs.modal', function(event) {
                var btn = $(event.relatedTarget);
                var id = btn.data('id');
                $("#admissionId").val(id);
            });


            $('#dischargetime').datetimepicker();

            $(".clickable-row").click(function() {
                window.document.location = $(this).data("href");
            });


        });

    }(jQuery));
</script>
<ul id="menu">
    <li class="first" <c:if test='<%= request.getRequestURI().contains("/findPatient") %>'>class="active"</c:if>>
        <a href="${pageContext.request.contextPath}/module/outpatient/findPatient.form">
            <spring:message code="Entroll new Patient"/>
        </a>
    </li>
</ul>
<h2 class="text-center">Child Clinic Immunizations</h2>

<table class="table table-striped table-responsive table-hover" id="immunization_table">
    <thead>
    <tr>
        <th>#</th>
        <th>Outpatient ID</th>
        <th>Given Name</th>
        <th>Family Name</th>
        <th>BCG Date</th>
        <th>Polio1 Date</th>
        <th>Polio2 Date</th>
        <th>Polio3 Date</th>
        <th>Measles Date</th>
        <th>Yellow Fever</th>
    </tr>
    </thead>
    <tbody>
    <c:set var="count" value="0" scope="page" />
    <c:forEach var="immunization" items="${immunizationList}" varStatus="status">
        <tr class='clickable-row'
            data-href="<c:url value='/module/outpatient/processRequest.form?id=${immunization.outpatient.opdId}' />">
            <c:set var="count" value="${count + 1}" scope="page"/>
            <td>${count}</td>
            <td>${immunization.outpatient.opdId}</td>
            <td>${immunization.outpatient.patient.givenName}</td>
            <td>${immunization.outpatient.patient.familyName}</td>
            <td>${immunization.bcgDate}</td>
            <td>${immunization.polio1Date}</td>
            <td>${immunization.polio2Date}</td>
            <td>${immunization.polio3Date}</td>
            <td>${immunization.measlesDate}</td>
            <td>${immunization.yellowFeverDate}</td>

            <!-- Button trigger modal -->
            <!--
            <td> <button type="button" class="btn btn-info" data-toggle="modal" data-target="#viewModal_${count}">
                <i class="fa fa-eye"></i>View
            </button></td>

            <td>
                <button type="button" class="btn btn-success" data-toggle="modal" data-id="${immunization.immunizationId}" data-target="#dischargeModal">
                    <i class="fa fa-check-square-o"></i> Discharge</button>

                    <%--<a href="<c:url value='/module/inpatient/discharge.form?id=${immunization.admissionId}' />">--%>
                    <%--<button class="btn btn-success"> <i class="fa fa-check-square-o"></i> Discharge</button>--%>
                    <%--</a> --%>
            </td>
            -->
        </tr>
    </c:forEach>
    </tbody>
</table>



<!-- Modal for View -->
<c:set var="count" value="0" scope="page" />
<c:forEach var="admission" items="${admissionList}" varStatus="status">
    <c:set var="count" value="${count + 1}" scope="page"/>
    <div class="modal fade" id="viewModal_${count}" tabindex="-1" role="dialog" aria-labelledby="viewModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="viewModalLabel">Patient Admission</h4>
                </div>
                <div class="modal-body">
                    <div class="text-center">
                        <h4>Patient Details</h4>
                        <hr>
                        <p>Inpatient ID:${admission.inpatient.inpatientId}</p>
                        <p>Given Name:${admission.inpatient.patient.givenName}</p>
                        <p>Middle Name:${admission.inpatient.patient.middleName}</p>
                        <p>Family Name:${admission.inpatient.patient.familyName}</p>
                        <p>Phone Number:${admission.inpatient.phoneNumber}</p>
                        <hr>
                        <h4>Admission Details</h4>
                        <hr>
                        <p>Admission Date:${admission.admissionDate}</p>
                        <p>Hiv Status: ${admission.hivStatus}</p>
                        <p>Nutrition: Status${admission.nutritionStatus}</p>
                        <p>Ward Name: ${admission.ward.wardName}</p>
                        <p>Guardian: ${admission.guardian}</p>
                        <p>Referral From:${admission.referralFrom}</p>
                    </div>


                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <%--<button type="button" class="btn btn-primary">Save changes</button>--%>
                </div>
            </div>
        </div>
    </div>
</c:forEach>

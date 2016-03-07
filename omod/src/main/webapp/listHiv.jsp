<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp" %>
<%@ include file="template/localHeader.jsp"%>


<script type="text/javascript">

    (function ($) {
        $(document).ready(function() {

            $('#hiv_table').dataTable({
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

<table class="table table-striped table-responsive table-hover" id="immunization_table">
    <thead>
    <tr>
        <th>#</th>
        <th>Outpatient ID</th>
        <th>Given Name</th>
        <th>Family Name</th>
        <th>ART Date</th>
        <th>Clinical Stage</th>
        <th>CD4 value</th>
        <th>CTX Date</th>
        <th>TB Treatment</th>
        <th>Original Regime</th>
    </tr>
    </thead>
    <tbody>
    <c:set var="count" value="0" scope="page" />
    <c:forEach var="hiv" items="${hivList}" varStatus="status">
        <tr class='clickable-row'
            data-href="<c:url value='/module/outpatient/processRequest.form?id=${hiv.hivId}' />">
            <c:set var="count" value="${count + 1}" scope="page"/>
            <td>${count}</td>
            <td>${hiv.outpatient.opdId}</td>
            <td>${hiv.outpatient.patient.givenName}</td>
            <td>${hiv.outpatient.patient.familyName}</td>
            <td>${hiv.artDate}</td>
            <td>${hiv.clinicalStage}</td>
            <td>${hiv.cd4Value}</td>
            <td>${hiv.ctxDate}</td>
            <td>${hiv.tbDate}</td>
            <td>${hiv.originalRegime}</td>

            <!-- Button trigger modal -->
            <!--
            <td> <button type="button" class="btn btn-info" data-toggle="modal" data-target="#viewModal_${count}">
                <i class="fa fa-eye"></i>View
            </button></td>

            <td>
                <button type="button" class="btn btn-success" data-toggle="modal" data-id="${hiv.hivId}" data-target="#dischargeModal">
                    <i class="fa fa-check-square-o"></i> Discharge</button>

                    <%--<a href="<c:url value='/module/inpatient/discharge.form?id=${hiv.admissionId}' />">--%>
                    <%--<button class="btn btn-success"> <i class="fa fa-check-square-o"></i> Discharge</button>--%>
                    <%--</a> --%>
            </td>
            -->
        </tr>
    </c:forEach>
    </tbody>
</table>

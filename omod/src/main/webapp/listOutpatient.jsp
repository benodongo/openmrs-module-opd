<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp" %>
<%@ include file="template/localHeader.jsp"%>
<script type="text/javascript">

    (function ($) {

        $(document).ready(function() {

            $('#outpatient_table').dataTable({
                "sDom": '<"top"fl>rt<"bottom"p><"clear">'
            });

            $(".clickable-row").click(function() {
                window.document.location = $(this).data("href");
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


            $('#immunizationModal').on('show.bs.modal', function(event) {
                var btn = $(event.relatedTarget);
                var id = btn.data('id');
                $("#opdId").val(id);
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
<h2 class="text-center">Outpatient List</h2>
<table class="table table-striped table-responsive table-hover" id="outpatient_table">
    <thead>
    <tr>
        <th>#</th>
        <th>outpatient ID</th>
        <th>Given Name</th>
        <th>Middle Name</th>
        <th>Family Name</th>
        <%--<th>Delete</th>--%>
        <%--<th>Admit</th>--%>
    </tr>
    </thead>
    <tbody>
    <c:set var="count" value="0" scope="page" />
    <c:forEach var="outpatient" items="${outpatientList}" varStatus="status">
        <c:set var="count" value="${count+1}" scope="page" />

        <tr>
            <td class='clickable-row bg-info'
                data-href="<c:url value='/module/outpatient/processRequest.form?id=${outpatient.opdId}' />">
                    ${count}
            </td>
            <td>${outpatient.opdId}</td>
            <td>${outpatient.patient.givenName}</td>
            <td>${outpatient.patient.middleName}</td>
            <td>${outpatient.patient.familyName}</td>

                <%--<td><a href="<c:url value='/module/outpatient/deleteoutpatient.form?id=${outpatient.outPatientId}' />">--%>
                <%--<button class="btn btn-danger"><span class="glyphicon glyphicon-remove-sign">Delete--%>
                <%--</span> </button>--%>
                <%--</a> </td>--%>
                <%--<td>--%>
                <%--<button type="button" class="btn btn-success" data-toggle="modal"  data-id="${outpatient.outPatientId}" data-target="#admissionModal">--%>
                <%--<i class="fa fa-plus-square"></i> Admit</button>--%>
                <%--&lt;%&ndash;<a href="<c:url value='/module/outpatient/admission.form?id=${outpatient.outpatientId}' />">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<button class="btn btn-success"><span class="glyphicon glyphicon-edit">Admit</span></button>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</a> &ndash;%&gt;--%>

                <%--</td>--%>
        </tr>
    </c:forEach>
    </tbody>
</table>

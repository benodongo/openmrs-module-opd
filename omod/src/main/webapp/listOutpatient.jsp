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
                data-href="<c:url value='/module/outpatient/listEncounter.form?id=${immunization.immunizationId}' />">
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

                            <input id="opdId" type="hidden" name="opd_id"  required />

                            <%--<div class="form-group">--%>
                            <%--<label>Admission Date</label>--%>
                            <%--<input type="date" class="form-control" name="admission_date"   required />--%>
                            <%--</div>--%>
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
<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>
<%@ include file="template/localHeader.jsp"%>
<openmrs:htmlInclude file="/moduleResources/outpatient/bootstrap/css/custom.css" />
<div class="modal fade" id="generalOpdModal" tabindex="-1" role="dialog" aria-labelledby="generalOpdModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="generalOpdModalLabel">Capture Details</h4>
            </div>

            <div class="modal-body">
                <div class="row">
                    <div class="form-group col-md-offset-2 col-md-8">
                        <form class="form-horizontal" method="post"  action="<c:url value='/module/outpatient/saveVitals.form' />">

                            <input id="opdId" value="${outpatient.patient.patientId}" type="hidden" name="opd_id"  required />

                            <%--<div class="form-group">--%>
                            <%--<label>Admission Date</label>--%>
                            <%--<input type="date" class="form-control" name="admission_date"   required />--%>
                            <%--</div>--%>
                            <div class="form-group">
                                <label>Visit Date</label>
                                <div class='input-group date' id='visitDate'>
                                    <input type='text' class="form-control" name="visit_date" required />
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Hiv Intervention</label>
                                <select class="form-control" name="status">
                                    <option value="0">None</option>
                                    <option value="1">Counselled</option>
                                    <option value="2">Tested</option>
                                    <option value="1,2">Counselled and Tested</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label>Hiv Status</label>
                                <select class="form-control" name="hiv_status">
                                    <option value="1">Known Positive</option>
                                    <option value="2">Positive this visit</option>
                                    <option value="3">Negative</option>
                                    <option value="4">Unknown</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label>Nutrition Status</label>
                                <select class="form-control" name="nutrition_status">
                                    <option value="0">None</option>
                                    <option value="1">Nutrition Education</option>
                                    <option value="2">Nutrition Supplements</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label>Referral From</label>
                                <select class="form-control" name="referral_from">
                                    <option value="0">None</option>
                                    <option value="1">Other Health Facility</option>
                                    <option value="2">Community Unit</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label>Guardian</label>
                                <input type="text" class="form-control" name="guardian"   required />
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
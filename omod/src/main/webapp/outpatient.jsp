<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>
<%@ include file="template/localHeader.jsp"%>
<div class="row">
    <div class="jumbotron col-md-8 col-md-offset-2">
        <h2 class="text-center">Outpatient Registration</h2>
        <div class="form-group col-md-offset-2 col-md-8">
            <form class="form-horizontal" method="post"  action="<c:url value='/module/outpatient/saveOutpatient.form' />">

                <div class="form-group">
                    <input type="hidden" class="form-control" name="outpatient_id" value="${patientId}" required />
                </div>

                <div class="form-group">
                    <label>OPD Number</label>
                    <input type="datetime" class="form-control" name="opd_id"   required />
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-success">Submit</button>
                </div>

            </form>
        </div>

    </div>
    </div>
<%@ include file="/WEB-INF/template/footer.jsp"%>
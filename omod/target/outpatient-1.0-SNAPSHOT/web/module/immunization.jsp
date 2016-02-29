<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>
<%@ include file="template/localHeader.jsp"%>
<ul id="menu">
    <li class="first">
        <a href="<c:url value='/module/outpatient/create.form'/> ">Child Clinic</a>
    </li>
    <li class="first">
        <a href="<c:url value='/module/outpatient/immunization.form'/> ">immunization</a>
    </li
</ul>
<div class="row">
    <div class="jumbotron col-md-8 col-md-offset-2">
        <h3 class="text-center" style="text-decoration-color: #2aabd2">immunization registration</h3>
        <div class="form-group col-md-offset-2 col-md-8">
            <form class="form-horizontal" method="post"  action="<c:url value='/module/outpatient/saveImmunization.form' />">
                <div class="form-group">
                    <label>BCG</label>
                    <input type="date" class="form-control" name="bcg_date" value="" size="12" maxlength="8" required />
                </div>
                <div class="form-group">
                    <label>POLIO</label><br/>
                    <div class="col-md-3">
                        <input type="date" class="form-control" name="polio1_date" placeholder="polio 1" value="" size="30" required />
                    </div>

                    <div class="col-md-3">
                        <input type="date" class="form-control" name="polio2_date"  placeholder="polio 2" value="" size="25" required />
                    </div>

                    <div class="col-md-3">
                        <input type="date" class="form-control" name="polio3_date" placeholder="polio 3" value="" size="30" required />
                    </div>
                </div>
                <div class="form-group">
                    <label>Measles</label>
                    <input type="date" class="form-control" name="measles_date" value="" size="35" required />
                </div>
                <div class="form-group">
                    <label>Yellow Fever</label>
                    <input type="date" class="form-control" name="yellow_fever_date" value="" size="35" required />
                </div>
                <div class="form-group">
                    <label>PCV 10(Pneumococcal)</label>
                    <input type="date" class="form-control" name="pcv_date" value="" size="12" maxlength="8" required />
                </div>
                <div class="form-group">
                    <button type="button" class="btn btn-success">Register</button>
                </div>


            </form>
        </div>

    </div>
<%@ include file="/WEB-INF/template/footer.jsp"%>
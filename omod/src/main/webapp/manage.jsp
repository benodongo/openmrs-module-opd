<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>
<%@ include file="template/localHeader.jsp"%>

<div class="panel panel-default">
    <div class="panel-heading">
        <i class="fa fa-spinner fa-spin"> </i>&nbsp; Dashboard
    </div>

    <div class="panel-body">
        <div class="row">
            <div class="col-md-2">                
            <div class="dash"><a style="text-decoration: none" href="<c:url value='/module/outpatient/findPatient.form'/>"><img src="${pageContext.request.contextPath}/moduleResources/outpatient/img/search.gif" class="imgur"><div> Search Patient </div></div><br>
                    
                </a>
            </div>

            <div class="col-md-2">
                <div class="dash"><a style="text-decoration: none" href="<c:url value='/findPatient.htm'/>"><img src="${pageContext.request.contextPath}/moduleResources/outpatient/img/add_patient.png" class="imgur"><span>Add Patient</span></div><br>
                    
                </a>
            </div>

             <div class="col-md-2">
                <div class="dash"><a style="text-decoration: none" href="<c:url value='/module/outpatient/listImmunization.form'/>"><img src="${pageContext.request.contextPath}/moduleResources/outpatient/img/child.jpg" class="imgur"><div>Child Clinic</div></div>
                <br>
                    
                </a>
            </div>

             <div class="col-md-2">
                <div class="dash"><a style="text-decoration: none" href="<c:url value='/module/outpatient/listMaternal.form'/>"><img src="${pageContext.request.contextPath}/moduleResources/outpatient/img/maternal.jpg" class="imgur"></div><br>
                    <div>Maternal Care</div>
                </a>
            </div>

             <div class="col-md-2">
                <div class="dash"><a style="text-decoration: none" href="<c:url value='/module/outpatient/listHiv.form'/>"><img src="${pageContext.request.contextPath}/moduleResources/outpatient/img/hiv2.jpg" class="imgur"></div><br>
                    <div>HIV Care</div>
                </a>
            </div>

            <div class="col-md-2">
                <a style="text-decoration: none" href="<c:url value='/module/outpatient/listOutpatient.form'/> ">
                    <i class="fa fa-users fa-5x"></i><br>
                    <span>View Outpatients</span>
                </a>
            </div>            
         </div>   
    </div>                 
</div>

<%@ include file="/WEB-INF/template/footer.jsp"%>


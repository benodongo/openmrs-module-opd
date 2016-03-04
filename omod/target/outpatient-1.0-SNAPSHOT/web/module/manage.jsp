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
                <div class="dash"><a style="text-decoration: none" href="<c:url value='/module/outpatient/findPatient.form'/>"><img src="${pageContext.request.contextPath}/moduleResources/outpatient/img/search.gif" class="imgur"><div>Search Patient</div></div>
            <br>
                    
                </a>
            </div>

            <div class="col-md-2">
                <div class="dash"><a style="text-decoration: none" href="<c:url value='/findPatient.htm'/>"><img src="${pageContext.request.contextPath}/moduleResources/outpatient/img/add_patient.png" class="imgur"><div>Add Patient</div></div>
                <br>
                    
                </a>
            </div>

             <div class="col-md-2">
                <div class="dash"><a style="text-decoration: none" href="<c:url value='/module/outpatient/listImmunization.form'/>"><img src="${pageContext.request.contextPath}/moduleResources/outpatient/img/child.png" class="imgur"><div>Child Clinic</div></div>
                <br>
                    
                </a>
            </div>

             <div class="col-md-2">
                <div class="dash"><a style="text-decoration: none" href="<c:url value='/module/outpatient/listMaternal.form'/>"><img src="${pageContext.request.contextPath}/moduleResources/outpatient/img/maternal.png" class="imgur"><div>Maternal Care</div></div>
                <br>
                    
                </a>
            </div>

             <div class="col-md-2">
                <div class="dash"><a style="text-decoration: none" href="<c:url value='/module/outpatient/listHiv.form'/>"><img src="${pageContext.request.contextPath}/moduleResources/outpatient/img/hiv.jpg" class="imgur"><div>HIV Care</div></div>
                <br>
                    
                </a>
            </div>

             <div class="col-md-2">
                <div class="dash"><a style="text-decoration: none" href="<c:url value='/module/outpatient/listOutpatient.form'/>"><img src="${pageContext.request.contextPath}/moduleResources/outpatient/img/view.png" class="imgur"><div>View All Outpatients</div></div>
                <br>                    
                </a>
            </div>             
         </div>   
    </div>                 
</div>

<%@ include file="/WEB-INF/template/footer.jsp"%>


<openmrs:htmlInclude file="/moduleResources/outpatient/tablejs/jquery.min.js" />
<openmrs:htmlInclude file="/moduleResources/outpatient/bootstrap/js/bootstrap.min.js" />
<%--Date Time picker css and js--%>
<openmrs:htmlInclude file="/moduleResources/outpatient/bootstrap/css/bootstrap-datetimepicker.css" />
<openmrs:htmlInclude file="/moduleResources/outpatient/bootstrap/js/moment-with-locales.js" />
<openmrs:htmlInclude file="/moduleResources/outpatient/bootstrap/js/bootstrap-datetimepicker.js" />


<%--Data tables js and css--%>
<%--<openmrs:htmlInclude file="/moduleResources/outpatient/tablejs/jquery.dataTables.min.css" />--%>
<openmrs:htmlInclude file="/moduleResources/outpatient/tablejs/jquery.dataTables.min.js" />
<openmrs:htmlInclude file="/moduleResources/outpatient/tablejs/dataTables.bootstrap.css" />
<openmrs:htmlInclude file="/moduleResources/outpatient/tablejs/dataTables.bootstrap.js" />
<openmrs:htmlInclude file="/moduleResources/outpatient/tablejsdbhddfhbdffhh/tableTools.js" />
<openmrs:htmlInclude file="/moduleResources/outpatient/css/manage.css" />
<openmrs:htmlInclude file="/moduleResources/outpatient/img/search.gif"/>
<openmrs:htmlInclude file="/moduleResources/outpatient/img/patient.png" />
<%--<openmrs:htmlInclude file="/moduleResources/outpatient/tablejs/tablebootstrap.js" />--%>
<%--DWR search--%>
<script src="<openmrs:contextPath/>/dwr/interface/DWRPatientService.js"></script>
<openmrs:htmlInclude file="/dwr/engine.js" ></openmrs:htmlInclude>
<openmrs:htmlInclude file="/dwr/util.js" ></openmrs:htmlInclude>
<spring:htmlEscape defaultHtmlEscape="true" />
<ul id="menu">
	<li class="first"><a
		href="${pageContext.request.contextPath}/admin"><spring:message
				code="admin.title.short" /></a></li>

	<li
		<c:if test='<%= request.getRequestURI().contains("outpatientClinic") %>'>class="active"</c:if>>
		<a
		href="${pageContext.request.contextPath}/module/outpatient/manage.form"><spring:message
				code="outpatient.manage" /></a>
	</li>
	<li <c:if test='<%= request.getRequestURI().contains("htmlForms") %>'>class="active"</c:if>>
		<a href="${pageContext.request.contextPath}/module/htmlformentry/htmlForms.list">
			<spring:message code="htmlformentry.manage"/>
		</a>
	</li>
	<li <c:if test='<%= request.getRequestURI().contains("htmlFormFromFile") %>'>class="active"</c:if>>
		<a href="${pageContext.request.contextPath}/module/htmlformentry/htmlFormFromFile.form">
			<spring:message code="htmlformentry.preview"/>
		</a>
	</li>
	
	<!-- Add further links here -->
</ul>
<h2>
	<%--<spring:message code="outpatient.title" />--%>
	Outpatient Clinic
</h2>

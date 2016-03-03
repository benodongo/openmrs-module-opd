<openmrs:htmlInclude file="/moduleResources/outpatient/tablejs/jquery.min.js" />
<openmrs:htmlInclude file="/moduleResources/outpatient/bootstrap/js/bootstrap.min.js" />
<%--Date Time picker css and js--%>
<openmrs:htmlInclude file="/moduleResources/outpatient/bootstrap/css/bootstrap-datetimepicker.css" />
<openmrs:htmlInclude file="/moduleResources/outpatient/bootstrap/js/moment-with-locales.js" />
<openmrs:htmlInclude file="/moduleResources/outpatient/bootstrap/js/bootstrap-datetimepicker.js" />
<openmrs:htmlInclude file="/moduleResources/outpatient/bootstrap/js/bootstrap-datetimepicker.js" />




<%--Data tables js and css--%>
<%--<openmrs:htmlInclude file="/moduleResources/outpatient/tablejs/jquery.dataTables.min.css" />--%>
<openmrs:htmlInclude file="/moduleResources/outpatient/tablejs/jquery.dataTables.min.js" />
<openmrs:htmlInclude file="/moduleResources/outpatient/tablejs/dataTables.bootstrap.css" />
<openmrs:htmlInclude file="/moduleResources/outpatient/tablejs/dataTables.bootstrap.js" />
<openmrs:htmlInclude file="/moduleResources/outpatient/tablejs/tableTools.js" />
<openmrs:htmlInclude file="/moduleResources/outpatient/css/manage.css" />


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
		<c:if test='<%= request.getRequestURI().contains("/manage") %>'>class="active"</c:if>>
		<a
		href="${pageContext.request.contextPath}/module/outpatient/manage.form"><spring:message
				code="outpatient.manage" /></a>
	</li>
	<li <c:if test='<%= request.getRequestURI().contains("/listOutpatient") %>'>class="active"</c:if>>
		<a href="${pageContext.request.contextPath}/module/outpatient/listOutpatient.form">
			<spring:message code="Outpatient"/>
		</a>
	</li>
	<li <c:if test='<%= request.getRequestURI().contains("/listImmunization") %>'>class="active"</c:if>>
		<a href="${pageContext.request.contextPath}/module/outpatient/listImmunization.form">
			<spring:message code="Immunization"/>
		</a>
	</li>
	
	<!-- Add further links here -->
</ul>
<h2>
	<%--<spring:message code="outpatient.title" />--%>
	Outpatient Clinic
</h2>

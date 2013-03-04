
<%@ page import="lsms.Resources" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'resources.label', default: 'Resources')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<!-- <div id="show-resources" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list resources"> -->
			
				<g:if test="${resourcesInstance?.detergent}">
				<li class="fieldcontain">
					<span id="detergent-label" class="property-label"><g:message code="resources.detergent.label" default="Detergent" /></span>
					
						<span class="property-value" aria-labelledby="detergent-label"><g:fieldValue bean="${resourcesInstance}" field="detergent"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${resourcesInstance?.detergentCount}">
				<li class="fieldcontain">
					<span id="detergentCount-label" class="property-label"><g:message code="resources.detergentCount.label" default="Detergent Count" /></span>
					
						<span class="property-value" aria-labelledby="detergentCount-label"><g:fieldValue bean="${resourcesInstance}" field="detergentCount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${resourcesInstance?.fabCon}">
				<li class="fieldcontain">
					<span id="fabCon-label" class="property-label"><g:message code="resources.fabCon.label" default="Fab Con" /></span>
					
						<span class="property-value" aria-labelledby="fabCon-label"><g:fieldValue bean="${resourcesInstance}" field="fabCon"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${resourcesInstance?.fabConCount}">
				<li class="fieldcontain">
					<span id="fabConCount-label" class="property-label"><g:message code="resources.fabConCount.label" default="Fab Con Count" /></span>
					
						<span class="property-value" aria-labelledby="fabConCount-label"><g:fieldValue bean="${resourcesInstance}" field="fabConCount"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${resourcesInstance?.id}" />
					<g:link class="edit" action="edit" id="${resourcesInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

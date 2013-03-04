
<%@ page import="lsms.CustomPackage" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customPackage.label', default: 'CustomPackage')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-customPackage" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list customPackage">
			
				<g:if test="${customPackageInstance?.packageId}">
				<li class="fieldcontain">
					<span id="packageId-label" class="property-label"><g:message code="customPackage.packageId.label" default="Package Id" /></span>
					
						<span class="property-value" aria-labelledby="packageId-label"><g:fieldValue bean="${customPackageInstance}" field="packageId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customPackageInstance?.resources}">
				<li class="fieldcontain">
					<span id="resources-label" class="property-label"><g:message code="customPackage.resources.label" default="Resources" /></span>
					
						<span class="property-value" aria-labelledby="resources-label"><g:link controller="resources" action="show" id="${customPackageInstance?.resources?.id}">${customPackageInstance?.resources?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${customPackageInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="customPackage.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${customPackageInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${customPackageInstance?.id}" />
					<g:link class="edit" action="edit" id="${customPackageInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

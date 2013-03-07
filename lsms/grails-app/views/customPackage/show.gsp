
<%@ page import="lsms.CustomPackage" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customPackage.label', default: 'CustomPackage')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-customPackage" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-customPackage" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list customPackage">
			
				<g:if test="${customPackageInstance?.packageName}">
				<li class="fieldcontain">
					<span id="packageName-label" class="property-label"><g:message code="customPackage.packageName.label" default="Package Name" /></span>
					
						<span class="property-value" aria-labelledby="packageName-label"><g:fieldValue bean="${customPackageInstance}" field="packageName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customPackageInstance?.customQuantity}">
				<li class="fieldcontain">
					<span id="customQuantity-label" class="property-label"><g:message code="customPackage.customQuantity.label" default="Custom Quantity" /></span>
					
						<span class="property-value" aria-labelledby="customQuantity-label"><g:fieldValue bean="${customPackageInstance}" field="customQuantity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customPackageInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="customPackage.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${customPackageInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customPackageInstance?.resources}">
				<li class="fieldcontain">
					<span id="resources-label" class="property-label"><g:message code="customPackage.resources.label" default="Resources" /></span>
					
						<g:each in="${customPackageInstance.resources}" var="r">
						<span class="property-value" aria-labelledby="resources-label"><g:link controller="resources" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
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
	 </div>
  </div>
		</div>
</html>

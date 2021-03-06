
<%@ page import="lsms.PersonInfo" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personInfo.label', default: 'PersonInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-personInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-personInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list personInfo">
			
				<g:if test="${personInfoInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="personInfo.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${personInfoInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInfoInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="personInfo.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${personInfoInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInfoInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="personInfo.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${personInfoInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInfoInstance?.contactNum}">
				<li class="fieldcontain">
					<span id="contactNum-label" class="property-label"><g:message code="personInfo.contactNum.label" default="Contact Num" /></span>
					
						<span class="property-value" aria-labelledby="contactNum-label"><g:fieldValue bean="${personInfoInstance}" field="contactNum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInfoInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="personInfo.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${personInfoInstance?.date}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${personInfoInstance?.id}" />
					<g:link class="edit" action="edit" id="${personInfoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

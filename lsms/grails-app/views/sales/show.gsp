
<%@ page import="lsms.Sales" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sales.label', default: 'Sales')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	
	<!--	<a href="#show-sales" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a> -->
	<!-- 	<div class="nav" role="navigation"> -->
		<!--	<ul> -->
		<!--		<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li> -->
		<!--		<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li> -->
		<!--	<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li> -->
		<!--	</ul> -->
		<!-- </div> -->
		
		<div id="show-sales" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list sales">
			
				<g:if test="${salesInstance?.customer}">
				<li class="fieldcontain">
					<span id="customer-label" class="property-label"><g:message code="sales.customer.label" default="Customer" /></span>
					
						<g:each in="${salesInstance.customer}" var="c">
						<span class="property-value" aria-labelledby="customer-label"><g:link controller="customer" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${salesInstance?.id}" />
					<g:link class="edit" action="edit" id="${salesInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>


<%@ page import="lsms.Sales" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sales.label', default: 'Sales')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<center>
		<!-- <a href="#list-sales" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a> -->
		
		<div class="nav" role="navigation">
			
			<!-- <ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul> -->
		</div>
		<div id="list-sales" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${salesInstanceList}" status="i" var="salesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${salesInstanceTotal}" />
			</div>
		</div>
	</center>
	</body>
</html>

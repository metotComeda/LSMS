
<%@ page import="lsms.CustomPackage" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customPackage.label', default: 'CustomPackage')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-customPackage" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="packageId" title="${message(code: 'customPackage.packageId.label', default: 'Package Id')}" />
					
						<th><g:message code="customPackage.resources.label" default="Resources" /></th>
					
						<g:sortableColumn property="price" title="${message(code: 'customPackage.price.label', default: 'Price')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${customPackageInstanceList}" status="i" var="customPackageInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${customPackageInstance.id}">${fieldValue(bean: customPackageInstance, field: "packageId")}</g:link></td>
					
						<td>${fieldValue(bean: customPackageInstance, field: "resources")}</td>
					
						<td>${fieldValue(bean: customPackageInstance, field: "price")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${customPackageInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

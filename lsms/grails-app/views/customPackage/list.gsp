
<%@ page import="lsms.CustomPackage" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customPackage.label', default: 'CustomPackage')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-customPackage" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-customPackage" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="packageName" title="${message(code: 'customPackage.packageName.label', default: 'Package Name')}" />
					
						<g:sortableColumn property="price" title="${message(code: 'customPackage.price.label', default: 'Price')}" />
					
						<g:sortableColumn property="customQuantity" title="${message(code: 'customPackage.customQuantity.label', default: 'Custom Quantity')}" />
					
						<th><g:message code="customPackage.resources.label" default="Resources" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${customPackageInstanceList}" status="i" var="customPackageInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${customPackageInstance.id}">${fieldValue(bean: customPackageInstance, field: "packageName")}</g:link></td>
					
						<td>${fieldValue(bean: customPackageInstance, field: "price")}</td>
					
						<td>${fieldValue(bean: customPackageInstance, field: "customQuantity")}</td>
					
						<td>${fieldValue(bean: customPackageInstance, field: "resources")}</td>
					
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

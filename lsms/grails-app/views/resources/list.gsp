
<%@ page import="lsms.Resources" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'resources.label', default: 'Resources')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	
	<body>
		<div class="container-fluid">
			<div class="row-fluid">
			
			<div class="span2">
			<a href="#" class="btn btn-large">Update</a>
			<a href="http://localhost:8080/lsms/resources/create" class="btn btn-inverse">Add New</a>
			</div>
		
			<div class="span10">
			<table class="table table-bordered">
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'resources.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="quantity" title="${message(code: 'resources.quantity.label', default: 'Quantity')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${resourcesInstanceList}" status="i" var="resourcesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${resourcesInstance.id}">${fieldValue(bean: resourcesInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: resourcesInstance, field: "quantity")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div>
			</div>
			<div class="pagination">
				<g:paginate total="${resourcesInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

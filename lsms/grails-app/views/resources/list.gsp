
<%@ page import="lsms.Resources" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'resources.label', default: 'Resources')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<!-- <div id="list-resources" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if> -->
			
			<div class="container-fluid">
			<div class="row-fluid">
			
			<div class="span2">
			<a href="" class="btn btn-large">Update List</a>
			</div>
			
			<div class="span10">
			<table class="table table-bordered">
				<thead>
					<tr>
						<g:sortableColumn property="detergent" title="${message(code: 'resources.detergent.label', default: 'Detergent')}" />
					
						<g:sortableColumn property="detergentCount" title="${message(code: 'resources.detergentCount.label', default: 'Detergent Count')}" />
					
						<g:sortableColumn property="fabCon" title="${message(code: 'resources.fabCon.label', default: 'Fab Con')}" />
					
						<g:sortableColumn property="fabConCount" title="${message(code: 'resources.fabConCount.label', default: 'Fab Con Count')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${resourcesInstanceList}" status="i" var="resourcesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${resourcesInstance.id}">${fieldValue(bean: resourcesInstance, field: "detergent")}</g:link></td>
					
						<td>${fieldValue(bean: resourcesInstance, field: "detergentCount")}</td>
					
						<td>${fieldValue(bean: resourcesInstance, field: "fabCon")}</td>
					
						<td>${fieldValue(bean: resourcesInstance, field: "fabConCount")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			</div>
			</div>
			<div class="pagination">
				<g:paginate total="${resourcesInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

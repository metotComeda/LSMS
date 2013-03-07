
<%@ page import="lsms.Crew" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'crew.label', default: 'Crew')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="container-fluid">
			<div class="row-fluid">
			
			<div class="span2">
			<a href="http://localhost:8080/lsms/crew/create" class="btn btn-large">Add New</a>
			</div>
		
		
			<div class="span10">
			<table class="table table-bordered">
				<thead>
					<tr>
					
						<g:sortableColumn property="lastName" title="${message(code: 'crew.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'crew.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'crew.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="contactNum" title="${message(code: 'crew.contactNum.label', default: 'Contact')}" />
					
						<g:sortableColumn property="date" title="${message(code: 'crew.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="job" title="${message(code: 'crew.job.label', default: 'Job')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${crewInstanceList}" status="i" var="crewInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${crewInstance.id}">${fieldValue(bean: crewInstance, field: "lastName")}</g:link></td>
					
						<td>${fieldValue(bean: crewInstance, field: "firstName")}</td>
					
						<td>${fieldValue(bean: crewInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: crewInstance, field: "contactNum")}</td>
					
						<td><g:formatDate date="${crewInstance.date}" /></td>
					
						<td>${fieldValue(bean: crewInstance, field: "job")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div>
			</div>
			<div class="pagination">
				<g:paginate total="${crewInstanceTotal}" />
			</div>
		</div>
	
	</body>
</html>

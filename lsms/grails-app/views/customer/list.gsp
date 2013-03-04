
<%@ page import="lsms.Customer" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customer.label', default: 'Customer')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	
		<!-- <div id="list-customer" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if> -->
			
			<div class="container-fluid">
			<div class="row-fluid">
			
			<div class="span2">
			<a href="http://localhost:8080/lsms/customer/create" class="btn btn-large">Add New</a>
			</div>
			
			<div class="span10">
			<table class="table table-bordered">
				<thead>
					<tr>
					
						<g:sortableColumn property="personId" title="${message(code: 'customer.personId.label', default: 'Customer ID')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'customer.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'customer.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'customer.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="contactNum" title="${message(code: 'customer.contactNum.label', default: 'Contact')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'customer.email.label', default: 'Email')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${customerInstanceList}" status="i" var="customerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${customerInstance.id}">${fieldValue(bean: customerInstance, field: "personId")}</g:link></td>
					
						<td>${fieldValue(bean: customerInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: customerInstance, field: "firstName")}</td>
					
						<td>${fieldValue(bean: customerInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: customerInstance, field: "contactNum")}</td>
					
						<td>${fieldValue(bean: customerInstance, field: "email")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div>
			</div>
			<div class="pagination">
				<g:paginate total="${customerInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

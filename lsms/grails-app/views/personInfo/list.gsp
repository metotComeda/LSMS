
<%@ page import="lsms.PersonInfo" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personInfo.label', default: 'PersonInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-personInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-personInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="personId" title="${message(code: 'personInfo.personId.label', default: 'Person Id')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'personInfo.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'personInfo.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'personInfo.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="contactNum" title="${message(code: 'personInfo.contactNum.label', default: 'Contact Num')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${personInfoInstanceList}" status="i" var="personInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${personInfoInstance.id}">${fieldValue(bean: personInfoInstance, field: "personId")}</g:link></td>
					
						<td>${fieldValue(bean: personInfoInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: personInfoInstance, field: "firstName")}</td>
					
						<td>${fieldValue(bean: personInfoInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: personInfoInstance, field: "contactNum")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${personInfoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

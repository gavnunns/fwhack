
<%@ page import="fwhack.Parent" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'parent.label', default: 'Parent')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-parent" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="name" title="${message(code: 'parent.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="phoneNumber" title="${message(code: 'parent.phoneNumber.label', default: 'Phone Number')}" />
			
				<g:sortableColumn property="emailAddress" title="${message(code: 'parent.emailAddress.label', default: 'Email Address')}" />
			
				<g:sortableColumn property="address1" title="${message(code: 'parent.address1.label', default: 'Address1')}" />
			
				<g:sortableColumn property="address2" title="${message(code: 'parent.address2.label', default: 'Address2')}" />
			
				<g:sortableColumn property="canWeContactForAbsence" title="${message(code: 'parent.canWeContactForAbsence.label', default: 'Can We Contact For Absence')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${parentInstanceList}" status="i" var="parentInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${parentInstance.id}">${fieldValue(bean: parentInstance, field: "name")}</g:link></td>
			
				<td>${fieldValue(bean: parentInstance, field: "phoneNumber")}</td>
			
				<td>${fieldValue(bean: parentInstance, field: "emailAddress")}</td>
			
				<td>${fieldValue(bean: parentInstance, field: "address1")}</td>
			
				<td>${fieldValue(bean: parentInstance, field: "address2")}</td>
			
				<td><g:formatBoolean boolean="${parentInstance.canWeContactForAbsence}" /></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${parentInstanceTotal}" />
	</div>
</section>

</body>

</html>

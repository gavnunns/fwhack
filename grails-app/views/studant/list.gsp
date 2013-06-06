
<%@ page import="fwhack.Studant" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'studant.label', default: 'Studant')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-studant" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="name" title="${message(code: 'studant.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="address1" title="${message(code: 'studant.address1.label', default: 'Address1')}" />
			
				<g:sortableColumn property="address2" title="${message(code: 'studant.address2.label', default: 'Address2')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${studantInstanceList}" status="i" var="studantInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${studantInstance.id}">${fieldValue(bean: studantInstance, field: "name")}</g:link></td>
			
				<td>${fieldValue(bean: studantInstance, field: "address1")}</td>
			
				<td>${fieldValue(bean: studantInstance, field: "address2")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${studantInstanceTotal}" />
	</div>
</section>

</body>

</html>

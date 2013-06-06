
<%@ page import="fwhack.StudantClass" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'studantClass.label', default: 'StudantClass')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-studantClass" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="className" title="${message(code: 'studantClass.className.label', default: 'Class Name')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${studantClassInstanceList}" status="i" var="studantClassInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${studantClassInstance.id}">${fieldValue(bean: studantClassInstance, field: "className")}</g:link></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${studantClassInstanceTotal}" />
	</div>
</section>

</body>

</html>

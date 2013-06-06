
<%@ page import="fwhack.StudantClass" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'studantClass.label', default: 'StudantClass')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-studantClass" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="studantClass.className.label" default="Class Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: studantClassInstance, field: "className")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>

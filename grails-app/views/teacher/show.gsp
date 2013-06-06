
<%@ page import="fwhack.Teacher" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'teacher.label', default: 'Teacher')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-teacher" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="teacher.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: teacherInstance, field: "name")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>

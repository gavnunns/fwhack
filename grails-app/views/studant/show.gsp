
<%@ page import="fwhack.Studant" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'studant.label', default: 'Studant')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-studant" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="studant.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: studantInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="studant.address1.label" default="Address1" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: studantInstance, field: "address1")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="studant.address2.label" default="Address2" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: studantInstance, field: "address2")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>


<%@ page import="fwhack.Parent" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'parent.label', default: 'Parent')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-parent" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="parent.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: parentInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="parent.phoneNumber.label" default="Phone Number" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: parentInstance, field: "phoneNumber")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="parent.emailAddress.label" default="Email Address" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: parentInstance, field: "emailAddress")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="parent.address1.label" default="Address1" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: parentInstance, field: "address1")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="parent.address2.label" default="Address2" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: parentInstance, field: "address2")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="parent.canWeContactForAbsence.label" default="Can We Contact For Absence" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${parentInstance?.canWeContactForAbsence}" /></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>

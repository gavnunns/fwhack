
<%@ page import="fwhack.Parent" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'parent.label', default: 'Parent')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-parent" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-parent" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
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
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
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
				<g:paginate total="${parentInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

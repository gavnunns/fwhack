<%@ page import="fwhack.Studant" %>



<div class="fieldcontain ${hasErrors(bean: studantInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="studant.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${studantInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studantInstance, field: 'address1', 'error')} ">
	<label for="address1">
		<g:message code="studant.address1.label" default="Address1" />
		
	</label>
	<g:textField name="address1" value="${studantInstance?.address1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studantInstance, field: 'address2', 'error')} ">
	<label for="address2">
		<g:message code="studant.address2.label" default="Address2" />
		
	</label>
	<g:textField name="address2" value="${studantInstance?.address2}"/>
</div>


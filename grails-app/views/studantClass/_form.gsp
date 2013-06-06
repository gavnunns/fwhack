<%@ page import="fwhack.StudantClass" %>



<div class="fieldcontain ${hasErrors(bean: studantClassInstance, field: 'className', 'error')} required">
	<label for="className">
		<g:message code="studantClass.className.label" default="Class Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="className" required="" value="${studantClassInstance?.className}"/>
</div>


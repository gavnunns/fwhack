<%@ page import="fwhack.StudantClass" %>



			<div class="control-group fieldcontain ${hasErrors(bean: studantClassInstance, field: 'className', 'error')} required">
				<label for="className" class="control-label"><g:message code="studantClass.className.label" default="Class Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="className" required="" value="${studantClassInstance?.className}"/>
					<span class="help-inline">${hasErrors(bean: studantClassInstance, field: 'className', 'error')}</span>
				</div>
			</div>


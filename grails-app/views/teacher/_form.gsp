<%@ page import="fwhack.Teacher" %>



			<div class="control-group fieldcontain ${hasErrors(bean: teacherInstance, field: 'name', 'error')} required">
				<label for="name" class="control-label"><g:message code="teacher.name.label" default="Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="name" required="" value="${teacherInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: teacherInstance, field: 'name', 'error')}</span>
				</div>
			</div>


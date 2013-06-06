<%@ page import="fwhack.Studant" %>



			<div class="control-group fieldcontain ${hasErrors(bean: studantInstance, field: 'name', 'error')} required">
				<label for="name" class="control-label"><g:message code="studant.name.label" default="Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="name" required="" value="${studantInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: studantInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: studantInstance, field: 'address1', 'error')} ">
				<label for="address1" class="control-label"><g:message code="studant.address1.label" default="Address1" /></label>
				<div class="controls">
					<g:textField name="address1" value="${studantInstance?.address1}"/>
					<span class="help-inline">${hasErrors(bean: studantInstance, field: 'address1', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: studantInstance, field: 'address2', 'error')} ">
				<label for="address2" class="control-label"><g:message code="studant.address2.label" default="Address2" /></label>
				<div class="controls">
					<g:textField name="address2" value="${studantInstance?.address2}"/>
					<span class="help-inline">${hasErrors(bean: studantInstance, field: 'address2', 'error')}</span>
				</div>
			</div>


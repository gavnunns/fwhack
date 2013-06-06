<%@ page import="fwhack.Parent" %>



			<div class="control-group fieldcontain ${hasErrors(bean: parentInstance, field: 'name', 'error')} required">
				<label for="name" class="control-label"><g:message code="parent.name.label" default="Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="name" required="" value="${parentInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: parentInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: parentInstance, field: 'phoneNumber', 'error')} required">
				<label for="phoneNumber" class="control-label"><g:message code="parent.phoneNumber.label" default="Phone Number" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="phoneNumber" required="" value="${parentInstance.phoneNumber}"/>
					<span class="help-inline">${hasErrors(bean: parentInstance, field: 'phoneNumber', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: parentInstance, field: 'emailAddress', 'error')} ">
				<label for="emailAddress" class="control-label"><g:message code="parent.emailAddress.label" default="Email Address" /></label>
				<div class="controls">
					<g:field type="email" name="emailAddress" value="${parentInstance?.emailAddress}"/>
					<span class="help-inline">${hasErrors(bean: parentInstance, field: 'emailAddress', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: parentInstance, field: 'address1', 'error')} ">
				<label for="address1" class="control-label"><g:message code="parent.address1.label" default="Address1" /></label>
				<div class="controls">
					<g:textField name="address1" value="${parentInstance?.address1}"/>
					<span class="help-inline">${hasErrors(bean: parentInstance, field: 'address1', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: parentInstance, field: 'address2', 'error')} ">
				<label for="address2" class="control-label"><g:message code="parent.address2.label" default="Address2" /></label>
				<div class="controls">
					<g:textField name="address2" value="${parentInstance?.address2}"/>
					<span class="help-inline">${hasErrors(bean: parentInstance, field: 'address2', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: parentInstance, field: 'canWeContactForAbsence', 'error')} ">
				<label for="canWeContactForAbsence" class="control-label"><g:message code="parent.canWeContactForAbsence.label" default="Can We Contact For Absence" /></label>
				<div class="controls">
					<bs:checkBox name="canWeContactForAbsence" value="${parentInstance?.canWeContactForAbsence}" />
					<span class="help-inline">${hasErrors(bean: parentInstance, field: 'canWeContactForAbsence', 'error')}</span>
				</div>
			</div>


<%@ page import="fwhack.Parent" %>



<div class="fieldcontain ${hasErrors(bean: parentInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="parent.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${parentInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: parentInstance, field: 'phoneNumber', 'error')} required">
	<label for="phoneNumber">
		<g:message code="parent.phoneNumber.label" default="Phone Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="phoneNumber" type="number" value="${parentInstance.phoneNumber}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: parentInstance, field: 'emailAddress', 'error')} ">
	<label for="emailAddress">
		<g:message code="parent.emailAddress.label" default="Email Address" />
		
	</label>
	<g:field type="email" name="emailAddress" value="${parentInstance?.emailAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: parentInstance, field: 'address1', 'error')} ">
	<label for="address1">
		<g:message code="parent.address1.label" default="Address1" />
		
	</label>
	<g:textField name="address1" value="${parentInstance?.address1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: parentInstance, field: 'address2', 'error')} ">
	<label for="address2">
		<g:message code="parent.address2.label" default="Address2" />
		
	</label>
	<g:textField name="address2" value="${parentInstance?.address2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: parentInstance, field: 'canWeContactForAbsence', 'error')} ">
	<label for="canWeContactForAbsence">
		<g:message code="parent.canWeContactForAbsence.label" default="Can We Contact For Absence" />
		
	</label>
	<g:checkBox name="canWeContactForAbsence" value="${parentInstance?.canWeContactForAbsence}" />
</div>


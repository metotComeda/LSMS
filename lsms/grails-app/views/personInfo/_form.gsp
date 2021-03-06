<%@ page import="lsms.PersonInfo" %>



<div class="fieldcontain ${hasErrors(bean: personInfoInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="personInfo.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${personInfoInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInfoInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="personInfo.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${personInfoInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInfoInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="personInfo.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${personInfoInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInfoInstance, field: 'contactNum', 'error')} required">
	<label for="contactNum">
		<g:message code="personInfo.contactNum.label" default="Contact Num" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactNum" required="" value="${personInfoInstance?.contactNum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInfoInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="personInfo.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${personInfoInstance?.date}"  />
</div>


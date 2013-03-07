<%@ page import="lsms.Crew" %>



<div class="fieldcontain ${hasErrors(bean: crewInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="crew.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${crewInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: crewInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="crew.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${crewInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: crewInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="crew.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${crewInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: crewInstance, field: 'contactNum', 'error')} required">
	<label for="contactNum">
		<g:message code="crew.contactNum.label" default="Contact Num" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactNum" required="" value="${crewInstance?.contactNum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: crewInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="crew.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${crewInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: crewInstance, field: 'job', 'error')} required">
	<label for="job">
		<g:message code="crew.job.label" default="Job" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="job" from="${lsms.Crew$Job?.values()}" keys="${lsms.Crew$Job.values()*.name()}" required="" value="${crewInstance?.job?.name()}"/>
</div>


<%@ page import="lsms.Customer" %>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'personId', 'error')} required">
	<label for="personId">
		<g:message code="customer.personId.label" default="Customer ID" />
		<span class="required-indicator">*</span>
	</label>
	<span class="add-on"><i class="icon-user"></i></span>
	<g:textField name="personId" required="" value="${customerInstance?.personId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="customer.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<span class="add-on"><i class="icon-user"></i></span>
	<g:textField name="lastName" required="" value="${customerInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="customer.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<span class="add-on"><i class="icon-user"></i></span>
	<g:textField name="firstName" required="" value="${customerInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="customer.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<span class="add-on"><i class="icon-user"></i></span>
	<g:textField name="address" required="" value="${customerInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'contactNum', 'error')} required">
	<label for="contactNum">
		<g:message code="customer.contactNum.label" default="Contact" />
		<span class="required-indicator">*</span>
	</label>
	<span class="add-on"><i class="icon-user"></i></span>
	<g:textField name="contactNum" required="" value="${customerInstance?.contactNum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="customer.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<span class="add-on"><i class="icon-envelope"></i></span>
	<g:textField name="email" required="" value="${customerInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="customer.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<span class="add-on"><i class="icon-calendar"></i></span>
	<g:datePicker name="date" precision="day"  value="${customerInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'customPackage', 'error')} required">
	<label for="customPackage">
		<g:message code="customer.customPackage.label" default="Custom Package" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="customPackage" name="customPackage.id" from="${lsms.CustomPackage.list()}" optionKey="id" required="" value="${customerInstance?.customPackage?.id}" class="many-to-one"/>
</div>


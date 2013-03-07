<%@ page import="lsms.Customer" %>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="customer.lastName.label" default="Last Name" />
		<span class="required-indicator"><i><small> (Required)</small></i></span>
	</label>
	<span class="add-on"><i class="icon-user"></i></span>
	<g:textField name="lastName" required="yes" placeholder="Last Name" value="${customerInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="customer.firstName.label" default="First Name" />
		<span class="required-indicator"><i><small> (Required)</small></i></span>
	</label>
	<span class="add-on"><i class="icon-user"></i></span>
	<g:textField name="firstName" required="yes" placeholder="First Name" value="${customerInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="customer.address.label" default="Address" />
		<span class="required-indicator"><i><small> (Required)</small></i></span>
	</label>
	<span class="add-on"><i class="icon-user"></i></span>
	<g:textField name="address" required="yes" placeholder="City Address" value="${customerInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'contactNum', 'error')} required">
	<label for="contactNum">
		<g:message code="customer.contactNum.label" default="Contact" />
		<span class="required-indicator"><i><small> (Required)</small></i></span>
	</label>
	<span class="add-on"><i class="icon-user"></i></span>
	<g:textField name="contactNum" required="yes" placeholder="09xxxxxxxxx" value="${customerInstance?.contactNum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="customer.date.label" default="Date" />
		<span class="required-indicator"><i><small> (Required)</small></i></span>
	</label>
	<span class="add-on"><i class="icon-calendar"></i></span>
	<g:datePicker name="date" precision="day"  value="${customerInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="customer.email.label" default="Email" />
		<span class="required-indicator"><i><small> (Required)</small></i></span>
	</label>
	<span class="add-on"><i class="icon-envelope"></i></span>
	<g:textField name="email" required="yes" placeholder="johndoe@email.com" value="${customerInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'customPackage', 'error')} required">
	<label for="customPackage">
		<g:message code="customer.customPackage.label" default="Custom Package" />
		<span class="required-indicator"><i><small> (Required)</small></i></span>
	</label>
	<span class="add-on"><i class="icon-shopping-cart"></i></span>
	<g:select id="customPackage" name="customPackage.id" from="${lsms.CustomPackage.list()}" optionKey="id" required="" value="${customerInstance?.customPackage?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'quantity', 'error')} required">
	<label for="quantity">
		<g:message code="customer.quantity.label" default="Quantity" />
		<span class="required-indicator"><i><small> (Required)</small></i></span>
	</label>
	<span class="add-on"><i class="icon-shopping-cart"></i></span>
	<g:field type="number" name="quantity" required="" value="${customerInstance.quantity}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'doneTransaction', 'error')} ">
	<label for="doneTransaction">
		<g:message code="customer.doneTransaction.label" default="Done Transaction" />
	</label>
	<span class="add-on"><i class="icon-thumbs-up"></i></span>
	<g:checkBox name="doneTransaction" value="${customerInstance?.doneTransaction}" />
</div>


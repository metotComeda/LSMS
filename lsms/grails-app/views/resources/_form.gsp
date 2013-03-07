<%@ page import="lsms.Resources" %>

<div class="fieldcontain ${hasErrors(bean: resourcesInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="resources.name.label" default="Resource" />
		<span class="required-indicator"><i><small> (Required)</small></i></span>
	</label>
	<span class="add-on"><i class=" icon-list-alt"></i></span>
	<g:textField name="name" required="yes" placeholder="ex. Tide" value="${resourcesInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: resourcesInstance, field: 'quantity', 'error')} required">
	<label for="quantity">
		<g:message code="resources.quantity.label" default="Quantity" />
		<span class="required-indicator"><i><small> (Required)</small></span>
	</label>
	<span class="add-on"><i class=" icon-list-alt"></i></span>
	<g:field type="number" name="quantity" required="" value="${resourcesInstance.quantity}"/>
</div>


<%@ page import="lsms.CustomPackage" %>



<div class="fieldcontain ${hasErrors(bean: customPackageInstance, field: 'packageName', 'error')} required">
	<label for="packageName">
		<g:message code="customPackage.packageName.label" default="Package Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="packageName" required="" value="${customPackageInstance?.packageName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customPackageInstance, field: 'customQuantity', 'error')} required">
	<label for="customQuantity">
		<g:message code="customPackage.customQuantity.label" default="Custom Quantity" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="customQuantity" required="" value="${customPackageInstance.customQuantity}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customPackageInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="customPackage.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="price" step="any" required="" value="${customPackageInstance.price}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customPackageInstance, field: 'resources', 'error')} ">
	<label for="resources">
		<g:message code="customPackage.resources.label" default="Resources" />
		
	</label>
	<g:select name="resources" from="${lsms.Resources.list()}" multiple="multiple" optionKey="id" size="5" value="${customPackageInstance?.resources*.id}" class="many-to-many"/>
</div>


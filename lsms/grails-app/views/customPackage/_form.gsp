<%@ page import="lsms.CustomPackage" %>



<div class="fieldcontain ${hasErrors(bean: customPackageInstance, field: 'packageId', 'error')} required">
	<label for="packageId">
		<g:message code="customPackage.packageId.label" default="Package Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="packageId" required="" value="${customPackageInstance?.packageId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customPackageInstance, field: 'resources', 'error')} required">
	<label for="resources">
		<g:message code="customPackage.resources.label" default="Resources" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="resources" name="resources.id" from="${lsms.Resources.list()}" optionKey="id" required="" value="${customPackageInstance?.resources?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customPackageInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="customPackage.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="price" step="any" required="" value="${customPackageInstance.price}"/>
</div>


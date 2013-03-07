<%@ page import="lsms.CustomPackage" %>

<div class="fieldcontain ${hasErrors(bean: customPackageInstance, field: 'packageName', 'error')} required">
	<label for="packageName">
		<g:message code="customPackage.packageName.label" default="Package Name" />
		<span class="required-indicator"><i><small> (Required)</small></i></span>
	</label>
	<span class="add-on"><i class=" icon-list-alt"></i></span>
	<g:textField name="packageName" required="yes" placeholder="Wash#, Fold#, Dry#"  value="${customPackageInstance?.packageName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customPackageInstance, field: 'customQuantity', 'error')} required">
	<label for="customQuantity">
		<g:message code="customPackage.customQuantity.label" default="Custom Quantity" />
		<span class="required-indicator"><i><small> (Required)</small></i></span>
	</label>
	<span class="add-on"><i class=" icon-list-alt"></i></span>
	<g:field type="number" name="customQuantity" required="yes" placeholder="Quantity Needed" value="${customPackageInstance.customQuantity}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customPackageInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="customPackage.price.label" default="Price" />
		<span class="required-indicator"><i><small> (Required)</small></i></span>
	</label>
	<span class="add-on">&#x20b1;</span>
	<g:field type="number" name="price" step="any" required="yes" value="${customPackageInstance.price}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customPackageInstance, field: 'resources', 'error')} ">
	<label for="resources"
		<g:message code="customPackage.resources.label" default="Resources" />
	</label>
	<span class="add-on"><i class=" icon-list-alt"></i></span>
	<g:select name="resources" from="${lsms.Resources.list()}" multiple="multiple" optionKey="id" size="5" value="${customPackageInstance?.resources*.id}" class="many-to-many"/>
</div>


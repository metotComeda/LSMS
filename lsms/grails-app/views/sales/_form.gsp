<%@ page import="lsms.Sales" %>



<div class="fieldcontain ${hasErrors(bean: salesInstance, field: 'customPackage', 'error')} ">
	<label for="customPackage">
		<g:message code="sales.customPackage.label" default="Custom Package" />
		
	</label>
	<g:select name="customPackage" from="${lsms.CustomPackage.list()}" multiple="multiple" optionKey="id" size="5" value="${salesInstance?.customPackage*.id}" class="many-to-many"/>
</div>


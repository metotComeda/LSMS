<%@ page import="lsms.Inventory" %>



<div class="fieldcontain ${hasErrors(bean: inventoryInstance, field: 'resources', 'error')} ">
	<label for="resources">
		<g:message code="inventory.resources.label" default="Resources" />
		
	</label>
	<g:select name="resources" from="${lsms.Resources.list()}" multiple="multiple" optionKey="id" size="5" value="${inventoryInstance?.resources*.id}" class="many-to-many"/>
</div>


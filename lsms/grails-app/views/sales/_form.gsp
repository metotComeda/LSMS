<%@ page import="lsms.Sales" %>



<div class="fieldcontain ${hasErrors(bean: salesInstance, field: 'customer', 'error')} ">
	<label for="customer">
		<g:message code="sales.customer.label" default="Customer" />
		
	</label>
	<g:select name="customer" from="${lsms.Customer.list()}" multiple="multiple" optionKey="id" size="5" value="${salesInstance?.customer*.id}" class="many-to-many"/>
</div>


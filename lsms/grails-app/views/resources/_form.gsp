<%@ page import="lsms.Resources" %>


<div class="fieldcontain ${hasErrors(bean: resourcesInstance, field: 'detergent', 'error')} required">
	<label for="detergent">
		<g:message code="resources.detergent.label" default="Detergent" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="detergent" required="" value="${resourcesInstance?.detergent}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: resourcesInstance, field: 'detergentCount', 'error')} required">
	<label for="detergentCount">
		<g:message code="resources.detergentCount.label" default="Detergent Count" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="detergentCount" required="" value="${resourcesInstance.detergentCount}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: resourcesInstance, field: 'fabCon', 'error')} required">
	<label for="fabCon">
		<g:message code="resources.fabCon.label" default="Fab Con" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fabCon" required="" value="${resourcesInstance?.fabCon}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: resourcesInstance, field: 'fabConCount', 'error')} required">
	<label for="fabConCount">
		<g:message code="resources.fabConCount.label" default="Fab Con Count" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="fabConCount" required="" value="${resourcesInstance.fabConCount}"/>
</div>


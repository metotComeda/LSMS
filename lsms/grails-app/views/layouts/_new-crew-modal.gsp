<%@ page import="lsms.Crew" %>
<%@ page import="lsms.PersonInfo" %>

<div id="my-modal" class="modal fade" style="display: none; ">
<g:form name="create-crew" controller="crew" action="save">
		
<fieldset>
	<div class="modal-header">
	<a class="close" data-dismiss="modal">×</a>
	<h3>New Crew</h3>
	</div>
	        
	<div class="modal-body">
	<div class="clearfix">
	<label for="normalSelect">Job</label>
		<div class="input">
		<g:select name="type" value="${value}" from="${['Clerk','Inventory Maintainer','Store Manager']}" noSelection="['':'Select Job']" />
		</div>
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: personInfoInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="personInfo.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${personInfoInstance?.lastName}"/>
	</div>

<div class="fieldcontain ${hasErrors(bean: personInfoInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="personInfo.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${personInfoInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInfoInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="personInfo.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="address" value="${personInfoInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInfoInstance, field: 'contactNum', 'error')} required">
	<label for="contactNum">
		<g:message code="personInfo.contactNum.label" default="Contact Num" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactNum" required="" value="${personInfoInstance?.contactNum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInfoInstance, field: 'crew', 'error')} ">
	<label for="crew">
		<g:message code="personInfo.crew.label" default="Crew" />
		
	</label>
	

 <div class="fieldcontain ${hasErrors(bean: crewInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="crew.date.label" default="Date" />
	<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${crewInstance?.date}"  />
</div>

	  <div class="modal-footer">
	  <button type="submit" class="btn btn-primary">Create</button>
	  </div>
	</fieldset>
	</g:form>
</div>


<div id="my-customer-modal" class="modal fade" style="display: none; ">
<g:form name="create-customer" controller="customer" action="save">
		
<fieldset>
	<div class="modal-header">
	<a class="close" data-dismiss="modal">×</a>
	<h3>Customer</h3>
	</div>
	
	<div class="modal-body">
	<div class="control-group ">
	<label class="control-label" for="firstName">First Name</label>
		<div class="controls">
		<input type="text" name="firstName" value="" required="" id="firstName" />
		</div>
	</div>

	<div class="control-group ">
	<label class="control-label" for="lastName">Last Name</label>
		<div class="controls">
		<input type="text" name="lastName" value="" required="" id="lastName" />
		</div>
	</div>
	
	<div class="control-group ">
	<label class="control-label" for="email">Email</label>
		<div class="controls">
		<div class="input-prepend">
			<span class="add-on"><i class="icon-envelope"></i></span>
			<input type="email" name="email" value="" id="email" />
		</div>	
		</div>
	</div>
    
	<div class="control-group ">
	<label class="control-label" for="address">Address</label>
		<div class="controls">
		<input type="text" name="address." value="" id="address" />	
		</div>
	</div>	

	  <div class="modal-footer">
	  <button type="submit" class="btn btn-primary">Create</button>
	  </div>
	  </div>
</fieldset>
	
</g:form>
</div>


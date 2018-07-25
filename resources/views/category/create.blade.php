@extends('layouts.app')

@section('content')

<div class="text-right">
	<a href="{{ url('categories') }}" class="btn btn-light"> <i class="fa fa-arrow-left"></i> </a>
</div>

<h1>Create new category</h1>

   <div class="row">
   	<div class="col-6 mx-auto">
   		

   		<form action="{{ url('/categories') }}" method="POST">
   			
   			@csrf

			<div class="form-group">
				<label for="label">Label</label>
				<input type="text" class="form-control" name="label" id="label">
			</div>

			<div class="form-group">
				<label for="description">Description</label>
				<textarea class="form-control" name="description" cols="30" rows="4" id="description"></textarea>
			</div>
            
            <div class="form-check">
			  <input name="active" class="form-check-input" type="checkbox" id="active" value="1">
			  <label class="form-check-label" for="active">
			    Active
			  </label>
			</div>

			<button class="btn btn-primary btn-block" type="submit">Save</button>

   		</form>


   	</div>
   </div>

@endsection
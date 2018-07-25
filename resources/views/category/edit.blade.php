@extends('layouts.app')

@section('content')

<div class="text-right">
	<a href="{{ url('categories') }}" class="btn btn-light"> <i class="fa fa-arrow-left"></i> </a>
</div>

<h1>Edit Category</h1>

   <div class="row">
   	<div class="col-6 mx-auto">
   		

   		<form action="{{ url('/categories/'.$category->id) }}" method="POST">
   			
   			@csrf

   			@method('PUT')

			<div class="form-group">
				<label for="label">Label</label>
				<input value="{{ $category->label }}" type="text" class="form-control" name="label" id="label">
			</div>

			<div class="form-group">
				<label for="description">Description</label>
				<textarea class="form-control" name="description" cols="30" rows="4" id="description">
					{{ $category->description }}
				</textarea>
			</div>
            
            <div class="form-check">
			  <input name="active" class="form-check-input" type="checkbox" id="active" value="{{ $category->active }}" @if($category->active) checked @endif>
			  <label class="form-check-label" for="active">
			    Active
			  </label>
			</div>

			<button class="btn btn-warning btn-block" type="submit">Update</button>

   		</form>


   	</div>
   </div>

@endsection
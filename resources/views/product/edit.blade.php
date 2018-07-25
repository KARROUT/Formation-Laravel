@extends('layouts.app')

@section('content')

<div class="text-right">
	<a href="{{ url('products') }}" class="btn btn-light"> <i class="fa fa-arrow-left"></i> </a>
</div>

<h1>Edit product</h1>

   <div class="row">
   	<div class="col-6 mx-auto">
   		

   		<form action="{{ url('/products/'.$product->id) }}" method="POST">
   			
   			@csrf

   			@method('PUT')

			<div class="form-group">
				<label for="label">Label</label>
				<input value="{{ $product->label }}" type="text" class="form-control" name="label" id="label">
			</div>

			<div class="form-group">
				<label for="description">Description</label>
				<textarea class="form-control" name="description" cols="30" rows="4" id="description">
					{{ $product->description }}
				</textarea>
			</div>
            
           <!-- <div class="form-check">
			  <input name="active" class="form-check-input" type="checkbox" id="active" value="{{ $product->active }}" @if($product->active) checked @endif>
			  <label class="form-check-label" for="active">
			    Active
			  </label>
			</div> -->

			<button class="btn btn-warning btn-block" type="submit">Update</button>

   		</form>


   	</div>
   </div>

@endsection
@extends('layouts.app')


@section('content')

<div class="text-right">
	<a href="{{ url('products/create') }}" class="btn btn-success"> <i class="fa fa-plus"></i> </a>
</div>

<h1>List of products</h1>
    
   <div class="text-right">
   	<form action="{{ url('/search') }}" class="form-inline" method="POST">
   		@csrf
   		<select name="filter" id="" class="form-control">
   		<option value="">Tous</option>
   		<option value="1">Active</option>
   		<option value="0">Non active</option>
   	</select>

   	<button class="btn btn-warning">Search</button>

   	</form>
   	
   </div> 
   <table class="table table-hover">
   	<thead>
   		<tr>
   			<th>Label</th>
   			<th>Description</th>
        <th>User</th>
   			<th></th>
   		</tr>
   	</thead>
   	<tbody>
   		@foreach($products as $product)
	   		<tr>
	   			<td>{{ $product->label }}</td>
	   			<td>{{ $product->description }}</td>
          <td>{{ $product->user->name }}</td>
	   			<td class="text-right">
	   				
                    
                    <form action="{{ url('products/'.$product->id) }}" method="POST">
                    	@method('delete')
                    	@csrf

                    	<a href="" class="btn btn-info btn-sm"> <i class="fa fa-eye"></i> Show</a>
	   				    <a href="{{ url('/products/'.$product->id.'/edit') }}" class="btn btn-danger btn-sm"><i class="fa fa-pencil"></i> Edit</a>

                    	<button class="btn btn-secondary btn-sm" type="submit">
                    		<i class="fa fa-trash"></i> Delete
                    	</button>
                    </form>
	   			</td>
	   		</tr>
   		@endForeach
   	</tbody>
   </table>

@endsection
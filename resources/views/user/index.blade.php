@extends('layouts.app')


@section('content')

<div class="row">
	<div class="col-12">
		<h1>list of users</h1>
		<table class="table">
			<thead>
				<tr>
					<th>Name</th>
					<th>Email</th>
				</tr>
			</thead>
			<tbody>
				@foreach($users as $user)
				<tr>
					<td>{{ $user->name }}</td>
					<td>{{ $user->email }}</td>
				</tr>
				<tr>
					<td colspan="2">
						
						@foreach($user->products as $product)
                           
                           <div class="well mt-2">
                           	<h3>{{ $product->label }}</h3>
                           	<p>{{ $product->description }}</p>
                           </div>

						@endforeach

					</td>
				</tr>
				@endforeach
			</tbody>
		</table>
	</div>
</div>

@endsection

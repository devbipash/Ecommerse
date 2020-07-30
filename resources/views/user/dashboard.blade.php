@extends('layouts.front')
@section('content')
<div class="container">
	<h2 class="text-sm-center">User Dashboard </h2>
	<h4 class="text-sm-center"> Welcome {{$user->name}}</h4>
	<div class="row">
		<div class="col-sm-6">
			<h4> Name: {{$user->name}}</h4>
			<h4> Email: {{$user->email}}</h4>
			<h4> phone: {{$user->phone}}</h4>
		</div>
		<div class="col-sm-6 text-sm-right">
			<h4>
			Total Item: @auth
			{{Cart::session(auth()->id())->getTotalQuantity()}}
			@else
			0
			@endauth  Item </h4>
			<h4> Total Price: <span>{{\Cart::session(auth()->id())->getTotal()}}</span></h4>
		</div>
	</div>
</div>
@endsection
@extends('layouts.front')

@section('content')
<div class="container">
	
<h2>{{$categoryName ?? null }} products</h2>
@foreach($products as $product)
@include('product.single_product')
@endforeach

</div>


@endsection
@extends('layouts.app')

@section('content')
<div class="container">
	<h2>Submit your Shop</h2>

<form action="{{route('shops.store')}}" method="post">
	@csrf
  <div class="form-group">
    <label for="Name">Name of the Shop</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Name" name="name">
    
  </div>
  <div class="form-group">
    <label for="Descriptiuon">Description</label>
   <textarea class="form-control" name="description"></textarea> 
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>

	
</div>

@endsection
@extends('layouts.app')
@section('content')

<div class="container">
	<h3>Checkout</h3>
<h4>Shipping Information</h4>
	 <form action="{{route('orders.store')}}" method="post">
	 	@csrf
  <div class="form-group">
    <label for="email">Full name:</label>
    <input type="text" class="form-control" placeholder="Enter Full name" name="shipping_name">
  </div>
  <div class="form-group">
    <label for="email">State:</label>
    <input type="text" class="form-control" placeholder="Enter State" id="email"name="shipping_state">
  </div>
  <div class="form-group">
    <label for="email">City:</label>
    <input type="text" class="form-control" placeholder="Enter City" id="email"name="shipping_city">
  </div>
<div class="form-group">
    <label for="email">Zip:</label>
    <input type="number" class="form-control" placeholder="Enter Zip" id="email"name="shipping_zipcode">
  </div>
  <div class="form-group">
    <label for="email">Full address:</label>
    <input type="text" class="form-control" placeholder="Enter Full address" id="email" name="shipping_address">
  </div>
  <div class="form-group">
    <label for="email">Phone:</label>
    <input type="text" class="form-control" placeholder="Enter Pshone" id="email" name="shipping_phone">
  </div>
  <h4>Payment Option</h4>

  <div class="form-check">
  	
  	<label class="form-check">
  		<input type="radio" name="payment_method" class="form-check-input"value="cash_on_delivery">
  		Cash on Delevery
  	</label>
  </div>
  	<div class="form-check">
  	<label class="form-check">
  		<input type="radio" name="payment_method" class="form-check-input"value="paypal" checked>
  		Paypal
  	</label>
  </div>
  </div>

  <button type="submit" class="btn btn-primary ml-5">Place order</button>

</form> 
</div>

@endsection
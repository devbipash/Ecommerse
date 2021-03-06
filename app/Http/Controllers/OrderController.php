<?php

namespace App\Http\Controllers;

use App\Order;
use Illuminate\Http\Request;


class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store (Request $request)
    {



        $order=new Order();
        $order->order_number = uniqid('orderNumber');

        $order->shipping_fullname = $request->input('shipping_name');
        $order->shipping_state = $request->input('shipping_state');
        $order->shipping_city = $request->input('shipping_city');
        $order->shipping_address = $request->input('shipping_address');
        $order->shipping_phone = $request->input('shipping_phone');
        $order->shipping_zipcode = $request->input('shipping_zipcode');

        //billing 

        $order->billing_fullname = $request->input('shipping_name');
        $order->billing_state = $request->input('shipping_state');
        $order->billing_city = $request->input('shipping_city');
        $order->billing_address = $request->input('shipping_address');
        $order->billing_phone = $request->input('shipping_phone');
        $order->billing_zipcode = $request->input('shipping_zipcode');

        $order->grand_total = \Cart::session(auth()->id())->getTotal();
        $order->Item_count = \Cart::session(auth()->id())->getTotalQuantity();

        $order->user_id =auth()->id();

        $order->save();
    
       

       //save order items
      $cartItems = \Cart::session(auth()->id())->getTotalQuantity();
/*
@foreach ($cartItems as $item ) {
    $order->items()->attach($item->id,['price'=>$item->price,'quantity'=>$item->quantity]);
}
@endforeach*/
//payment

if (request('payment_method')=='paypal') {
    return redirect()->route('paypal.checkout');
}
    //empty cart

    //\cart::session(auth()->id()->clear());

    //sent email tocustomer

    //take user to thank you  
    
return "order completed,thank you for order";

      


}

    /**
     * Display the specified resource.
     *
     * @param  \App\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function show(Order $order)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function edit(Order $order)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Order $order)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function destroy(Order $order)
    {
        //
    }
}

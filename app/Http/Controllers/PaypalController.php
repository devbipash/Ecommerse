<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Srmklive\PayPal\Services\ExpressCheckout;
use App\Cart;
class PaypalController extends Controller
{
public function getExpresscheckout()
{

$cart = \Cart::session(auth()->id());
$cartItem=array_map(function($item){
	return [
'name' => $item['name'],
'price' => $item['price'],
'qty' => $item['quantity'],
	];
},$cart->getContent()->toarray());

$checkoutData =[
'items'=>$cartItem,
'return_url'=>route('paypal.success'),
'cancel_url'=>route('paypal.cancel'),
'invoice_id'=>uniqid(),
'invoice_description'=>'order description',
'total'=>$cart->getTotal()
];

$provider = new ExpressCheckout();
$response = $provider->setExpressCheckout($checkoutData);

return redirect($response['paypal_link']);

}
public function cancelpage()
{

	dd('payment failed');
}

}



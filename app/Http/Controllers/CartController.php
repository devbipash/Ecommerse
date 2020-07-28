<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Product;
use Cart;
use App\Coupon;
class CartController extends Controller
{
public function add(Product $product)
{

\Cart::session(auth()->id())->add(array(
'id' => $product->id,
'name' => $product->name,
'price' => $product->price,
'quantity' =>1,
'attributes' => array(),
'associatedModel' => $product,
));
return redirect()->route('cart.index');
}


Public function index()
{ 
     
	$cartitems = \Cart::session(auth()->id())->getContent();
	return view('cart.index',compact('cartitems'));
}


Public function destroy($ItemId)
{ 
     
	\Cart::session(auth()->id())->remove($ItemId);
	return back();
}


Public function update($ItemId)
{ 
    \Cart::session(auth()->id())->update($ItemId,[
     'quantity' =>[
      'relative' => false,
      'value' => request ('quantity')
  ]
	
]); 
	
	return back();
}


Public function checkout()
{ 
     
	return view('cart.checkout');
}



Public function applyCoupon()
{ 
     

     $couponCode=request('coupon_code');
    $couponData=Coupon::where ('code',$couponCode)->first();

     if (!$couponData) {
     	return back()->withMessage('sorry!,Coupon does not exist');
     }

	// add single condition on a cart bases
$condition = new \Darryldecode\Cart\CartCondition(array(
    'name' => $couponData->name,
    'type' => $couponData->type,
    'target' => 'total', // this condition will be applied to cart's subtotal when getSubTotal() is called.
    'value' => $couponData->value,
));


Cart::session(auth()->id())->condition($condition); // for a speicifc user's.


return back()->withMessage('coupon applied');

}


}
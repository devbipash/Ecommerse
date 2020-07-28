<?php

namespace App\Http\Livewire;

use Livewire\Component;

class MallCart extends Component
{
	public $cartItems =[];


 public function mount()
    {
        $this->cartItems =\Cart::session(auth()->id())->getContent()->toArray();
    }




    public function render()
    {
        return view('livewire.mall-cart');
    }
}

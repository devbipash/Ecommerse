<div>
	{{-- <form action="{{route('cart.update',$item['id'])}}" method="get">--}}
		<form wire:submit.prevent="updateCart">
			
			<input wire:model="quantity" type="number" >
			<input class="button"type="submit" value="update">
		</form>
	</div>
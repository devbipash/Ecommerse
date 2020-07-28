@component('mail::message')
# Shop activation request

Please Active Shop

Shop Name:{{$shop->name}};
Shop Owner:{{$shop->user->name}};



@component('mail::button', ['url' => url('/admin/shops')])

Manage Shop

@endcomponent

Thanks,<br>
{{ config('app.name') }}
@endcomponent

@php
/*
$layout_page = shop_cart
**Variables:**
- $cart: no paginate
- $countries: array
- $attributesGroup: array
*/
@endphp

@extends($sc_templatePath . '.layout')

@section('block_main')
    <section class="section section-xl bg-default text-md-left">
        <!-- breadcrumb area start -->
        <div class="breadcrumb-area breadcrumb-img bg-img" data-bg="{{ sc_file($sc_templateFile.'/img/banner/shop.jpg')}}">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb-wrap">
                            <nav aria-label="breadcrumb">
                                <h3 class="breadcrumb-title">Giỏ Hàng</h3>
                                <ul class="breadcrumb justify-content-center">
                                    <li class="breadcrumb-item"><a href="index.html"><i class="fa fa-home"></i></a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Xem chi tiết</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb area end -->

        <div class="container">
            <div class="row">
                @if (count($cart) == 0)
                    <div class="col-md-12" style="margin-top: 70px">
                        {!! sc_language_render('cart.cart_empty') !!}!
                    </div>
                @else
                    @php
                        $cartTmp = $cart->groupBy('storeId');
                    @endphp

                    {{-- Render cart item for earch shop --}}
                    @foreach ($cartTmp as $sId => $cartItem)
                        

                        <div class="col-md-12" style="margin-top: 70px">
                            <form action="{{ sc_route('checkout.prepare') }}" method="POST">
                                <input type="hidden" name="store_id" value="{{ $sId }}">
                                @csrf

                                {{-- Item cart detail --}}
                                @include($sc_templatePath . '.common.cart_list', ['cartItem' => $cartItem])
                                {{-- //Item cart detail --}}

                                {{-- Button checkout --}}
                                <div class="col-md-12 text-center">
                                    <div class="pull-right">
                                        <button class="news-btn" style="margin-bottom: 30px"
                                            type="submit">{{ sc_language_render('cart.checkout') }}</button>
                                    </div>
                                </div>
                                {{-- Button checkout --}}
                            </form>
                        </div>
                    @endforeach
                    {{-- // Render cart item for earch shop --}}
                @endif
            </div>
        </div>
    </section>
@endsection



@push('scripts')
    {{-- //script here --}}
@endpush

@push('styles')
    {{-- Your css style --}}
@endpush

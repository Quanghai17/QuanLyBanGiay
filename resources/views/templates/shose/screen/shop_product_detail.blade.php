@php
/*
$layout_page = shop_product_detail
**Variables:**
- $product: no paginate
- $productRelation: no paginate
*/
@endphp

@extends($sc_templatePath . '.layout')

{{-- block_main --}}
@section('block_main_content_center')
    @php
    $countItem = 0;
    @endphp
    <!-- Single Product-->

    <!-- page main wrapper start -->
    <div class="shop-main-wrapper section-padding pb-0">
        <div class="container">
            <div class="row">
                <!-- product details wrapper start -->
                <div class="col-lg-12 order-1 order-lg-2">
                    <!-- product details inner end -->
                    <div class="product-details-inner">
                        <div class="row">
                            <div class="col-lg-5">
                                <div class="product-large-slider">
                                    <div class="pro-large-img img-zoom">
                                        <img src="{{ sc_file($product->getImage()) }}" alt="product-details" />
                                    </div>
                                    <div class="pro-large-img img-zoom">
                                        <img src="{{ sc_file($product->getImage()) }}" alt="product-details" />
                                    </div>
                                    <div class="pro-large-img img-zoom">
                                        <img src="{{ sc_file($product->getImage()) }}" alt="product-details" />
                                    </div>
                                    <div class="pro-large-img img-zoom">
                                        <img src="{{ sc_file($product->getImage()) }}" alt="product-details" />
                                    </div>
                                </div>
                                <div class="pro-nav slick-row-10 slick-arrow-style">
                                    <div class="pro-nav-thumb">
                                        <img src="{{ sc_file($product->getImage()) }}" alt="product-details" />
                                    </div>
                                    <div class="pro-nav-thumb">
                                        <img src="{{ sc_file($product->getImage()) }}" alt="product-details" />
                                    </div>
                                    <div class="pro-nav-thumb">
                                        <img src="{{ sc_file($product->getImage()) }}" alt="product-details" />
                                    </div>
                                    <div class="pro-nav-thumb">
                                        <img src="{{ sc_file($product->getImage()) }}" alt="product-details" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-7">
                                <form id="buy_block" action="{{ sc_route('cart.add') }}" method="post">
                                    {{ csrf_field() }}
                                    <input type="hidden" name="product_id" id="product-detail-id"
                                        value="{{ $product->id }}" />
                                    <input type="hidden" name="storeId" id="product-detail-storeId"
                                        value="{{ $product->store_id }}" />
                                    <div class="product-details-des">
                                        <h3 class="product-name">{{ $product->name }}</h3>
                                        <div class="ratings d-flex">
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>

                                        </div>
                                        <div class="price-box">

                                            <span class="price-regular">{!! $product->showPriceDetail() !!}</span>
                                        </div>

                                        <div class="availability">Số Lượng
                                            <i class="fa fa-check-circle"></i>
                                            <span>{{ $product->stock }}</span>
                                        </div>
                                        @if (sc_config('product_stock'))
                                            <div>
                                                {{ sc_language_render('product.stock_status') }}:
                                                <span id="stock_status">
                                                    @if ($product->stock <= 0 && !sc_config('product_buy_out_of_stock'))
                                                        {{ sc_language_render('product.out_stock') }}
                                                    @else
                                                        {{ sc_language_render('product.in_stock') }}
                                                    @endif
                                                </span>
                                            </div>
                                        @endif
                                        <p class="pro-desc">{!! sc_html_render($product->content) !!}</p>
                                        @if ($product->kind != SC_PRODUCT_GROUP && $product->allowSale())
                                            <div class="quantity-cart-box d-flex align-items-center">
                                                <div >
                                                    <input class="form-input" name="qty" type="number" data-zeros="true"
                                                        value="1" min="1" max="100">
                                                </div>
                                                <div>
                                                    <button class="action_link"
                                                        type="submit"> <a class="btn btn-cart2" >{{ sc_language_render('action.add_to_cart') }}</a></button>
                                                </div>
                                            </div>
                                        @endif
                                        <div class="useful-links">
                                            <a href="#" data-bs-toggle="tooltip" title="Compare"><i
                                                    class="fa fa-refresh"></i>compare</a>
                                            <a href="#" data-bs-toggle="tooltip" title="Wishlist"><i
                                                    class="fa fa-heart-o"></i>wishlist</a>
                                        </div>
                                        <div class="like-icon">
                                            <a class="facebook" href="#"><i class="fa fa-facebook"></i>like</a>
                                            <a class="twitter" href="#"><i class="fa fa-twitter"></i>tweet</a>
                                            <a class="pinterest" href="#"><i class="fa fa-pinterest"></i>save</a>
                                            <a class="google" href="#"><i class="fa fa-google-plus"></i>share</a>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- product details inner end -->

                    <!-- product details reviews start -->
                    <div class="product-details-reviews section-padding pb-0">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="product-review-info">
                                    <ul class="nav review-tab">
                                        <li>
                                            <a class="active" data-bs-toggle="tab" href="#tab_one">description</a>
                                        </li>
                                        <li>
                                            <a data-bs-toggle="tab" href="#tab_two">information</a>
                                        </li>

                                    </ul>
                                    <div class="tab-content reviews-tab">
                                        <div class="tab-pane fade show active" id="tab_one">
                                            <div class="tab-one">
                                                <p>{!! sc_html_render($product->content) !!}
                                                </p>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="tab_two">
                                            <table class="table table-bordered">
                                                <tbody>
                                                    <tr>
                                                        <td>color</td>
                                                        <td>black, blue, red</td>
                                                    </tr>
                                                    <tr>
                                                        <td>size</td>
                                                        <td>L, M, S</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- product details reviews end -->
                </div>
                <!-- product details wrapper end -->
            </div>
        </div>
    </div>
    <!-- page main wrapper end -->


    @if ($productRelation->count())
        <!-- Related Products-->

        <!-- Related product area start -->
        <section class="product-gallery section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-title text-center">
                            <h3 class="title">Sản Phẩm Khác</h3>
                            <h4 class="sub-title"></h4>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="product-carousel--4 slick-row-5 slick-arrow-style">
                            <!-- product single item start -->
                            @foreach ($productRelation as $key => $productRel)
                                <div class="product-item">
                                    <div class="product-thumb">
                                        <a href="product-details.html">
                                            <img src="{{ sc_file($productRel->getImage()) }}" alt="product thumb">
                                        </a>
                                        <div class="button-group">
                                            <a href="wishlist.html" data-bs-toggle="tooltip" title="Add to Wishlist"><i
                                                    class="fa fa-heart-o"></i></a>
                                            <a href="#" data-bs-toggle="modal" data-bs-target="#quick_view"><span
                                                    data-bs-toggle="tooltip" title="Quick View"><i
                                                        class="fa fa-eye"></i></span></a>
                                        </div>
                                        <div class="product-label">
                                            <span>new</span>
                                        </div>
                                        <div class="discount-label">
                                            <span>-10% Off</span>
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <div class="product-caption">
                                            <h6 class="product-name">
                                                <a href="product-details.html">{{ $product->name }}</a>
                                            </h6>
                                            <div class="price-box">

                                                <span class="price-regular">{!! $product->showPriceDetail() !!}</span>
                                            </div>
                                            <a class="add-to-cart" href="cart.html"><i
                                                    class="fa fa-shopping-cart"></i></a>
                                        </div>
                                        <div class="ratings">
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <!-- product single item end -->
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Related product area end -->
    @endif

    <!--/product-details-->
@endsection
{{-- block_main --}}


@push('styles')
    {{-- Your css style --}}
@endpush

@push('scripts')
    {{-- //script here --}}
@endpush

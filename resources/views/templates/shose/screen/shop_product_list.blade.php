@php
/*
$layout_page = shop_home
**Variables:**
- $products: paginate
Use paginate: $products->appends(request()->except(['page','_token']))->links()
*/
@endphp

@extends($sc_templatePath . '.layout')

{{-- block_main_content_center --}}
@section('block_main_content_center')

    @if (count($products))
        <!-- page main wrapper start -->
        <div class="shop-main-wrapper section-padding">
            <div class="container">
                <div class="row">
                    <!-- sidebar area start -->
                    <div class="col-lg-3 order-2 order-lg-1">
                        <aside class="sidebar-wrapper">
                            <!-- single sidebar start -->
                            <div class="sidebar-single">
                                <h6 class="sidebar-title">Categories</h6>
                                <div class="sidebar-body">
                                    <ul class="checkbox-container search-list">
                                        <li>
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="customCheck1">
                                                <label class="custom-control-label" for="customCheck1">Mens (3)</label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="customCheck2">
                                                <label class="custom-control-label" for="customCheck2">Womens (4)</label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="customCheck3">
                                                <label class="custom-control-label" for="customCheck3">Kids (15)</label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="customCheck4">
                                                <label class="custom-control-label" for="customCheck4">Sports (10)</label>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- single sidebar end -->

                            <!-- single sidebar start -->
                            <div class="sidebar-single">
                                <h6 class="sidebar-title">Brand</h6>
                                <div class="sidebar-body">
                                    <ul class="checkbox-container search-list">
                                        <li>
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="customCheck5">
                                                <label class="custom-control-label" for="customCheck5">Studio (3)</label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="customCheck6">
                                                <label class="custom-control-label" for="customCheck6">Hastech (4)</label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="customCheck7">
                                                <label class="custom-control-label" for="customCheck7">Quickiin (15)</label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="customCheck8">
                                                <label class="custom-control-label" for="customCheck8">Graphic corner
                                                    (10)</label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="customCheck9">
                                                <label class="custom-control-label" for="customCheck9">devItems (12)</label>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- single sidebar end -->
                            <!-- single sidebar start -->
                            <div class="sidebar-banner">
                                <div class="banner-thumb">
                                    <a href="#">
                                        <img src="{{ sc_file($sc_templateFile . '/img/banner/sidebar-banner.jpg') }}"
                                            alt="">
                                    </a>
                                </div>
                            </div>
                            <!-- single sidebar end -->
                        </aside>
                    </div>
                    <!-- sidebar area end -->

                    <!-- shop main wrapper start -->
                    <div class="col-lg-9 order-1 order-lg-2">
                        <div class="shop-product-wrapper">
                            <!-- shop product top wrap start -->
                            <div class="shop-top-bar">
                                <div class="row align-items-center">
                                    <div class="col-lg-7 col-md-6 order-2 order-md-1">
                                        <div class="top-bar-left">
                                            <div class="product-view-mode">
                                                <a class="active" href="#" data-target="grid-view"
                                                    data-bs-toggle="tooltip" title="Grid View"><i
                                                        class="fa fa-th"></i></a>
                                                <a href="#" data-target="list-view" data-bs-toggle="tooltip"
                                                    title="List View"><i class="fa fa-list"></i></a>
                                            </div>
                                            <div class="product-amount">
                                                <p>Showing 1–16 of 21 results</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-md-6 order-1 order-md-2">
                                        <div class="top-bar-right">
                                            <div class="product-short">
                                                <p>Sort By : </p>
                                                <select class="nice-select" name="sortby">
                                                    <option value="trending">Relevance</option>
                                                    <option value="sales">Name (A - Z)</option>
                                                    <option value="sales">Name (Z - A)</option>
                                                    <option value="rating">Price (Low &gt; High)</option>
                                                    <option value="date">Rating (Lowest)</option>
                                                    <option value="price-asc">Model (A - Z)</option>
                                                    <option value="price-asc">Model (Z - A)</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- shop product top wrap start -->

                            <!-- product item list wrapper start -->
                            <div class="shop-product-wrap grid-view row mbn-30">
                                <!-- product single item start -->
                                @foreach ($products as $key => $product)
                                    <div class="col-md-4 col-sm-6">
                                        <!-- product grid start -->
                                        <div class="product-item">
                                            <div class="product-thumb">
                                                <a href="{{ $product->getUrl() }}">
                                                    <img src="{{ sc_file($product->getThumb()) }}" alt="product thumb">
                                                </a>
                                                <div class="button-group">
                                                    <a href="wishlist.html" data-bs-toggle="tooltip"
                                                        title="Add to Wishlist"><i class="fa fa-heart-o"></i></a>
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
                                                        <a href="{{ $product->getUrl() }}">{{ $product->name }}</a>
                                                    </h6>
                                                    <div class="price-box">

                                                        <span class="price-regular">{!! $product->showPrice() !!}</span>
                                                    </div>
                                                    <a class="add-to-cart"
                                                        onClick="addToCartAjax('{{ $product->id }}','default','{{ $product->store_id }}')"><i
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
                                        <!-- product grid end -->

                                        <!-- product list item end -->
                                        <div class="product-list-item">
                                            <div class="product-thumb">
                                                <a href="{{ $product->getUrl() }}">
                                                    <img src="{{ sc_file($product->getThumb()) }}" alt="product thumb">
                                                </a>
                                                <div class="button-group">
                                                    <a href="wishlist.html" data-bs-toggle="tooltip"
                                                        title="Add to Wishlist"><i class="fa fa-heart-o"></i></a>
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
                                            <div class="product-content-list">
                                                <h4 class="product-name"><a
                                                        href="{{ $product->getUrl() }}">{{ $product->name }}</a></h4>
                                                <div class="ratings">
                                                    <span><i class="fa fa-star"></i></span>
                                                    <span><i class="fa fa-star"></i></span>
                                                    <span><i class="fa fa-star"></i></span>
                                                    <span><i class="fa fa-star"></i></span>
                                                    <span><i class="fa fa-star"></i></span>
                                                </div>
                                                <div class="price-box">
                                                    <span class="price-regular">{!! $product->showPrice() !!}</span>
                                                </div>
                                                <p>{{ $product->description }}
                                                </p>
                                                <a onClick="addToCartAjax('{{ $product->id }}','default','{{ $product->store_id }}')"
                                                    class="btn btn-large hover-color">Add To Cart</a>
                                            </div>
                                        </div>
                                        <!-- product list item end -->
                                    </div>
                                @endforeach
                                <!-- Quick view modal start -->
                                <div class="modal" id="quick_view">
                                    <div class="modal-dialog modal-lg modal-dialog-centered">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close"
                                                    data-bs-dismiss="modal">&times;</button>
                                            </div>
                                            <div class="modal-body">
                                                <!-- product details inner end -->
                                                <div class="product-details-inner">
                                                    <div class="row">
                                                        <div class="col-lg-5">
                                                            <div class="product-large-slider">
                                                                <div class="pro-large-img">
                                                                    <img src="{{ sc_file($product->getThumb()) }}"
                                                                        alt="product-details" />
                                                                </div>
                                                                <div class="pro-large-img">
                                                                    <img src="{{ sc_file($product->getThumb()) }}"
                                                                        alt="product-details" />
                                                                </div>
                                                                <div class="pro-large-img">
                                                                    <img src="{{ sc_file($product->getThumb()) }}"
                                                                        alt="product-details" />
                                                                </div>
                                                                <div class="pro-large-img">
                                                                    <img src="{{ sc_file($product->getThumb()) }}"
                                                                        alt="product-details" />
                                                                </div>
                                                            </div>
                                                            <div class="pro-nav slick-row-10 slick-arrow-style">
                                                                <div class="pro-nav-thumb">
                                                                    <img src="{{ sc_file($product->getThumb()) }}"
                                                                        alt="product-details" />
                                                                </div>
                                                                <div class="pro-nav-thumb">
                                                                    <img src="{{ sc_file($product->getThumb()) }}"
                                                                        alt="product-details" />
                                                                </div>
                                                                <div class="pro-nav-thumb">
                                                                    <img src="{{ sc_file($product->getThumb()) }}"
                                                                        alt="product-details" />
                                                                </div>
                                                                <div class="pro-nav-thumb">
                                                                    <img src="{{ sc_file($product->getThumb()) }}"
                                                                        alt="product-details" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-7">
                                                            <div class="product-details-des">
                                                                <h3 class="product-name">{{ $product->name }}
                                                                </h3>
                                                                <div class="ratings d-flex">
                                                                    <span><i class="fa fa-star"></i></span>
                                                                    <span><i class="fa fa-star"></i></span>
                                                                    <span><i class="fa fa-star"></i></span>
                                                                    <span><i class="fa fa-star"></i></span>
                                                                    <span><i class="fa fa-star"></i></span>
                                                                    <div class="pro-review">
                                                                        <span>1 Reviews</span>
                                                                    </div>
                                                                </div>
                                                                <div class="price-box">
                                                                    <span class="price-regular">{!! $product->showPrice() !!}</span>
                                                                </div>
                                                                <h5 class="offer-text"><strong>Hurry up</strong>! offer
                                                                    ends in:</h5>
                                                                <div class="product-countdown" data-countdown="2021/09/20">
                                                                </div>
                                                                <p class="pro-desc">{{ $product->description }}</p>
                                                                <div class="quantity-cart-box d-flex align-items-center">
                                                                    <h6 class="option-title">qty:</h6>
                                                                    <div class="quantity">
                                                                        <div class="pro-qty"><input type="text"
                                                                                value="1"></div>
                                                                    </div>
                                                                    <div class="action_link">
                                                                        <a class="btn btn-cart2" onClick="addToCartAjax('{{ $product->id }}','default','{{ $product->store_id }}')">Add To Cart</a>
                                                                    </div>
                                                                </div>
                                                                <div class="useful-links">
                                                                    <a href="#" data-bs-toggle="tooltip" title="Compare"><i
                                                                            class="fa fa-refresh"></i>compare</a>
                                                                    <a href="#" data-bs-toggle="tooltip" title="Wishlist"><i
                                                                            class="fa fa-heart-o"></i>wishlist</a>
                                                                </div>
                                                                <div class="like-icon">
                                                                    <a class="facebook" href="#"><i
                                                                            class="fa fa-facebook"></i>like</a>
                                                                    <a class="twitter" href="#"><i
                                                                            class="fa fa-twitter"></i>tweet</a>
                                                                    <a class="pinterest" href="#"><i
                                                                            class="fa fa-pinterest"></i>save</a>
                                                                    <a class="google" href="#"><i
                                                                            class="fa fa-google-plus"></i>share</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div> <!-- product details inner end -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Quick view modal end -->

                            </div>
                            <!-- product item list wrapper end -->

                            <!-- start pagination area -->
                            <div class="paginatoin-area text-center">
                                <ul class="pagination-box">
                                    <li><a class="previous" href="#"><i class="fa fa-angle-left"></i></a></li>
                                    <li class="active"><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a class="next" href="#"><i class="fa fa-angle-right"></i></a></li>
                                </ul>
                            </div>
                            <!-- end pagination area -->
                        </div>
                    </div>
                    <!-- shop main wrapper end -->
                </div>
            </div>
        </div>
        <!-- page main wrapper end -->
    @else
        <div class="product-top-panel group-md">
            <p style="text-align:center">{!! sc_language_render('front.no_item') !!}</p>
        </div>
    @endif

@endsection
{{-- //block_main_content_center --}}


@push('styles')
@endpush

@push('scripts')
    <!-- //script here -->
@endpush

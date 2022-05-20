@php
/*
$layout_page = home
*/
$banners = $modelBanner
    ->start()
    ->getBanner()
    ->getData();

$products = $modelProduct
    ->start()
    ->getProductLatest()
    ->setLimit(6)
    ->getData();
$news = $modelNews->start()->setlimit(4)->getData();
@endphp

@extends($sc_templatePath . '.layout')

@section('block_main')
    {{-- Render include view --}}
    {{-- @dd($banners); --}}
    <section class="hero-slider" data-loop="true">
        <div class="hero-slider-active slick-arrow-style slick-arrow-style_hero slick-dot-style">
            <!-- single slider item start -->
            @foreach ($banners as $key => $banner)
                <div class="hero-single-slide hero-overlay">
                    <div class="hero-slider-item hero-1 bg-img" data-bg="{{ sc_file($banner->image) }}">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="hero-slider-content slide-1">
                                        <h1 class="slide-title">New</h1>
                                        <h2 class="slide-subtitle">Running Sneakers <span>Men's like plex</span></h2>
                                        <a href="#" class="btn btn-large btn-bg">Shop Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
            <!-- single slider item start -->

        </div>
    </section>
    {{-- // Render include view --}}
    <!-- service policy start -->
    <section class="service-policy bg-gray mtn-100">
        <div class="container">
            <div class="row row-10">
                <div class="col-lg-3 col-sm-6">
                    <div class="policy-block text-center">
                        <div class="policy-icon">
                            <i class="fa fa-heart-o"></i>
                        </div>
                        <div class="policy-text">
                            <h4 class="policy-title">Yêu Thích</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="policy-block text-center">
                        <div class="policy-icon">
                            <i class="fa fa-truck"></i>
                        </div>
                        <div class="policy-text">
                            <h4 class="policy-title">Vận Chuyển</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="policy-block text-center">
                        <div class="policy-icon">
                            <i class="fa fa-credit-card"></i>
                        </div>
                        <div class="policy-text">
                            <h4 class="policy-title">Thanh Toán</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="policy-block text-center">
                        <div class="policy-icon">
                            <i class="fa fa-headphones"></i>
                        </div>
                        <div class="policy-text">
                            <h4 class="policy-title">Hỗ Trợ Khách Hàng</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- service policy end -->
    <!-- about us area start -->
    <section class="about-us bg-gray section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="about-thumb js-tilt" data-tilt-perspective="1000" data-tilt-scale="1" data-tilt-speed="500"
                        data-tilt-max="15">
                        <img class="w-100" src="{{ sc_file($sc_templateFile . '/img/about/about.jpg') }}"
                            alt="about thumb">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="about-content">
                        <h2 class="about-title">PULLMAN SNEAKER </h2>
                        <h3 class="about-subtitle">Luôn đặt chất lượng sản phẩm lên hàng đầu</h3>
                        <p>Mang lại cảm giác thoải mái nhất khi trải nhiệm sản phẩm giày</p>
                        <ul class="about-info">
                            <li class="add"><i class="fa fa-home"></i>{{ sc_store('address') }}</li>
                            <li class="phone"><i class="fa fa-phone"></i>{{ sc_store('long_phone') }}</li>
                            <li class="mail"><i class="fa fa-envelope"></i>Email: {{ sc_store('email') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- about us area end -->
    <!-- product gallery area start -->
    <section class="product-gallery section-padding">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title text-center">
                        <h3 class="title">Sản Phẩm Mới</h3>
                        <h4 class="sub-title">Cập nhật các mẫu giày mới nhất thị trường.</h4>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="product-carousel--4 slick-row-5 slick-arrow-style">
                        <!-- product single item start -->
                        {{-- @dd($products) --}}
                        @foreach ($products as $product)
                            <div class="product-item">
                                <div class="product-thumb">
                                    <a href="{{ $product->getUrl() }}">
                                        <img src="{{ sc_file($product->getThumb()) }}" alt="product thumb">
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
                                            <a href="{{ $product->getUrl() }}">{{ $product->name }}</a>
                                        </h6>
                                        <div class="price-box">

                                            <span class="price-regular">{!! $product->showPriceDetail() !!}</span>
                                        </div>
                                        <a class="add-to-cart" onClick="addToCartAjax('{{ $product->id }}','default','{{ $product->store_id }}')"><i class="fa fa-shopping-cart"></i></a>
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
                        @endforeach
                        <!-- product single item end -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- product gallery area end -->
    <!-- banner statistics area start -->
    <div class="banner-statistics-area">
        <div class="container">
            <div class="row mtn-30">
                <div class="col-md-6">
                    <div class="banner-statistics mt-30">
                        <a href="#">
                            <img src="{{ sc_file($sc_templateFile . '/img/banner/banner_1.2.jpg') }}" alt="banner thumb">
                        </a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="banner-statistics mt-30">
                        <a href="#">
                            <img src="{{ sc_file($sc_templateFile . '/img/banner/banner_1.3.jpg') }}" alt="banner thumb">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- banner statistics area end -->
    <!-- category area start -->
    <section class="category-area bg-set bg-img section-padding pb-0"
        data-bg="{{ sc_file($sc_templateFile . '/img/bg/bg-listcate.jpg') }}">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title text-center">
                        <h3 class="title text-white">Đặt Hàng Trực Tuyến Tại WEBSITE</h3>
                        <h4 class="sub-title text-white">Nhận nhiều ưu đãi đặc biệt</h4>
                    </div>
                </div>
            </div>
            <div class="row category-wrapper">
                <div class="col-12">
                    <div class="catagory-carousel-active slick-row-15">
                        <div class="single-category-item">
                            <div class="category-title">
                                <a href="shop.html">MEN</a>
                            </div>
                            <div class="category-thumb">
                                <a href="shop.html">
                                    <img src="{{ sc_file($sc_templateFile . '/img/category/category-1.png') }}"
                                        alt="category thumb">
                                </a>
                            </div>
                            <div class="shop-collection text-center">
                                <a class="shop-btn" href="shop.html">Shop Collections</a>
                            </div>
                        </div>
                        <div class="single-category-item">
                            <div class="category-title">
                                <a href="shop.html">WOMEN</a>
                            </div>
                            <div class="category-thumb">
                                <a href="shop.html">
                                    <img src="{{ sc_file($sc_templateFile . '/img/category/category-2.png') }}"
                                        alt="category thumb">
                                </a>
                            </div>
                            <div class="shop-collection text-center">
                                <a class="shop-btn" href="shop.html">Shop Collections</a>
                            </div>
                        </div>
                        <div class="single-category-item">
                            <div class="category-title">
                                <a href="shop.html">QUICKIIN</a>
                            </div>
                            <div class="category-thumb">
                                <a href="shop.html">
                                    <img src="{{ sc_file($sc_templateFile . '/img/category/category-3.png') }}"
                                        alt="category thumb">
                                </a>
                            </div>
                            <div class="shop-collection text-center">
                                <a class="shop-btn" href="shop.html">Shop Collections</a>
                            </div>
                        </div>
                        <div class="single-category-item">
                            <div class="category-title">
                                <a href="shop.html">Kids</a>
                            </div>
                            <div class="category-thumb">
                                <a href="shop.html">
                                    <img src="{{ sc_file($sc_templateFile . '/img/category/category-2.png') }}"
                                        alt="category thumb">
                                </a>
                            </div>
                            <div class="shop-collection text-center">
                                <a class="shop-btn" href="shop.html">Shop Collections</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- category area end -->
    <!-- latest blog area start -->
    {{-- @dd($news); --}}
    <section class="latest-blog-area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title text-center">
                        <h3 class="title">Bài Viết</h3>
                        <h4 class="sub-title">Tin Tức Mới Nhất Về Các Sản Phẩm Của Chúng Tôi.</h4>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="blog-carousel-active slick-row-5 slick-arrow-style">
                        <!-- blog single post start -->
                        @foreach ($news as $new)
                            

                        <div class="blog-slide-item">
                            <div class="blog-post-item">
                                <div class="blog-thumb">
                                    <a href="{{ $new->getUrl() }}">
                                        <img src="{{ sc_file($new->getThumb()) }}" alt="blog thumb">
                                    </a>
                                </div>
                                <div class="blog-content">
                                    <h6 class="blog-title">
                                        <a href="{{ $new->getUrl() }}">{{ $new->title }}</a>
                                    </h6>
                                    <div class="blog-meta">
                                        <span><i class="fa fa-calendar"></i>{{ $new->created_at }}</span>
                                        <span><i class="fa fa-user"></i>Admin</span>
                                    </div>
                                    <p class="blog-desc">{{ $new->description }}</p>
                                    <a class="btn read-more" href="{{ $new->getUrl() }}">Xem Chi Tiết</a>
                                </div>
                            </div>
                        </div>
                        @endforeach
                        <!-- blog single post end -->

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- latest blog area end -->
@endsection

@push('styles')
    {{-- Your css style --}}
@endpush

@push('scripts')
    {{-- //script here --}}
@endpush

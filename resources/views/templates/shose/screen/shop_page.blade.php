@php
/*
$layout_page = shop_page
**Variables:**
- $page: no paginate
*/ 
@endphp

@extends($sc_templatePath.'.layout')

@section('block_main')
<!-- about us area start -->
<section class="about-us section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="about-thumb js-tilt" data-tilt-perspective="1000" data-tilt-scale="1" data-tilt-speed="500" data-tilt-max="15">
                    <img class="w-100" src="{{ sc_file($sc_templateFile.'/img/about/about.jpg')}}" alt="about thumb">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="about-content">
                    <h2 class="about-title">PULLMAN SNEAKER </h2>
                    <h3 class="about-subtitle">Luôn đặt chất lượng sản phẩm lên hàng đầu</h3>
                    <p>Mang lại cảm giác thoải mái nhất khi trải nhiệm sản phẩm giày</p>
                    <ul class="about-info">
                        <li class="add"><i class="fa fa-home"></i> {{ sc_store('address') }}</li>
                        <li class="phone"><i class="fa fa-phone"></i>{{ sc_store('long_phone') }}</li>
                        <li class="mail"><i class="fa fa-envelope"></i>Email: {{ sc_store('email') }}</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- about us area end -->

<!-- choosing area start -->
<div class="choosing-area section-padding pt-0">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title text-center">
                    <h3 class="title">Lí do chọn chúng tôi</h3>
                    <h4 class="sub-title">Sản phẩm mang thương hiệu chính hãng </h4>
                </div>
            </div>
        </div>
        <div class="row mbn-30">
            <div class="col-lg-4 col-md-4">
                <div class="single-choose-item text-center mb-30">
                    <i class="fa fa-globe"></i>
                    <h4>Miễn Phí Vận Chuyển</h4>
                </div>
            </div>
            <div class="col-lg-4 col-md-4">
                <div class="single-choose-item text-center mb-30">
                    <i class="fa fa-plane"></i>
                    <h4>Giao Hàng Đúng Thời Hạn</h4>
                </div>
            </div>
            <div class="col-lg-4 col-md-4">
                <div class="single-choose-item text-center mb-30">
                    <i class="fa fa-comments"></i>
                    <h4>Hỗ Trợ Khách Hàng</h4>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- choosing area end -->

<!-- testimonial area start -->
<section class="testimonial-area bg-img section-padding" data-bg="{{ sc_file($sc_templateFile.'/img/bg/bg-testimonial.jpg')}}">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="testimonial-wrapper">
                    <div class="testimonial-carousel">
                        <!-- slide item start -->
                        <div class="testimonial-slide-item">
                            <div class="testimonial-item text-center">
                                <p class="testimonial-desc">
                                    "Sản phẩm Chất Lượng Tốt"
                                </p>
                                <div class="testimonial-author">
                                    <img src="{{ sc_file($sc_templateFile.'/img/testimonial/testimonial-1.png')}}" alt="testimonial author">
                                </div>
                                <h6 class="author-designation">jhone doe</h6>
                            </div>
                        </div>
                        <!-- slide item end -->
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- testimonial area end -->
@endsection


@push('styles')
{{-- Your css style --}}
@endpush

@push('scripts')
{{-- //script here --}}
@endpush
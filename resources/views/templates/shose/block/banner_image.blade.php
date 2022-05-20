@php
$banners = $modelBanner
    ->start()
    ->setType('banner')
    ->getData();
@endphp
{{-- @dd($banners); --}}
@if (!empty($banners))
    {{-- <section class="section swiper-container swiper-slider swiper-slider-1" data-loop="true">
  <div class="swiper-wrapper text-center text-lg-left">
    @foreach ($banners as $key => $banner)
    <div class="swiper-slide swiper-slide-caption context-dark" data-slide-bg="{{ sc_file($banner->image) }}">
      <div class="swiper-slide-caption section-md text-center">
        <div class="container">
          <a href="{{ sc_route('banner.click',['id' => $banner->id]) }}" target="{{ $banner->target }}">
            {!! sc_html_render($banner->html) !!}
          </a>
        </div>
      </div>
    </div>
    @endforeach
  </div>
  <!-- Swiper Pagination-->
  <div class="swiper-pagination"></div>
  <!-- Swiper Navigation-->
  <div class="swiper-button-prev"></div>
  <div class="swiper-button-next"></div>
</section> --}}
    <!--slider-->
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
@endif

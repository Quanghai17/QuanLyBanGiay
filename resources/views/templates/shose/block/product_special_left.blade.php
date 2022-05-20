@php
$productPromotion = $modelProduct->getProductPromotion()->setRandom()->setLimit(sc_config('product_viewed'))->getData()
@endphp
@if (!empty($productPromotion))

<div class="sidebar-single">
  {{-- <h6 class="aside-title">{{ sc_language_render('front.products_special') }}</h6>
  <div class="row row-10 row-lg-20 gutters-10">
    @foreach ($productPromotion as $key => $product)
    <div class="col-4 col-sm-6 col-md-12">
      <article class="product-minimal">
        <div class="unit unit-spacing-sm flex-column flex-md-row align-items-center">
          <div class="unit-left">
            <a class="post-minimal-figure" href="{{ $product->getUrl() }}">
            <img src="{{ sc_file($product->getThumb()) }}" alt="" width="106" height="104">
            </a>
          </div>
          <div class="unit-body">
            <p class="product-minimal-title"><a href="{{ $product->getUrl() }}">{{ $product->name }}</a></p>
            <p class="product-minimal-price">
              {!! $product->showPrice() !!}
            </p>
          </div>
        </div>
      </article>
    </div>
    @endforeach
  </div> --}}
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
<!--/product special-->
@endif


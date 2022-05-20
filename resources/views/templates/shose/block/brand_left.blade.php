@php
$brands = $modelBrand->start()->getData();
@endphp
@if (!empty($brands))
    <div class="sidebar-single">
        {{-- <h6 class="aside-title">{{ sc_language_render('front.brands') }}</h6>
    <div class="row row-10 row-lg-20 gutters-10">
        <div class="group-sm group-tags">
            @foreach ($brands as $brand)
            <a class="link-tag" href="{{ $brand->getUrl() }}"> {{ $brand->name }}</a>
            @endforeach
        </div>
    <!--brands_products-->
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
    <!--/brands_products-->
@endif

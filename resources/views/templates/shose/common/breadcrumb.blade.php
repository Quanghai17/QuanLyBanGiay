{{-- breadcrumb --}}
@if (!empty($breadcrumbs) && count($breadcrumbs))
<section class="breadcrumbs-custom">
    @if (!empty($layout_page))
        @php
            $bannerBreadcrumbImage = '';
            $bannerBreadcrumbTmp = [];
            $arrBreadcrumbPage = [
                'shop_product_list',
                'shop_contact', 
                'shop_page', 
                'shop_news',
                'shop_news_detail', 
                'shop_item_list',
                'shop_product_detail',
                'shop_search'
            ];
            $arrBreadcrumbHome = [
                'shop_home',
                'vendor_home',
                'vendor_product_list'
            ];
            if (in_array($layout_page, $arrBreadcrumbPage)) {
                $bannerBreadcrumbTmp = $modelBanner->start()->getBreadcrumb()->getData()->first();
                $brPosition = 'bg-br-page';
            } elseif (in_array($layout_page, $arrBreadcrumbHome)) {
                if (isset($storeId)) {
                    $bannerBreadcrumbTmp = $modelBanner->start()->setStore($storeId)->getBannerStore()->getData()->first();
                } else {
                    $bannerBreadcrumbTmp = $modelBanner->start()->getBannerStore()->getData()->first();
                }
                $brPosition = 'bg-br-home';
            }
            if ($bannerBreadcrumbTmp) {
                $bannerBreadcrumbImage = sc_file($bannerBreadcrumbTmp['image'] ?? '');
            }
        @endphp
        {{-- @dd($bannerBreadcrumbImage); --}}
        @if ($bannerBreadcrumbImage)
        {{-- <div class="parallax-container" data-parallax-img="{{ $bannerBreadcrumbImage }}">
            <div class="material-parallax parallax">
            <img src="{{ $bannerBreadcrumbImage }}" alt="" style="display: block; transform: translate3d(-50%, 83px, 0px);">
            </div>
            <div class="breadcrumbs-custom-body parallax-content context-dark">
            <div class="container">
                <h2 class="breadcrumbs-custom-title">{{ $title ?? '' }}</h2>
            </div>
            </div>
        </div> --}}
        <div class="breadcrumb-area breadcrumb-img bg-img" data-bg="{{ $bannerBreadcrumbImage }}">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb-wrap">
                            <nav aria-label="breadcrumb">
                                <h3 class="breadcrumb-title">{{ $title ?? '' }}</h3>
                                <ul class="breadcrumb justify-content-center">
                                    <li class="breadcrumb-item"><a href="index.html"><i class="fa fa-home"></i></a></li>
                                    <li class="breadcrumb-item"><a href="shop.html">Shop</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">{{ $title ?? '' }}</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        @endif
    @endif

</section>
@endif
{{-- //breadcrumb --}}
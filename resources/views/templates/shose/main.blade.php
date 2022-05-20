<!DOCTYPE html>
<html class="wide wow-animation" lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700%7CLato%7CKalam:300,400,700">
    <link rel="canonical" href="{{ request()->url() }}" />
    <meta name="description" content="{{ $description??sc_store('description') }}">
    <meta name="keyword" content="{{ $keyword??sc_store('keyword') }}">
    <title>{{$title??sc_store('title')}}</title>
    <link rel="icon" href="{{ sc_file(sc_store('icon', null, 'images/icon.png')) }}" type="image/png" sizes="16x16">
    <meta property="og:image" content="{{ !empty($og_image)?sc_file($og_image):sc_file('images/org.jpg') }}" />
    <meta property="og:url" content="{{ \Request::fullUrl() }}" />
    <meta property="og:type" content="Website" />
    <meta property="og:title" content="{{ $title??sc_store('title') }}" />
    <meta property="og:description" content="{{ $description??sc_store('description') }}" />
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- css default for item s-cart -->
    @include($sc_templatePath.'.common.css')
    <!--//end css defaut -->
    <!-- css default for item s-cart -->
    <!--//end css defaut -->

    <!--Module header -->
    @includeIf($sc_templatePath.'.common.render_block', ['positionBlock' => 'header'])
    <!--//Module header -->
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="{{ sc_file($sc_templateFile.'/img/favicon.ico')}}">

    <!-- CSS
	============================================ -->
    <!-- google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:300,300i,400,400i,600,700,800,900%7CPoppins:300,400,500,600,700,800,900" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="{{ sc_file($sc_templateFile.'/css/vendor/bootstrap.min.css')}}">
    <!-- Font-awesome CSS -->
    <link rel="stylesheet" href="{{ sc_file($sc_templateFile.'/css/vendor/font-awesome.min.css')}}">
    <!-- Slick slider css -->
    <link rel="stylesheet" href="{{ sc_file($sc_templateFile.'/css/plugins/slick.min.css')}}">
    <!-- animate css -->
    <link rel="stylesheet" href="{{ sc_file($sc_templateFile.'/css/plugins/animate.css')}}">
    <!-- Nice Select css -->
    <link rel="stylesheet" href="{{ sc_file($sc_templateFile.'/css/plugins/nice-select.css')}}">
    <!-- jquery UI css -->
    <link rel="stylesheet" href="{{ sc_file($sc_templateFile.'/css/plugins/jqueryui.min.css')}}">
    <!-- main style css -->
    <link rel="stylesheet" href="{{ sc_file($sc_templateFile.'/css/style.css')}}">

    {{-- <link rel="stylesheet" href="{{ sc_file($sc_templateFile.'/css/bootstrap.css')}}">
    <link rel="stylesheet" href="{{ sc_file($sc_templateFile.'/css/fonts.css')}}">
    <link rel="stylesheet" href="{{ sc_file($sc_templateFile.'/css/style.css')}}"> --}}
    <style>
        {!! sc_store_css() !!}
    </style>
    <style>.ie-panel{display: none;background: #212121;padding: 10px 0;box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3);clear: both;text-align:center;position: relative;z-index: 1;} html.ie-10 .ie-panel, html.lt-ie-10 .ie-panel {display: block;}</style>
    @stack('styles')
  </head>
<body>
    <div class="ie-panel">
        <a href="http://windows.microsoft.com/en-US/internet-explorer/">
            <img src="{{ sc_file($sc_templateFile.'/images/ie8-panel/warning_bar_0000_us.jpg')}}" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today.">
        </a>
    </div>

    <div class="page">
        {{-- Block header --}}
        @section('block_header')
            @include($sc_templatePath.'.block_header')
        @show
        {{--// Block header --}}

        {{-- Block top --}}
        @section('block_top')
            @include($sc_templatePath.'.block_top')

            <!--Breadcrumb -->
            @section('breadcrumb')
                @include($sc_templatePath.'.common.breadcrumb')
            @show
            <!--//Breadcrumb -->

            <!--Notice -->
            @include($sc_templatePath.'.common.notice')
            <!--//Notice -->
        @show
        {{-- //Block top --}}

        {{-- Block main --}}
        @section('block_main')
            <section class="section section-xxl bg-default text-md-left">
                <div class="container">
                    <div class="row row-50">
                        @section('block_main_content')
                            <!--Block left-->
                            <div class="col-lg-3 order-2 order-lg-1">
                                @section('block_main_content_left')
                                    @include($sc_templatePath.'.block_main_content_left')
                                @show
                            </div>
                            <!--//Block left-->

                            <!--Block center-->
                            <div class="shop-product-wrap grid-view row mbn-30">
                                @section('block_main_content_center')
                                    @include($sc_templatePath.'.block_main_content_center')
                                @show
                            </div>
                            <!--//Block center-->
                            
                            <!--Block right -->
                            @section('block_main_content_right')
                                @include($sc_templatePath.'.block_main_content_right')
                            @show
                            <!--//Block right -->
                        @show
                    </div>
                </div>
            </section>
        @show
        {{-- //Block main --}}

        <!-- Render include view -->
        @include($sc_templatePath.'.common.include_view')
        <!--// Render include view -->


        {{-- Block bottom --}}
        @section('block_bottom')
            @include($sc_templatePath.'.block_bottom')
        @show
        {{-- //Block bottom --}}

        {{-- Block footer --}}
        @section('block_footer')
            @include($sc_templatePath.'.block_footer')
        @show
        {{-- //Block footer --}}

    </div>

    <div id="sc-loading">
        <div class="sc-overlay"><i class="fa fa-spinner fa-pulse fa-5x fa-fw "></i></div>
    </div>

    <!-- Modernizer JS -->
    <script src="{{ sc_file($sc_templateFile.'/js/vendor/modernizr-3.6.0.min.js')}}"></script>
    <!-- jQuery JS -->
    <script src="{{ sc_file($sc_templateFile.'/js/vendor/jquery-3.6.0.min.js')}}"></script>
    <!-- Bootstrap JS -->
    <script src="{{ sc_file($sc_templateFile.'/js/vendor/bootstrap.bundle.min.js')}}"></script>
    <!-- slick Slider JS -->
    <script src="{{ sc_file($sc_templateFile.'/js/plugins/slick.min.js')}}"></script>
    <!-- Countdown JS -->
    <script src="{{ sc_file($sc_templateFile.'/js/plugins/countdown.min.js')}}"></script>
    <!-- Nice Select JS -->
    <script src="{{ sc_file($sc_templateFile.'/js/plugins/nice-select.min.js')}}"></script>
    <!-- jquery UI JS -->
    <script src="{{ sc_file($sc_templateFile.'/js/plugins/jqueryui.min.js')}}"></script>
    <!-- Image zoom JS -->
    <script src="{{ sc_file($sc_templateFile.'/js/plugins/image-zoom.min.js')}}"></script>
    <!-- image loaded js -->
    <script src="{{ sc_file($sc_templateFile.'/js/plugins/imagesloaded.pkgd.min.js')}}"></script>
    <!-- masonry  -->
    <script src="{{ sc_file($sc_templateFile.'/js/plugins/masonry.pkgd.min.js')}}"></script>
    <!-- mailchimp active js -->
    <script src="{{ sc_file($sc_templateFile.'/js/plugins/ajaxchimp.js')}}"></script>
    <!-- contact form dynamic js -->
    <script src="{{ sc_file($sc_templateFile.'/js/plugins/ajax-mail.js')}}"></script>
    <!-- google map api -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCfmCVTjRI007pC1Yk2o2d_EhgkjTsFVN8"></script>
    <!-- google map active js -->
    <script src="{{ sc_file($sc_templateFile.'/js/plugins/google-map.js')}}"></script>
    <!-- Main JS -->
    <script src="{{ sc_file($sc_templateFile.'/js/main.js')}}"></script>

    {{-- <script src="{{ sc_file($sc_templateFile.'/js/core.min.js')}}"></script>
    <script src="{{ sc_file($sc_templateFile.'/js/script.js')}}"></script> --}}
    <!-- js default for item s-cart -->
    @include($sc_templatePath.'.common.js')
    <!--//end js defaut -->
    @stack('scripts')

</body>
</html>
@php
/*
$layout_page = shop_news_detail
**Variables:**
- $news: no paginate
*/
@endphp

@extends($sc_templatePath.'.layout')

@section('block_main')
{{-- <section class="section section-sm section-first bg-default text-md-left">
    <div class="container">
        <div class="row">
            <div class="col-12">
                {!! sc_html_render($news->content) !!}
            </div>
        </div>
    </div>
</section> --}}
<!-- blog main wrapper start -->
{{-- @dd($news); --}}
<div class="blog-main-wrapper section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 order-2">
                <aside class="blog-sidebar-wrapper">
                    <div class="blog-sidebar">
                        <h5 class="title">Tìm Kiếm</h5>
                        <div class="sidebar-serch-form">
                            <form action="#">
                                <input type="text" class="search-field" placeholder="search here">
                                <button type="submit" class="search-btn"><i class="fa fa-search"></i></button>
                            </form>
                        </div>
                    </div> <!-- single sidebar end -->

                </aside>
            </div>
            <div class="col-lg-9 order-1">
                <div class="blog-item-wrapper">
                    <!-- blog post item start -->
                    <div class="blog-post-item blog-details-post d-block">
                        <div class="blog-thumb w-100">
                            <img src="{{ sc_file($news->getThumb()) }}" alt="blog thumb">
                        </div>
                        <div class="blog-content w-100 mt-20 pl-0">
                            <h3 class="blog-title">{{ $news->title }}</h3>
                            <div class="blog-meta">
                                <p>{{ $news->created_at }}<a href="#">Pullman</a></p>
                            </div>
                            <div class="entry-summary">
                                <p>{!! $news->content !!}</p>
                                
                            </div>
                        </div>
                    </div>
                    <!-- blog post item end -->

                   

                    
                </div>
            </div>
        </div>
    </div>
</div>
<!-- blog main wrapper end -->
@endsection

@push('styles')
{{-- Your css style --}}
@endpush

@push('scripts')
{{-- //script here --}}
@endpush

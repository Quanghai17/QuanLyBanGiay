@php
/*
$layout_page = shop_news
**Variables:**
- $news: paginate
Use paginate: $news->appends(request()->except(['page','_token']))->links()
*/
@endphp


@extends($sc_templatePath.'.layout')

@section('block_main')
<!-- blog main wrapper start -->
<div class="blog-main-wrapper section-padding">
  <div class="container">
      <div class="row">
          <div class="col-lg-12">
              <div class="blog-item-wrapper">
                  <!-- blog item wrapper end -->
                  <div class="row mbn-30">
                    @foreach ($news as $newsDetail)
                      <div class="col-md-6">
                          <!-- blog post item start -->
                          @include($sc_templatePath.'.common.blog_single', ['blog' => $newsDetail])
                          <!-- blog post item end -->
                      </div>
                      @endforeach
                  </div>
                  <!-- blog item wrapper end -->

                  <!-- start pagination area -->
                  <div class="paginatoin-area shadow-bg text-center">
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
{{-- <article class="post post-classic box-md"><a class="post-classic-figure" href="{{ $blog->getUrl() }}">
        <img src="{{ sc_file($blog->getThumb()) }}" alt="" width="370" height="239"></a>
    <div class="post-classic-content">
        <div class="post-classic-time">
            <time datetime="{{ $blog->created_at }}">{{ $blog->created_at }}</time>
        </div>
        <h5 class="post-classic-title"><a href="{{ $blog->getUrl() }}">{{ $blog->title }}</a></h5>
        <p class="post-classic-text">
            {{ $blog->description }}
        </p>
    </div>
</article> --}}

<div class="blog-post-item d-block mb-30">
    <div class="blog-thumb w-100">
        <a href="{{ $blog->getUrl() }}">
            <img src="{{ sc_file($blog->getThumb()) }}" alt="blog thumb">
        </a>
    </div>
    <div class="blog-content w-100 pl-0 mt-20">
        <h6 class="blog-title">
            <a href="{{ $blog->getUrl() }}">{{ $blog->title }}</a>
        </h6>
        <div class="blog-meta">
            <span><i class="fa fa-calendar"></i>{{ $blog->created_at }}</span>
            <span><i class="fa fa-user"></i>Admin</span>
        </div>
        <p class="blog-desc">{{ $blog->description }}</p>
        <a class="btn read-more" href="{{ $blog->getUrl() }}">Xem Chi Tiết</a>
    </div>
</div>

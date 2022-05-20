<!-- Start Header Area -->
<header class="header-area">
    <!-- main header start -->
    <div class="main-header d-none d-lg-block">
        <!-- header top start -->
        <div class="header-top black-bg">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="top-left-navigation">
                            <ul class="nav align-items-center">
                                @if (sc_config('link_language', null, 1))
                                    @if (count($sc_languages) > 1)
                                        <li class="language">
                                            <a style="color: #87b106;" class="rd-nav-link" href="#">
                                                <img src="{{ sc_file($sc_languages[app()->getLocale()]['icon']) }}"
                                                    style="height: 25px;">Tiếng Việt
                                            </a>
                                            <ul class="dropdown-list">
                                                @foreach ($sc_languages as $key => $language)
                                                    <li class="language">
                                                        <a  
                                                            href="{{ sc_route('locale', ['code' => $key]) }}">
                                                            <img src="{{ sc_file($language['icon']) }}"
                                                                style="height: 25px;"> {{ $language['name'] }}
                                                        </a>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </li>
                                    @endif
                                @endif
                                {{-- <li class="language">
                                    <img style="width: 18px; height: 12px"
                                        src="{{ sc_file($sc_templateFile . '/img/icon/vn.png') }}" alt="flag">
                                    Tiếng Việt
                                    <i class="fa fa-angle-down"></i>
                                    <ul class="dropdown-list">
                                        <li><a href="#"><img
                                                    src="{{ sc_file($sc_templateFile . '/img/icon/en.png') }}"
                                                    alt="flag"> English</a></li>
                                        <li><a href="#"><img style="width: 18px; height: 12px"
                                                    src="{{ sc_file($sc_templateFile . '/img/icon/vn.png') }}"
                                                    alt="flag"> Tiếng Việt</a></li>
                                    </ul>
                                </li> --}}
                                {{-- <li class="curreny-wrap">
                                    VND
                                    <i class="fa fa-angle-down"></i>
                                    <ul class="dropdown-list curreny-list">
                                        <li><a href="#"> USD</a></li>
                                        <li><a href="#"> VND</a></li>
                                    </ul>
                                </li> --}}
                                @if (sc_config('link_currency', null, 1))
                                      @if (count($sc_currencies) > 1)
                                          <li class="curreny-wrap">
                                              <a style="color: #87b106;"  href="#">
                                                  {{ sc_currency_info()['name'] }}</i>
                                              </a>
                                              <ul class="dropdown-list curreny-list">
                                                  @foreach ($sc_currencies as $key => $currency)
                                                      <li 
                                                          {{ $currency->code == sc_currency_info()['code'] ? 'disabled' : '' }}>
                                                          <a style="color: #27fd0d;"
                                                              href="{{ sc_route('currency', ['code' => $currency->code]) }}">
                                                              {{ $currency->name }}
                                                          </a>
                                                      </li>
                                                  @endforeach
                                              </ul>
                                          </li>
                                      @endif
                                  @endif
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 d-flex justify-content-end">
                        <div class="header-social-link">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                        <ul class="user-info-block">
                            <li><a href="my-account.html"><i class="fa fa-user-circle"></i>Tài Khoản</a></li>
                            <li><a href="checkout.html"><i class="fa fa-credit-card"></i> Checkout</a></li>
                            <li><a href="{{ sc_route('logout') }}"><i class="fa fa-sign-in"></i> Sign In</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- header top end -->

        <!-- header middle area start -->
        <div class="header-main-area black-soft sticky">
            <div class="container">
                <div class="row align-items-center position-relative">
                    <!-- start logo area -->
                    <div class="col-auto">
                        <div class="logo">
                            <a href="index.html">
                                <img src="{{ sc_file($sc_templateFile . '/img/logo/logo.png') }}" alt="Brand Logo">
                            </a>
                        </div>
                    </div>
                    <!-- start logo area -->

                    <!-- main menu area start -->
                    <div class="col-auto position-static">
                        <div class="main-menu-area">
                            <div class="main-menu">
                                <!-- main menu navbar start -->
                                <nav class="desktop-menu">
                                    <ul>

                                        @foreach ($sc_layoutsUrl['menu'] as $url)
                                            <li class="active">
                                                <a class=""
                                                    {{ $url->target == '_blank' ? 'target=_blank' : '' }}
                                                    href="{{ sc_url_render($url->url) }}">{{ sc_language_render($url->name) }}</a>
                                            </li>
                                        @endforeach

                                    </ul>
                                </nav>
                                <!-- main menu navbar end -->
                            </div>
                        </div>
                    </div>
                    <!-- main menu area end -->

                    <!-- mini cart area start -->
                    <div class="col-auto ms-auto">
                        <div class="header-right">
                            <div class="header-configure-area">
                                <ul class="nav">
                                    <li>
                                        <a href="#" class="search-trigger"><i class="fa fa-search"></i></a>

                                    </li>

                                    <li class="mini-cart-wrap">
                                        <a href="#" class="minicart-btn">
                                            <i class="fa fa-shopping-cart"></i>
                                            <span class="notification">2</span>
                                        </a>
                                        <div class="cart-list-wrapper">
                                            <div class="minicart-button">
                                                <a href="{{ sc_route('cart') }}"><i class="fa fa-shopping-cart"></i>
                                                    View
                                                    Cart</a>
                                                <a href="cart.html"><i class="fa fa-share"></i> Checkout</a>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- mini cart area end -->

                </div>
            </div>
        </div>
        <!-- header middle area end -->
    </div>
    <!-- main header start -->

    <!-- mobile header start -->
    <!-- mobile header start -->
    <div class="mobile-header d-lg-none d-md-block sticky black-soft">
        <!--mobile header top start -->
        <div class="container-fluid">
            <div class="row align-items-center">
                <div class="col-12">
                    <div class="mobile-main-header">
                        <div class="mobile-logo">
                            <a href="index.html">
                                <img src="{{ sc_file($sc_templateFile . '/img/logo/logo.png') }}" alt="Brand Logo">
                            </a>
                        </div>
                        <div class="mobile-menu-toggler">
                            <div class="mini-cart-wrap">
                                <a href="cart.html">
                                    <i class="fa fa-shopping-cart"></i>
                                    <div class="notification">0</div>
                                </a>
                            </div>
                            <button class="mobile-menu-btn">
                                <span></span>
                                <span></span>
                                <span></span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- mobile header top start -->
    </div>
    <!-- mobile header end -->
    <!-- mobile header end -->

    <!-- offcanvas mobile menu start -->
    <!-- off-canvas menu start -->
    <aside class="off-canvas-wrapper">
        <div class="off-canvas-overlay"></div>
        <div class="off-canvas-inner-content">
            <div class="btn-close-off-canvas">
                <i class="fa fa-close"></i>
            </div>

            <div class="off-canvas-inner">
                <!-- search box start -->
                <div class="search-box-offcanvas">
                    <form>
                        <input type="text" placeholder="Search Here...">
                        <button class="search-btn"><i class="fa fa-search"></i></button>
                    </form>
                </div>
                <!-- search box end -->

                <!-- mobile menu start -->
                <div class="mobile-navigation">

                    <!-- mobile menu navigation start -->
                    <nav>
                        <ul class="mobile-menu">
                            @foreach ($sc_layoutsUrl['menu'] as $url)
                                <li class="active">
                                    <a class="" {{ $url->target == '_blank' ? 'target=_blank' : '' }}
                                        href="{{ sc_url_render($url->url) }}">{{ sc_language_render($url->name) }}</a>
                                </li>
                            @endforeach

                        </ul>
                    </nav>
                    <!-- mobile menu navigation end -->
                </div>
                <!-- mobile menu end -->

                <div class="mobile-settings">
                    <ul class="nav">
                        <li>
                            <div class="dropdown mobile-top-dropdown">
                                <a href="#" class="dropdown-toggle" id="currency" data-bs-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">
                                    Currency
                                    <i class="fa fa-angle-down"></i>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="currency">
                                    <a class="dropdown-item" href="#">$ USD</a>
                                    <a class="dropdown-item" href="#">$ EURO</a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="dropdown mobile-top-dropdown">
                                <a href="#" class="dropdown-toggle" id="myaccount" data-bs-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">
                                    My Account
                                    <i class="fa fa-angle-down"></i>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="myaccount">
                                    <a class="dropdown-item" href="my-account.html">my account</a>
                                    <a class="dropdown-item" href="login-register.html"> login</a>
                                    <a class="dropdown-item" href="login-register.html">register</a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>

                <!-- offcanvas widget area start -->
                <div class="offcanvas-widget-area">
                    <div class="off-canvas-contact-widget">
                        <ul>
                            <li><i class="fa fa-mobile"></i>
                                <a href="#">0123456789</a>
                            </li>
                            <li><i class="fa fa-envelope-o"></i>
                                <a href="#">info@yourdomain.com</a>
                            </li>
                        </ul>
                    </div>
                    <div class="off-canvas-social-widget">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-pinterest-p"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-youtube-play"></i></a>
                    </div>
                </div>
                <!-- offcanvas widget area end -->
            </div>
        </div>
    </aside>
    <!-- off-canvas menu end -->
    <!-- offcanvas mobile menu end -->
</header>
<!-- end Header Area -->
<!-- offcanvas search form start -->
<div class="offcanvas-search-wrapper">
    <div class="offcanvas-search-inner">
        <div class="offcanvas-close">
            <i class="fa fa-close"></i>
        </div>
        <div class="container">
            <div class="offcanvas-search-box">
                <form class="d-flex bdr-bottom w-100" action="{{ sc_route('search') }}" method="GET">
                    <input type="text" placeholder="Search entire storage here...">
                    <button class="search-btn" type="submit"><i class="fa fa-search"></i>search</button>
                </form>
                {{-- <form class="rd-search" action="{{ sc_route('search') }}" method="GET">
                        <div class="form-wrap">
                            <input class="rd-navbar-search-form-input form-input" type="text"
                                name="keyword"
                                placeholder="{{ sc_language_render('search.placeholder') }}" />
                            <button class="rd-search-form-submit" type="submit"></button>
                        </div>
                    </form> --}}
            </div>
        </div>
    </div>
</div>
<!-- offcanvas search form end -->

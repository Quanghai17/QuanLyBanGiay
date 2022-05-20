      <!-- Page Footer-->
      {{-- <footer class="section footer-classic">
        <div class="footer-classic-body section-lg bg-brown-2">
          <div class="container">
            <div class="row row-40 row-md-50 justify-content-xl-between">
              <div class="col-sm-6 col-lg-4 col-xl-3 wow fadeInRight">
                <a href="{{ sc_route('home') }}">
                    <img class="logo-footer" src="{{  sc_file(sc_store('logo', ($storeId ?? null))) }}" alt="{{ sc_store('title', ($storeId ?? null)) }}">
                </a>
                <p>{{ sc_store('title', ($storeId ?? null)) }}</p>
                <p> {!! sc_store('time_active', ($storeId ?? null))  !!}</p>
                <div class="footer-classic-social">
                  <div class="group-lg group-middle">
                    <div>
                      <ul class="list-inline list-social list-inline-sm">
                        <li><a class="icon mdi mdi-facebook" href="{{ sc_config('facebook_url') }}"></a></li>
                        <li><a class="icon mdi mdi-twitter" href="{{ sc_config('twitter_url') }}"></a></li>
                        <li><a class="icon mdi mdi-instagram" href="{{ sc_config('instagram_url') }}"></a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-lg-4 col-xl-3 wow fadeInRight" data-wow-delay=".1s">
                <h4 class="footer-classic-title">{{ sc_language_render('about.page_title') }}</h4>
                <ul class="contacts-creative">
                  <li>
                    <div class="unit unit-spacing-sm flex-column flex-md-row">
                      <div class="unit-left"><span class="icon mdi mdi-map-marker"></span></div>
                      <div class="unit-body"><a href="#">{{ sc_language_render('store.address') }}: {{ sc_store('address', ($storeId ?? null)) }}</a></div>
                    </div>
                  </li>
                  <li>
                    <div class="unit unit-spacing-sm flex-column flex-md-row">
                      <div class="unit-left"><span class="icon mdi mdi-phone"></span></div>
                      <div class="unit-body"><a href="tel:#">{{ sc_language_render('store.hotline') }}: {{ sc_store('long_phone', ($storeId ?? null)) }}</a></div>
                    </div>
                  </li>
                  <li>
                    <div class="unit unit-spacing-sm flex-column flex-md-row">
                      <div class="unit-left"><span class="icon mdi mdi-email-outline"></span></div>
                      <div class="unit-body"><a href="mailto:#{{ sc_store('email', ($storeId ?? null)) }}">{{ sc_language_render('store.email') }}: {{ sc_store('email', ($storeId ?? null)) }}</a></div>
                    </div>
                  </li>
                  <li>

                    <form class="rd-form-inline rd-form-inline-2"  method="post" action="{{ sc_route('subscribe') }}">
                        @csrf
                          <div class="form-wrap">
                            <input class="form-input" id="subscribe-form-2-email" type="email" name="subscribe_email" required/>
                            <label class="form-label" for="subscribe-form-2-email">{{ sc_language_render('subscribe.email') }}</label>
                          </div>
                          <div class="form-button">
                            <button class="button button-icon-2 button-zakaria button-primary" type="submit" title="{{ sc_language_render('subscribe.title') }}">
                              <span class="fl-bigmug-line-paper122"></span>
                            </button>
                          </div>
                        </form>
                  </li>
                </ul>
              </div>
              <div class="col-lg-4 wow fadeInRight" data-wow-delay=".2s">
                <h4 class="footer-classic-title"> {{ sc_language_render('front.my_profile') }}</h4>
                <!-- RD Mailform-->
                <ul class="contacts-creative">
                    @if (!empty($sc_layoutsUrl['footer']))
                    @foreach ($sc_layoutsUrl['footer'] as $url)
                    <li>
                        <a {{ ($url->target =='_blank')?'target=_blank':''  }}
                            href="{{ sc_url_render($url->url) }}">{{ sc_language_render($url->name) }}</a>
                    </li>
                    @endforeach
                    @endif
                </ul>
              </div>
            </div>
          </div>
        </div>

        @if (!sc_config('hidden_copyright_footer'))
        <div class="footer-classic-panel">
          <div class="container">
            <div class="row row-10 align-items-center justify-content-sm-between">
              <div class="col-md-auto">
                <p class="rights"><span>&copy;&nbsp;</span><span class="copyright-year"></span><span>&nbsp;</span><span>{{ sc_store('title', ($storeId ?? null)) }}</span><span>.&nbsp; All rights reserved</span></p>
              </div>
              <div class="col-md-auto order-md-1"> <a target="_blank"
                href="{{ sc_config('fanpage_url') }}">Fanpage FB</a></div>
              <div class="col-md-auto">
                    Power by <a href="{{ config('s-cart.homepage') }}">{{ config('s-cart.name') }} {{ config('s-cart.sub-version') }}</a>
              </div>
            </div>
          </div>
        </div>
        @endif
      </footer> --}}

       <!-- footer area start -->
    <footer class="black-bg">
      <!-- newsletter area start -->
      <section class="newsletter-area">
          <div class="container">
              <div class="row">
                  <div class="col-12">
                      <div class="newsletter-wrapper text-center">
                          <h3 class="title text-white">Đăng Kí Liên Hệ</h3>
                          <form class="newsletter-inner"  method="post" action="{{ sc_route('subscribe') }}">
                            @csrf
                              <div class="form-wrap">
                                <input class="news-field" id="subscribe-form-2-email" type="email" name="subscribe_email" required/>
                                
                              </div>
                              <div class="form-button">
                                <button style="margin-left: 20px" class="news-btn" type="submit" title="{{ sc_language_render('subscribe.title') }}">
                                  <span class="fl-bigmug-line-paper122">Gửi</span>
                                </button>
                              </div>
                            </form>
                          <h6 class="newsletter-subtitle">Chúng tôi sẽ gửi liên hệ cho bạn sớm nhất .</h6>
                          <!-- mailchimp-alerts Start -->
                          <div class="mailchimp-alerts">
                              <div class="mailchimp-submitting"></div><!-- mailchimp-submitting end -->
                              <div class="mailchimp-success"></div><!-- mailchimp-success end -->
                              <div class="mailchimp-error"></div><!-- mailchimp-error end -->
                          </div>
                          <!-- mailchimp-alerts end -->
                      </div>
                  </div>
              </div>
          </div>
      </section>
      <!-- newsletter area end -->
  
      <div class="footer-middle-area">
          <div class="container">
              <div class="row mtn-30">
                  <div class="col-lg-6 col-sm-12">
                      <div class="address-block mt-30">
                          <div class="footer-logo">
                              <a href="index.html">
                                  <img src="{{ sc_file($sc_templateFile.'/img/logo/logo.png')}}" alt="Brand Logo">
                              </a>
                          </div>
                          <address class="address-info d-flex align-items-center">
                              <i class="fa fa-map-marker"></i>
                              <p><span>Địa Chỉ:</span> {{ sc_store('address') }}</p>
                          </address>
                      </div>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <address class="address-info email mt-30">
                          <i class="fa fa-envelope"></i>
                          <p><span>EMAIL : </span><a href="emailto:demo@examplecom">{{ sc_store('email') }}</a></p>
                      </address>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <address class="address-info email mt-30">
                          <i class="fa fa-phone"></i>
                          <p><span>PHONE : </span><a href="tel:0123456789">{{ sc_store('long_phone') }}</a></p>
                      </address>
                  </div>
              </div>
          </div>
      </div>
      <div class="footer-bottom-area text-center">
          <div class="container">
              <div class="row">
                  <div class="col-12">
                      <div class="payment-method-list">
                          <img src="{{ sc_file($sc_templateFile.'/img/payment-2.png')}}" alt="payment method">
                      </div>
                      <div class="footer-link">
                          <a href="#">SITE MAP</a>
                          <a href="#">SEARCH TERMS</a>
                          <a href="#">ADVANCED SEARCH</a>
                          <a href="#">ORDERS AND RETURNS</a>
                          <a href="#">CONTACT US</a>
                      </div>
                      <p class="copyright">
                          <p>© 2021 <b class="text-white">Pullman</b> Made with <i class="fa fa-heart text-danger"></i> by <a href="https://hasthemes.com/">QuangHai17</a></p>
                      </p>
                  </div>
              </div>
          </div>
      </div>
  </footer>
  <!-- footer area end -->
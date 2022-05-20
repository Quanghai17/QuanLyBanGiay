@php
/*
$layout_page = shop_contact
*/
@endphp

@extends($sc_templatePath . '.layout')

@section('block_main')
    <section class="section section-sm section-first bg-default text-md-left">
        <!-- google map start -->
        <div class="map-area section-padding">
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3710.022495838278!2d105.80419231437794!3d21.585044973931687!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31352738b1bf08a3%3A0x515f4860ede9e108!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2jhu4cgVGjDtG5nIHRpbiAmIFRydXnhu4FuIHRow7RuZyBUaMOhaSBOZ3V5w6pu!5e0!3m2!1svi!2s!4v1652923069563!5m2!1svi!2s"
                width="1349" height="400" style="border:0;" allowfullscreen="" loading="lazy"
                referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
        <!-- google map end -->

        <!-- contact area start -->
        <div class="contact-area section-padding pt-0">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="contact-message">
                            <h4 class="contact-title">Gửi Liên Hệ</h4>
                            <form method="post" action="{{ sc_route('contact.post') }}" class="contact-form"
                                id="form-process">
                                {{ csrf_field() }}
                                <div id="contactFormWrapper">
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6 col-sm-6 {{ $errors->has('name') ? ' has-error' : '' }}">
                                            <input type="text"
                                                class="form-control {{ $errors->has('name') ? 'input-error' : '' }}"
                                                name="name" placeholder="{{ sc_language_render('contact.name') }}"
                                                value="{{ old('name') }}">
                                            @if ($errors->has('name'))
                                                <span class="help-block">
                                                    {{ $errors->first('name') }}
                                                </span>
                                            @endif
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-6 {{ $errors->has('email') ? ' has-error' : '' }}">
                                            <input type="email"
                                                class="form-control {{ $errors->has('email') ? 'input-error' : '' }}"
                                                name="email" placeholder="{{ sc_language_render('contact.email') }}"
                                                value="{{ old('email') }}">
                                            @if ($errors->has('email'))
                                                <span class="help-block">
                                                    {{ $errors->first('email') }}
                                                </span>
                                            @endif
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-6 {{ $errors->has('phone') ? ' has-error' : '' }}">
                                            <input type="telephone"
                                                class="form-control {{ $errors->has('phone') ? 'input-error' : '' }}"
                                                name="phone" placeholder="{{ sc_language_render('contact.phone') }}"
                                                value="{{ old('phone') }}">
                                            @if ($errors->has('phone'))
                                                <span class="help-block">
                                                    {{ $errors->first('phone') }}
                                                </span>
                                            @endif
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-6 {{ $errors->has('title') ? ' has-error' : '' }}">
                                            <input type="text"
                                                class="form-control {{ $errors->has('title') ? 'input-error' : '' }}"
                                                name="title" placeholder="{{ sc_language_render('contact.subject') }}"
                                                value="{{ old('title') }}">
                                            @if ($errors->has('title'))
                                                <span class="help-block">
                                                    {{ $errors->first('title') }}
                                                </span>
                                            @endif
                                        </div>
                                    </div>
                                   
                                    <div class="col-12">
                                        <div
                                            class="contact2-textarea text-center {{ $errors->has('content') ? ' has-error' : '' }}">

                                            <textarea class="form-control {{ $errors->has('content') ? 'input-error' : '' }}" rows="5" cols="75" name="content"
                                                placeholder="{{ sc_language_render('contact.content') }}">{{ old('content') }}</textarea>
                                            @if ($errors->has('content'))
                                                <span class="help-block">
                                                    {{ $errors->first('content') }}
                                                </span>
                                            @endif

                                        </div>
                                    </div>

                                    {!! $viewCaptcha ?? '' !!}

                                    {{-- Button submit --}}
                                    <div class="contact-btn">
                                        <button class="news-btn" type="submit"
                                            value="{{ sc_language_render('action.submit') }}"
                                            id="button-form-process"><a>Gửi Tin Nhắn</a>
                                    </div>
                                    {{-- // Button submit --}}
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="contact-info">
                            <h4 class="contact-title">Liên Hệ Chúng Tôi</h4>

                            <ul>
                                <li><i class="fa fa-fax"></i> Địa Chỉ : {{ sc_store('address') }}</li>
                                <li><i class="fa fa-envelope-o"></i> E-mail: {{ sc_store('email') }}</li>
                                <li><i class="fa fa-phone"></i> {{ sc_store('long_phone') }}</li>
                            </ul>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- contact area end -->
    </section>
@endsection


@push('styles')
    {{-- Your css style --}}
@endpush

@push('scripts')
    {{-- //script here --}}
@endpush

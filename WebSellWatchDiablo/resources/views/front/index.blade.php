@extends('front.layout.master')

@section('title', 'Diablo Watch')

@section('body')
    <!-- Slider Section Begin -->
    <section class="hero-section">
        <div class="hero-items owl-carousel">
            <div class="single-hero-items set-bg" data-setbg="front/img/hero-4.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5">
                            <span>OMEGA, MEN'S</span>
                            <h1 style="color: #ffffff;">Limit Edition</h1>
                            <p style="color: #afa8a8;">From the perspective of watch craftsmen, the words we design are carefully carved out by us bit by bit. Even though it takes a lot of time to manufacture, we still hope to create a beautiful and high-quality watch. We named it ARMOR, which represents perseverance and bravery, and also represents the hard work and determination of each of us to create high-quality watches. Which is by far the best mechanical watch we've released and I hope everyone to own it and elevate your style.</p>
                            <a href="#" class="primary-btn">Shop Now</a>
                        </div>
                    </div>
                    <div class="off-card">
                        <h2>Sale <span>49%</span></h2>
                    </div>
                </div>
            </div>
            <div class="single-hero-items set-bg" data-setbg="front/img/hero-5.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5">
                            <span>IWC, MEN'S</span>
                            <h1 style="color: #ffffff;">Limit Edition</h1>
                            <p style="color: #afa8a8;">From the perspective of watch craftsmen, the words we design are carefully carved out by us bit by bit. Even though it takes a lot of time to manufacture, we still hope to create a beautiful and high-quality watch. We named it ARMOR, which represents perseverance and bravery, and also represents the hard work and determination of each of us to create high-quality watches. Which is by far the best mechanical watch we've released and I hope everyone to own it and elevate your style.</p>
                            <a href="#" class="primary-btn">Shop Now</a>
                        </div>
                    </div>
                    <div class="off-card">
                        <h2>Sale <span>69%</span></h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Slider Section End -->
    <!-- Banner Section Begin -->
    <div class="banner-section spad">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-4">
                    <div class="single-banner">
                        <img src="front/img/banner-4.jpg" alt="">
                        <div class="inner-text">
                            <h4>Men's</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single-banner">
                        <img src="front/img/banner-5.jpg" alt="">
                        <div class="inner-text">
                            <h4>Women's</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single-banner">
                        <img src="front/img/banner-6.jpg" alt="">
                        <div class="inner-text">
                            <h4>Kid's</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner Section End -->
    <!-- Men's Banner Section Begin -->
    <section class="man-banner spad">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8">
                    <div class="filter-control">
                        <ul>
                            <li class="active item" data-tag="*" data-category="men">All</li>
                            <li class="item" data-tag=".Rolex" data-category="men" >Rolex</li>
                            <li class="item" data-tag=".Omega" data-category="men" >Omega</li>
                            <li class="item"data-tag=".Hublot" data-category="men" >Hublot</li>
                            <li class="item" data-tag=".IWC" data-category="men" >IWC</li>
                        </ul>
                    </div>
                    <div class="product-slider owl-carousel men">
                        @foreach($featuredProducts['men'] as $product)
                            @include('front.components.product-item')
                        @endforeach
                    </div>
                </div>
                <div class="col-lg-3 offset-lg-1">
                    <div class="product-large set-bg" data-setbg="front/img/products/man-large.jpg">
                        <h2>Men's</h2>
                        <a href="#">Discover More</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Men's Banner Section End -->
    <!-- Deal Of The Week Section Begin -->
    <section class="deal-of-week set-bg spad" data-setbg="front/img/deal.jpg">
        <div class="container">
            <div class="col-lg-6 text-center">
                <div class="section-title">
                    <h2 style="color:#ffffff">Deal Of The Week</h2>
                    <p style="color:#ffffff">This pre-owned Rolex Sea-Dweller 16600 watch is in excellent condition. During our quality control check, any necessary adjustments are made to ensure the watch is functioning as intended. The watch is Crown & Caliber Certified Authentic and comes backed by our 2-year warranty.</p>
                    <div style="color: #e70a0a" class="product-price">
                        $699.00
                    </div>
                </div>
                <div class="countdown-timer" id="countdown">
                    <div class="cd-item">
                        <span>39</span>
                        <p>Days</p>
                    </div>
                    <div class="cd-item">
                        <span>16</span>
                        <p>Hrs</p>
                    </div>
                    <div class="cd-item">
                        <span>50</span>
                        <p>Mins</p>
                    </div>
                    <div class="cd-item">
                        <span>10</span>
                        <p>Secs</p>
                    </div>

                </div>
                <a href="" class="primary-btn">Shop Now</a>
            </div>
        </div>
    </section>
    <!-- Deal Of The Week Section End -->
    <!-- Women's Banner Section Begin -->
    <section class="women-banner spad">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3">
                    <div class="product-large set-bg" data-setbg="front/img/products/women-large.jpg">
                        <h2>Women's</h2>
                        <a href="#">Discover More</a>
                    </div>
                </div>
                <div class="col-lg-8 offset-lg-1">
                    <div class="filter-control">
                        <ul>
                        <li class="active item" data-tag="*" data-category="women">All</li>
                            <li class="item" data-tag=".Rolex" data-category="women" >Rolex</li>
                            <li class="item" data-tag=".Omega" data-category="women" >Omega</li>
                            <li class="item"data-tag=".Hublot" data-category="women" >Hublot</li>
                            <li class="item" data-tag=".IWC" data-category="women" >IWC</li>
                        </ul>
                    </div>
                    <div class="product-slider owl-carousel women">
                        @foreach($featuredProducts['women'] as $product)
                            @include('front.components.product-item')
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Women's Banner Section End -->
    <!-- Instagram Section Begin -->
    <div class="instagram-photo">
        <div class="insta-item set-bg" data-setbg="front/img/insta-1.jpg">
            <div class="inside-text">
                <i class="ti-instagram"></i>
                <h5><a href="#">Diablo</a></h5>
            </div>
        </div>
        <div class="insta-item set-bg" data-setbg="front/img/insta-2.jpg">
            <div class="inside-text">
                <i class="ti-instagram"></i>
                <h5><a href="#">Diablo</a></h5>
            </div>
        </div>
        <div class="insta-item set-bg" data-setbg="front/img/insta-3.jpg">
            <div class="inside-text">
                <i class="ti-instagram"></i>
                <h5><a href="#">Diablo</a></h5>
            </div>
        </div>
        <div class="insta-item set-bg" data-setbg="front/img/insta-4.jpg">
            <div class="inside-text">
                <i class="ti-instagram"></i>
                <h5><a href="#">Diablo</a></h5>
            </div>
        </div>
        <div class="insta-item set-bg" data-setbg="front/img/insta-5.jpg">
            <div class="inside-text">
                <i class="ti-instagram"></i>
                <h5><a href="#">Diablo</a></h5>
            </div>
        </div>
        <div class="insta-item set-bg" data-setbg="front/img/insta-6.jpg">
            <div class="inside-text">
                <i class="ti-instagram"></i>
                <h5><a href="#">Diablo</a></h5>
            </div>
        </div>
    </div>
    <!-- Instagram Section End -->
    <!-- Latest Blog Section Begin -->
    <section class="latest-blog sqad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>From The Blog</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach($blogs as $blog)
                    <div class="col-lg-4 col-md-6">
                        <div class="single-latest-blog">
                            <img src="front/img/blog/{{ $blog->image }}" alt="">
                            <div class="latest-text">
                                <div class="tag-list">
                                    <div class="tag-item">
                                        <i class="fa fa-calendar-o"></i>
                                        {{ date('M d, Y', strtotime($blog->created_at)) }}
                                    </div>
                                    <div class="tag-item">
                                        <i class="fa fa-comment-o"></i>
                                        {{ count($blog->blogComments) }}
                                    </div>
                                </div>
                                <a href="">
                                    <h4>{{ $blog->title }}</h4>
                                </a>
                                <p>{{ $blog->subtitle }}</p>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
            <div class="benefit-items">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="single-benefit">
                            <div class="sb-icon">
                                <img src="front/img/icon-1.png" alt="">
                            </div>
                            <div class="sb-text">
                                <h6>Free Shipping</h6>
                                <p>For All Order Over 99$</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-benefit">
                            <div class="sb-icon">
                                <img src="front/img/icon-2.png" alt="">
                            </div>
                            <div class="sb-text">
                                <h6>Delivery On Time</h6>
                                <p>If Good Have Prolems</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-benefit">
                            <div class="sb-icon">
                                <img src="front/img/icon-3.png" alt="">
                            </div>
                            <div class="sb-text">
                                <h6>Secure Payment</h6>
                                <p>100% Secure Payment</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    </section>
    <!-- Latest Blog Section End -->
@endsection
    
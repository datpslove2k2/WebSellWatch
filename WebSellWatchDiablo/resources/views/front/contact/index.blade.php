@extends('front.layout.master')

@section('title', 'Contact')

@section('body')

    <!-- Breadcrumb (định hướng vị trí) Section Begin -->
    <div class="breadcrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <a href="./"><i class="fa fa-home"></i>Home</a>
                        <span>Contact</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section End-->
    <!-- Map Section Begin -->
    <div class="map spad">
        <div class="container">
            <div class="map-inner">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.1717368791215!2d108.21484861433652!3d16.056575544043074!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219a436a40fa3%3A0xc4260c7d346e0fff!2zMzU2IEhvw6BuZyBEaeG7h3UsIELDrG5oIFRodeG6rW4sIEjhuqNpIENow6J1LCDEkMOgIE7hurVuZyA1NTAwMDAsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1672397283885!5m2!1svi!2s" height="610" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
            <div class="icon">
                <i class="fa fa-map-marker"></i>
            </div>
        </div>
    </div>
    <!-- Map Section End -->
    <!-- Contact Section Begin -->
    <section class="contact-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    <div class="contact-title">
                        <h4>Contact Us</h4>
                        <p>Team Diablo Location In Da Nang City</p>
                    </div>
                    <div class="contact-widget">
                        <div class="cw-item">
                            <div class="ci-icon">
                                <i class="ti-location-pin"></i>
                            </div>
                            <div class="ci-text">
                                <span>Address:</span>
                                <p>K356/52 Hoang Dieu - Da Nang City</p>
                            </div>
                        </div>
                        <div class="cw-item">
                            <div class="ci-icon">
                                <i class="ti-mobile"></i>
                            </div>
                            <div class="ci-text">
                                <span>Phone:</span>
                                <p>+84 999.999.999</p>
                            </div>
                        </div>
                        <div class="cw-item">
                            <div class="ci-icon">
                                <i class="ti-email"></i>
                            </div>
                            <div class="ci-text">
                                <span>Email:</span>
                                <p>diablo@gmail.com</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 offset-lg-1">
                    <div class="contact-form">
                        <div class="leave-comment">
                            <h4>Leave A Comment</h4>
                            <p>Out staff will call back later and answer your question.</p>
                            <form action="#" class="comment-form">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <input type="text" placeholder="Your Name">
                                    </div>
                                    <div class="col-lg-6">
                                        <input type="text" placeholder="Your Email">
                                    </div>
                                    <div class="col-lg-12">
                                        <textarea placeholder="Your Message"></textarea>
                                        <button type="submit" class="site-btn">Send Message</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->
@endsection
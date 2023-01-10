<!DOCTYPE html>
<html lang="zxx">

<head>
    <base href="{{asset('/')}}">
    <meta charset="UTF-8">
    <meta name="description" content="codelean Template">
    <meta name="keywords" content="codelean, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title')</title>
    <link rel="shortcut icon" href="https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/aeb3135b436aa55373822c010763dd54.png" type="image/x-icon">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css">
    <link rel="stylesheet" href="front/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="front/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="front/css/themify-icons.css" type="text/css">
    <link rel="stylesheet" href="front/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="front/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="front/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="front/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="front/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="front/css/style.css" type="text/css">
</head>

<body>
    <!-- Start coding here -->
    <!-- Page Preloder-->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    <!-- Header Section Begin -->
    <header class="header-section">
        <div class="header-top">
            <div class="container">
                <div class="ht-left">
                    <div class="mail-service">
                        <i class="fa fa-envelope"></i>
                        diablo@gmail.com
                    </div>
                    <div class="phone-service">
                        <i class="fa fa-phone"></i>
                        +84 999 999 999
                    </div>
                </div>

                <div class="ht-right">
                    @if(Auth::check())
                        <a href="./account/logout" class="login-panel">
                            <i class="fa fa-user"></i>
                            {{ Auth::user()->name }} - Logout
                        </a>
                    @else 
                    <a href="./account/login" class="login-panel"> <i class="fa fa-user"></i>Login</a>
                    @endif
                    
                    <div class="top-social">
                        <a href="#"><i class="ti-facebook"></i></a>
                        <a href="#"><i class="ti-twitter-alt"></i></a>
                        <a href="#"><i class="ti-linkedin"></i></a>
                        <a href="#"><i class="ti-pinterest"></i></a>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="inner-header">
                <div class="row">
                    <div class="col-lg-2 col-md-2">
                        <div class="logo">
                            <a href="index.html">
                                <img src="front/img/diablo_logo.png"  height="40" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-7">
                        <form action="shop">
                            <div class="advanced-search">
                                <button type="button" class="category-btn">All Categories</button>
                                <div class="input-group">
                                    <input type="text" name="search" value="{{ request('search') }}"   placeholder="What do you need?">
                                    <button type="submit"><i class="ti-search"></i></button>
                                </div>
                            </div>
                        </form>
                            
                    </div>
                    <div class="col-lg-3 col-md-3 text-right">
                        <ul class="nav-right">
                            <li class="heart-icon">
                                <a href="#">
                                    <i class="icon_heart_alt"></i>
                                    <span>9</span>
                                </a>
                            </li>
                            <li class="cart-icon">
                                <a href="./cart">
                                    <i class="icon_bag_alt"></i>
                                    <span class="cart-count">{{ Cart::count() }}</span>
                                </a>
                                <div class="cart-hover">
                                    <div class="select-items">
                                        <table>
                                            <tbody>
                                                @foreach(Cart::content() as $cart)
                                                    <tr data-rowId="{{ $cart->rowId }}">
                                                        <td class="si-pic"><img style="height: 70px;" src="front/img/products/{{ $cart->options->images[0]->path }}"></td>
                                                        <td class="si-text">
                                                            <div class="product-selected">
                                                                <p>${{ $cart->price }} x {{ $cart->qty }}</p>
                                                                <h6>{{ $cart->name }}</h6>
                                                            </div>
                                                        </td>
                                                        <td class="si-close">
                                                            <i onclick="removeCart('{{ $cart->rowId }}')"class="ti-close"></i>
                                                        </td>
                                                    </tr>
                                                @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="select-total">
                                        <span>total:</span>
                                        <h5>${{ Cart::total() }}</h5>
                                    </div>
                                    <div class="select-button">
                                        <a href="./cart" class="primary-btn view-card">VIEW CARD</a>
                                        <a href="./checkout" class="primary-btn checkout-btn">CHECK OUT</a>
                                    </div>
                                </div>

                            </li>
                            <li class="cart-price">${{ Cart::total() }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="nav-item">
            <div class="container">
                <div class="nav-depart">
                    <div class="depart-btn">
                        <i class="ti-menu"></i>
                        <span>All Departments</span>
                        <ul class="depart-hover">
                            <li class="active"><a href="#">Cartier Watch</a></li>
                            <li><a href="./shop/category/men">Men Watch</a></li>
                            <li><a href="./shop/category/women">Women Watch</a></li>
                            <li><a href="./shop/category/kid">Kid Watch</a></li>
                            <li><a href="#">Omega Watch</a></li>
                            <li><a href="#">Rolex Watch</a></li>
                            <li><a href="#">Tudor Watch</a></li>
                            <li><a href="#">Baneral Watch</a></li>
                        </ul>
                    </div>
                </div>
                <nav class="nav-menu mobile-menu">
                    <ul>
                        <li class="{{ (request()->segment(1) == '') ? 'active' : '' }}"><a href="./">Home</a></li>
                        <li class="{{ (request()->segment(1) == 'shop') ? 'active' : '' }}"><a href="./shop">Shop</a></li>
                        <li><a href="">Category</a>
                            <ul class="dropdown">
                                <li><a href="">Men's</a></li>
                                <li><a href="">Women's</a></li>
                                <li><a href="">Kid's</a></li>
                            </ul>
                        </li>
                        <li><a href="./blog">Blog</a></li>
                        <li><a href="./contact">Contact</a></li>
                        <li><a href="">Pages</a>
                            <ul class="dropdown">
                                <li><a href="./account/my-order">My Order</a></li>
                                <li><a href="./blog">Blog</a></li>
                                <li><a href="./cart">Shopping Cart</a></li>
                                <li><a href="./checkout">Checkout</a></li>
                                <li><a href="./faq">Faq</a></li>
                                <li><a href="./account/register">Register</a></li>
                                <li><a href="./account/login">Login</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
                <div id="mobile-menu-wrap"></div>
            </div>
        </div>
    </header>
    <!-- Header Section End -->
    <!-- Body Here  -->
    @yield('body')



    <!-- Footer Section Begin -->
    <footer class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="footer-left">
                        <div class="footer-logo">
                            <a href="index.html">
                                <img src="front/img/diablo_logo.png" width="200" height="50" alt="">
                            </a>
                        </div>
                        <ul>
                            <li>Tiên Phước - Quảng Nam</li>
                            <li>Phone: +84 336.586.302 </li>
                            <li>Email: diablo@gmail.com</li>
                        </ul>
                        <div class="footer-social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 offset-lg-1">
                    <div class="footer-widget">
                        <h5>Information</h5>
                        <ul>
                            <li><a href="">About Us</a></li>
                            <li><a href="">Checkout</a></li>
                            <li><a href="">Contact</a></li>
                            <li><a href="">Service</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="footer-widget">
                        <h5>My Account</h5>
                        <ul>
                            <li><a href="">Luxury Watch</a></li>
                            <li><a href="">Contact</a></li>
                            <li><a href="">Shopping Cart</a></li>
                            <li><a href="">Watch</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="newslatter-item">
                        <h5>Join Our Newsletter Now</h5>
                        <p>Get E-mail updates about our latest shop and special offers.</p>
                        <form action="#" class="subscribe-form">
                            <input type="text" name="" id="" placeholder="Enter Your Mail">
                            <button type="button">Subscribe</button>
                        </form>
                    </div>
                </div>

            </div>
        </div>
        <div class="copyright-reserved">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="copyright-text">
                            Copyright © 2022 All Rights Reserved by Diablo Team
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->

    <script src="front/js/jquery-3.3.1.min.js"></script>
    <script src="front/js/bootstrap.min.js"></script>
    <script src="front/js/jquery-ui.min.js"></script>
    <script src="front/js/jquery.countdown.min.js"></script>
    <script src="front/js/jquery.nice-select.min.js"></script>
    <script src="front/js/jquery.zoom.min.js"></script>
    <script src="front/js/jquery.dd.min.js"></script>
    <script src="front/js/jquery.slicknav.js"></script>
    <script src="front/js/owl.carousel.min.js"></script>
    <script src="front/js/owlcarousel2-filter.min.js"></script>

    <script src="front/js/main.js"></script>
</body>

</html>
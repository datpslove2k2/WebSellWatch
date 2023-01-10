<?php

namespace App\Http\Controllers\Front;

use App\Service\Product\ProductServiceInterface;
use App\Http\Controllers\Controller;
use App\Service\Blog\BlogServiceInterface;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    private $productService;
    private $blogService;

    public function __construct(ProductServiceInterface $productService, BlogServiceInterface $blogService)
    {
        $this->productService = $productService;
        $this->blogService = $blogService;
    }

    public function index() {
        $featuredProducts = $this->productService->getFeaturedProducts();
        $blogs = $this->blogService->getLatestBlogs();
        return view('front.index', compact('featuredProducts', 'blogs'));
    }
}

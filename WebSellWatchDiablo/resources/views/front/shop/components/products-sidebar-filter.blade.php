<form action="{{ request()->segment(2) == 'products' ? 'shop' : '' }}">
    <div class="filter-widget">
        <h4 class="fw-title">Categories</h4>
        <ul class="filter-catagories">
            @foreach($categories as $category)
                <li><a href="shop/category/{{ $category->name }}">{{ $category->name }}</a></li>
            @endforeach
        </ul>
    </div>
    <div class="filter-widget">
        <h4 class="fw-title">Brand</h4>
        <div class="fw-brand-check">
            @foreach($brands as $brand)
                <div class="bc-item">
                    <label for="bc-{{ $brand->id }}">
                        {{ $brand->name }}
                        <input type="checkbox" 
                            {{ (request( "brand" )[$brand->id] ?? '' ) == 'on' ? 'checked' : ''}}
                            id="bc-{{ $brand->id }}"
                            name="brand[{{ $brand->id }}]"
                            onchange="this.form.submit();" >
                        <span class="checkmark"></span>
                    </label>
                </div>
            @endforeach
        </div>
    </div>
    <div class="filter-widget">
        <h4 class="fw-title">Price</h4>
        <div class="filter-range-wrap">
            <div class="range-slider">
                <div class="price-input">
                    <input type="text" id="minamount" name="price_min" >
                    <input type="text" id="maxamount" name="price_max" >
                </div>
            </div>
            <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget-content"
                data-min="1000" data-max="100000"
                data-min-value=" {{ str_replace('$', '', request('price_min')) }} "
                data-max-value=" {{ str_replace('$', '', request('price_max')) }} ">
                <div class="ui-slider-range ui-corner-all ui-widget-header"></div>
                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
            </div>
        </div>
        <button type="submit" class="filter-btn">Filter</button>
    </div>
    <div class="filter-widget">
        <h4 class="fw-title">Color</h4>
        <div class="fw-color-choose">
            <div class="cs-item">
                <input type="radio" id="cs-black">
                <label class="cs-black" for="cs-black">Black</label>
            </div>
            <div class="cs-item">
                <input type="radio" id="cs-violet">
                <label class="cs-violet" for="cs-violet">Violet</label>
            </div>
            <div class="cs-item">
                <input type="radio" id="cs-blue">
                <label class="cs-blue" for="cs-blue">Blue</label>
            </div>
            <div class="cs-item">
                <input type="radio" id="cs-yellow">
                <label class="cs-yellow" for="cs-yellow">Yellow</label>
            </div>
            <div class="cs-item">
                <input type="radio" id="cs-red">
                <label class="cs-red" for="cs-red">Red</label>
            </div>
            <div class="cs-item">
                <input type="radio" id="cs-green">
                <label class="cs-green" for="cs-green">Green</label>
            </div>
        </div>
    </div>
    <div class="filter-widget">
        <h4 class="fw-title">Tags</h4>
        <div class="fw-tags">
            <a href="#">Rolex</a>
            <a href="#">Omega</a>
            <a href="#">Hublot</a>
            <a href="#">IWC</a>
        </div>
    </div>
</form>
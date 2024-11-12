<?php echo $header; ?>
<script src="catalog/view/javascript/jquery.zoom.js" type="text/javascript"></script>

<style>
.collapsible {
margin-top:40px;
color: Black;
cursor: pointer;
display: flex;
justify-content:center;
width: 100%;
border: none;
outline: none;
font-size: 25px;
}

.content {
padding: 0 18px;
display: none;
overflow: hidden;
margin-bottom:40px;
}
  .swiper {
        width: 100%;
        height: 100%;
      }
      .new-font { font-family: 'brandon_grotesquemedium!important'; }

      .swiper-slide {
        text-align: center;
        font-size: 18px;
        background: #fff;

        /* Center slide text vertically */
        display: -webkit-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        align-items: start;
      }

      .swiper-slide img {
        /* display: block;
        width: 100%;
        height: 100%;
        object-fit: cover; */
      }

    
      .swiper {
        width: 100%;
        height: 300px;
        margin-left: auto;
        margin-right: auto;
      }

      .swiper-slide {
        background-size: cover;
        background-position: center;
      }

      .mySwiper2 {
        height: 40%;
        width: 100%;
      }

      .mySwiper {
        height: 20%;
        box-sizing: border-box;
        padding: 10px 0;
      }

      .mySwiper .swiper-slide {
        width: 25%;
        height: 100%;
        opacity: 0.4;
      }

      .mySwiper .swiper-slide-thumb-active {
        opacity: 1;
      }

      .swiper-slide img {
        display: block;
        width: 100%;
        height: 400px;
        object-fit: cover;
      }
 
  #size
  {
    
max-width:100%;

  }
  #size-2
  {

max-width:100%;

  }
  #size-3
  {
 
max-width:100%;

  }
  #size-4
  {
 
max-width:100%;

  }
  #size-5
  {
    height:270px;
max-width:100%;
background-image: url("assets/img/Home Page Images/P_Banner-5.jpg");
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  }
  .selectWrapper{
  border-radius:10px;
  display:inline-block;
  overflow:hidden;
  background:#cccccc;
  border:1px solid #cccccc;
}
.selectBox{
  width:180px;
  height:40px;
  border:5px;
  outline:none;
}
  
  .panel-default {
    border: none;
    box-shadow: none;
    border-top: thin solid #f1f1f1;
    border-radius: 0
  }

  .panel-body {
    border: none !important;
    padding: 10px;
    margin-top: -15px !important;
    text-align: justify
  }

  .panel-default .panel-heading {
    padding: 0;
    border-radius: 0;
    color: #212121;

    border-color: #ccc;
    background: none;
    border-left: none;
    border-right: none;

  }
.sizing
{
  max-width:100%;
}
  .panel-title {
    font-size: 14px;
  }

  .panel-body {
    padding: 0px;
    margin-top: 15px;
    margin-bottom: 15px;
  }

  .panel-body ul {
    margin-top: 10px;

  }

  .panel-title a {
    display: block;
    padding: 15px;
    text-decoration: none;
    color: #333;
  }

  .more-less {
    float: right;
  }

  .glyphicon {
    font-size: 10px;
    color: #666;
    font-weight: 100;
  }

  .btn-round {
    padding: 0px;
  }

  .zoom {
    cursor: zoom-in;
    z-index: 9999999;
  }


  .file_input {
    display: none;
    border: thin solid #ccc;
    width: 120px;
    margin: 5px;
    padding: 7.5px 5px;
    text-align: center;
    float: left;
  }


  @media screen and (max-width:650px) {
    .hidden-mobile {
      display: none;
    }

    #button-cart {
      margin-bottom: 10px;
    }

    .desktop_slider {
      display: none !important;
    }

    .slider_mob,
    .slider-mob-box {
      display: inline !important;
    }



    .pro-nav {
      margin-top: -10px;
    }

    .slider_mob {
      margin-top: -45px !important;
    }

    .product-details-des {
      margin-top: 18px;
    }

    .product-details-des .pro-review {
      width: 100%;
    }

    .slick-slider .slick-list,
    .slick-slider .slick-track {
      transform: none !important;
    }

    .slick-dots {
      margin-left: -40px !important;
    }
  }

  @media screen and (min-width:651px) {
    .desktop_slider {
      display: inline !important;
    }

    .slider_mob,
    .slider-mob-box {
      display: none !important;
    }

    .btn-primary {
      width: 250px;
      float: left;
      margin-left: 10px;
    }

    #button-cart {
      margin-left: 0px;
    }

    select,
    input {
      max-width: 400px;
    }
  }

  .imgth {
    max-width: 100px;
  }

  .btn-wishilist {
    width: 40px;
    height: 40px;
    margin-top: -2px;
  }

  .btn-cart2 {
    width: 35px;
    height: 35px;
    margin-top: 2px;
    line-height: 2.8;
  }

  #button-customization {
    margin-top: 0px;
  }
</style>
<!-- breadcrumb area start -->
<div style="background:none;" class="breadcrumb-area hidden-phone">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div style="padding:10px 0px" class="breadcrumb-wrap">
          <nav aria-label="breadcrumb">
            <ul class="breadcrumb">
              <?php foreach ($breadcrumbs as $breadcrumb) { ?>

                <li class="breadcrumb-item"><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
              <?php } ?>
            </ul>

          </nav>
        </div>
      </div>
    </div>
  </div>
</div>

<style>
  .addthis_button_facebook_like {
    margin-left: -15px;
  }

  .offer_block {
    padding: 20px 40px 20px 15px;
    background-color: #DFF2FE;
    color: #333;
    width: 100%;
    min-width: 200px;
    font-size: 14px;
    text-transform: uppercase;
  }

  .ob2 {
    background-color: #E6FDF8;
  }

  .product-details-des .like-icon a {
    margin-right: 0px;
  }

  @media screen and (max-width:650px) {
    .hidden-phone {
      display: none;
    }

    .row,
    .col-sm-12 {
      padding: 0px;
    }

    .canvas-container-outer {
      width: 300px !important;
    }
  }

  .fa-stack {
    width: 1.2em;
  }

  .ingredient-sec ul.row {
    margin-left: -30px;
    margin-right: -30px;
  }

  .ingredient-sec ul {
    position: relative;
    margin-bottom: 0;
  }

  .ingredient-sec ul li:nth-child(1),
  .ingredient-sec ul li:nth-child(2),
  .ingredient-sec ul li:nth-child(3) {
    border-top: 0;
  }

  .ingredient-sec ul li:first-child,
  .ingredient-sec ul li:nth-child(4),
  .ingredient-sec ul li:nth-child(7) {
    border-left: 0;
  }

  .ingredient-sec li {
    padding: 0 30px;
    position: relative;
    padding-bottom: 30px;
    border-top: 1px solid #f1f1f1;
    border-right: 1px solid #f1f1f1;
  }

  li.col-md-4 h4 {
    text-align: center;
    margin-bottom: 20px;
    margin-top: 30px;
  }

  .ingredient-sec ul li:nth-child(3),
  .ingredient-sec ul li:nth-child(6),
  .ingredient-sec ul li:nth-child(9) {
    border-right: 0;
  }

  .card {
    border: none;
  }

  .card-header {
    background: none;
    border-radius: 0px;
  }

  button.btn-link {
    font-size: 18px;
    color: #333;
    line-height: 1;
    letter-spacing: 1px;
    text-transform: uppercase;
    font-family: "driffter";
    color: #654936;
    font-weight: 700;
    margin: 0;
    line-height: 1.2;
    text-transform: uppercase;
    letter-spacing: 1px;

  }

  ul.ProductMeta__Description li {
    position: relative;
    padding-left: 25px;
  }

  ul.ProductMeta__Description li:before {
    position: absolute;
    content: '';
    background-image: url(https://cdn.shopify.com/s/files/1/0058/7779/2832/files/np_tick_1308418_000000.svg?v=1625723306);
    background-repeat: no-repeat;
    height: 25px;
    width: 14px;
    top: 12px;
    left: 0;
  }

  .tab_options {
    border: thin solid #ccc;
    letter-spacing: 1.2px;
    text-transform: uppercase;
    font-size: 11.5px;
    margin-bottom: 10px;
    display: inline-block;
    cursor: pointer;
    padding: 2.5px 0px;
    width: 100px;
    text-align: center;
    line-height: 35px;
  }

  .icon-box {
    max-width: 90px;
    text-align: center;
  }

  .icon-box p {
    font-size: 12px;
  }

  .icon-box img {
    max-width: 50px;
  }

  .price-box {
    padding-top: 0px;
    width: 250px;
    float: right;
    margin-top: -50px;
    text-align: right;
  }
</style>
<!-- breadcrumb area end -->
<div class="container new-font">

  <div class="row">
    <div id="content" class="col-sm-12 new-font">
      <div class="row">
        <div class="col-lg-6 desktop_slider new-font">
        
  <div
  style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff"
  class="swiper mySwiper2"
>
  <div class="swiper-wrapper">
    <div class="swiper-slide"  >
      <img src="assets/img/Home Page Images/Onionoil-3.jpg" style = "max-width:100%;" >
    </div>
    <div class="swiper-slide" >
      <img src="assets/img/Home Page Images/Onionoil-2.jpg" />
    </div>
    <div class="swiper-slide" >
      <img src="assets/img/Home Page Images/Onionoil-1.jpg" />
    </div>
    <div class="swiper-slide" >
      <img src="assets/img/Home Page Images/Onionoil-4.jpg" />
    </div>
  </div>
  <div class="swiper-button-next"></div>
  <div class="swiper-button-prev"></div>
</div>


<div thumbsSlider="" class="swiper mySwiper">
  <div class="swiper-wrapper">
    <div class="swiper-slide sizing" style="width:150px;">
      <img src="assets/img/Home Page Images/Onionoil-3.jpg" style="max-height:100%;">
    </div>
    <div class="swiper-slide" style="width:150px;">
      <img src="assets/img/Home Page Images/Onionoil-2.jpg" style="max-height:100%;"  >
    </div>
    <div class="swiper-slide" style="width:150px;">
      <img src="assets/img/Home Page Images/Onionoil-1.jpg" style="max-height:100%;"  >
    </div>
    <div class="swiper-slide" style="width:150px;">
      <img src="assets/img/Home Page Images/Onionoil-4.jpg" style="max-height:100%;" >
    </div>
  </div>
</div>


        </div>

        <div class="col-lg-5 slider_mob">
          <div class="product-large-slider new-font">
            <?php if ($thumb) { ?>
              <div class="pro-large-img img-zoom">
                <img src="<?php echo $thumb; ?>" alt="product-details" />
              </div>
            <?php } ?>
            <?php if ($images) { ?>
              <?php foreach ($images as $image) { ?>
                <div class="pro-large-img img-zoom">
                  <img src="<?php echo $image['popup']; ?>" alt="product-details" />
                </div>
              <?php } ?>
            <?php } ?>
          </div>
          <div class="pro-nav slick-row-10 slick-arrow-style">
            <?php if ($thumb) { ?>
              <div class="pro-nav-thumb">
                <img src="<?php echo $thumb; ?>" alt="product-details" />
              </div>
            <?php } ?>
            <?php if ($images) { ?>
              <?php foreach ($images as $image) { ?>
                <div class="pro-nav-thumb">
                  <img src="<?php echo $image['popup']; ?>" alt="product-details" />
                </div>
              <?php } ?>
            <?php } ?>


          </div>
        </div>


        <div class="col-lg-5 new-font">


          <h3 class="product-name" style="color:black;"><?php echo $heading_title; ?></h3>
          <!-- <div class="ratings d-flex">

            <?php for ($i = 1; $i <= 5; $i++) { ?>
              <?php if ($rating < $i) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } ?>
            <?php } ?>


            <div style="margin-top: 2px;" class="pro-review">
              <a style="color: #333;" href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;">
                <?php echo $reviews; ?>
              </a>
            </div>
          </div> -->
          <div style="padding-top: 0px; " class="price-box new-font">
            <?php if ($price) { ?>

              <?php if (!$special) { ?>

               

              <?php } else { ?>

                <h6 class="price-old"> <del><?php echo $price; ?></del></h6>
                <h3 class="price-regular"><?php echo $special; ?></h3>

              <?php } ?>
              <?php if ($tax) { ?>
                <li><?php echo $text_tax; ?> <?php echo $tax; ?></li>
              <?php } ?>
              <?php if ($points) { ?>
                <li><?php echo $text_points; ?> <?php echo $points; ?></li>
              <?php } ?>
              <?php if ($discounts) { ?>
                <li>
                  <hr>
                </li>
                <?php foreach ($discounts as $discount) { ?>
                  <li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?>
                  </li>
                <?php } ?>
              <?php } ?>

            <?php } ?>
          </div>

          <p style="color:black;" class="new-font">Our Onion, Lavender, and Black seed hair oil is made with 30+ natural and organic ingredients to prevent hair fall and promote new hair growth. It is enriched with the goodness of Brahmi, Bhirngraj, Amla, Cress Seeds, Nettle leaves, Dandelion leaves, Argan Oil, Jojoba Oil, Rosemary Oil, Moringa Oil, Vitamin E Oil, Cedarwood Oil, and many more.erit!

          </p>
          <h3 class="price-regular new-font d-flex justify-content-cenetr align-items-cenetr" style="  text-transform: capitalize;color:Black;">Price: <?php echo $price; ?></h3>
          <ul class="ProductMeta__Description new-font">
            <li>Reduces hair fall</li>
            <li>Promotes new hair growth</li>
            <li>Adds volume to hair</li>
            <li>Get rid of premature greying
</li>
<li>Remove split ends</li>
          </ul>






          <div id="product">
            
          <br />

            <?php if ($options) { ?>

              <?php foreach ($options as $option) { ?>
                <?php if ($option['type'] == 'select') { ?>
                  <div style="padding:0px;" class="col-xs-12 select-box">

                    <?php foreach ($option['product_option_value'] as $option_value) { ?>
                      <span data-sign="<?php echo $option_value['price_prefix']; ?>" data-money="<?php echo $option_value['price']; ?>" data-image="<?php echo $option_value['option_image']; ?>" data-val="<?php echo $option_value['product_option_value_id']; ?>" class="tab_options"><?php echo $option_value['name']; ?> </span>&nbsp;&nbsp;&nbsp;
                    <?php } ?>
                  </div>
                <?php } ?>
              <?php } ?>


              <?php foreach ($options as $option) { ?>
                <?php if ($option['type'] == 'select') { ?>
                  <div style="display:none" class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                    <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                      <option value=""><?php echo $text_select; ?></option>
                      <?php foreach ($option['product_option_value'] as $option_value) { ?>
                        <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                          <?php if ($option_value['price']) { ?>
                            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                          <?php } ?>
                        </option>
                      <?php } ?>
                    </select>
                  </div>
                <?php } ?>
                <?php if ($option['type'] == 'radio') { ?>
                  <div class="radio_input form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <label class="control-label"><?php echo $option['name']; ?></label>
                    <div id="input-option<?php echo $option['product_option_id']; ?>">
                      <?php foreach ($option['product_option_value'] as $option_value) { ?>
                        <div class="radio">
                          <label>
                            <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                            <?php if ($option_value['image']) { ?>
                              <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" />
                            <?php } ?>
                            <?php echo $option_value['name']; ?>
                            <?php if ($option_value['price']) { ?>
                              (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                            <?php } ?>
                          </label>
                        </div>
                      <?php } ?>
                    </div>
                  </div>
                <?php } ?>
                <?php if ($option['type'] == 'checkbox') { ?>
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <label class="control-label"><?php echo $option['name']; ?></label>
                    <div id="input-option<?php echo $option['product_option_id']; ?>">
                      <?php foreach ($option['product_option_value'] as $option_value) { ?>
                        <div class="checkbox">
                          <label>
                            <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                            <?php if ($option_value['image']) { ?>
                              <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" />
                            <?php } ?>
                            <?php echo $option_value['name']; ?>
                            <?php if ($option_value['price']) { ?>
                              (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                            <?php } ?>
                          </label>
                        </div>
                      <?php } ?>
                    </div>
                  </div>
                <?php } ?>
                <?php if ($option['type'] == 'text') { ?>
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                    <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                  </div>
                <?php } ?>
                <?php if ($option['type'] == 'textarea') { ?>
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                    <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
                  </div>
                <?php } ?>
                <?php if ($option['type'] == 'file') { ?>
                  <div class="file_input form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <img class="filePreview" style="display:none; max-width: 50px; margin:auto">

                    <label class="control-label"><?php echo $option['name']; ?></label>
                    <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default upload-btn btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
                    <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
                  </div>

                <?php } ?>
                <?php if ($option['type'] == 'date') { ?>
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                    <div class="input-group date">
                      <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                      <span class="input-group-btn">
                        <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                      </span></div>
                  </div>
                <?php } ?>
                <?php if ($option['type'] == 'datetime') { ?>
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                    <div class="input-group datetime">
                      <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                      <span class="input-group-btn">
                        <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                      </span></div>
                  </div>
                <?php } ?>
                <?php if ($option['type'] == 'time') { ?>
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                    <div class="input-group time">
                      <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                      <span class="input-group-btn">
                        <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                      </span></div>
                  </div>
                <?php } ?>
              <?php } ?>

            <?php } ?>

            <div style="display: flex; width:100%; margin-bottom:0px; margin-left:30px;margin-right:30px; pr-4" class="form-group">
            <div class="selectWrapper">
    <select class="selectBox"  style="max-width:80%;">
    <option value="" disabled="" selected="" hidden="">Select size</option>
    <option style="border-style:solid;border-radius:30px;"> 100ml</option>
    <option style="border-style:solid;border-radius:30px;"> 200ml</option>

  </select>
  </div><div class="row justify-content-center" id="counter-btn" style="padding: 0px; padding-left:30px; margin-top:-12px; max-width:230px">
                <div style="cursor: pointer; height: 40px; text-align:center;   border:thin solid #ccc" class="col-sm-2 col-4 minus-icon">
                  <li style=" font-size:12px; margin:auto; line-height:40px; text-align:center" id="less_quantity" class="fa fa-minus"></li>
                </div>
                <div style=" padding-left:0px; height: 40px; padding-right:0px;" class="col-sm-3 col-4">
                  <input name="quantity" type="text" style="box-shadow:none; text-align:center; border-radius:0px; width:100%; height: 40px; background-color: transparent; cursor:default" id="input-quantity" value="1" class="form-control"></div>
                <div style=" cursor: pointer;  height: 40px; text-align:center; border:thin solid #ccc" class="col-sm-2 col-4 minus-icon">
                  <li style="font-size:12px; height: 50px; line-height:40px; text-align:center" id="add_quantity" class="fa fa-plus"></li>
                </div>
              </div>

              <input type="hidden" name="product_id" value="71">
               
            </div>
              <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
<div class="row">
              <button  type="button" style="margin-top: 30px; color:white; margin-left: 40px;background:black!important; padding:20px 45px;
    margin-top: 30px;" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn col  "><?php echo $button_cart; ?></button>
            </div>
           
            </div>
    
            <button type="button" class="collapsible" style="margin-top:20px;" >Ingredients</button>
<div class="content  " style="margin-bottom:300px;" >
  <p>Onion, Black seeds, Cress Seeds, Nettle leaves, Dandelion leaves, Saw Palmetto, Miracle leaves, Curry leaves, Brahmi, Bhringraj, Ashwagandha, Amla, Tulsi, Green tea, Fenugreek, Licorice, Hibiscus, Rose Petals, Lavender Oil, Rosemary Oil, Moringa Oil, Argan Oil, Jojoba Oil, Vitamin E Oil, Cedarwood Oil, Rice Bran Oil, Castor Oil, Coconut Oil, Olive Oil, Sunflower Oil, Sesame Oil</p>
</div>

<script>
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.display === "block") {
      content.style.display = "none";
    } else {
      content.style.display = "block";
    }
  });
}
</script>
            <div style="padding: 0px;" class="col-sm-12 col-12 ingredient">


              <div style="text-align: left" class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">


              </div><!-- panel-group -->
            </div>
            <?php if ($minimum > 1) { ?>
              <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
            <?php } ?>
          </div>

        </div>
      </div>






    </div>

  </div>
</div>
<br />



<!-- Swiper JS -->
<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

<!-- Initialize Swiper -->
<script>
  var swiper = new Swiper(".mySwiper", {
    spaceBetween: 10,
    slidesPerView: 4,
    freeMode: true,
    watchSlidesProgress: true,
  });
  var swiper2 = new Swiper(".mySwiper2", {
    spaceBetween: 10,
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
    thumbs: {
      swiper: swiper,
    },
  });
</script>
<!--Ingrdenint start -->
<!-- <div style="background: #Fff; padding:30px 0px; margin-top:30px">
  <div class="container">
    <div class="row">
      <div class="col-sm-6">
        <div class="accordion" id="accordionExample">
          <div class="card">
            <div class="card-header" id="headingOne">
              <h4 class="mb-0">
                <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                  About Product
                </button>
              </h4>
            </div>

            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
              <div class="card-body">
                <p><?php print_r(strip_tags($description, '<br><hr><br /><hr /><b><p>')); ?></p>
              </div>
            </div>
          </div>
          <div class="card">
            <div class="card-header" id="headingTwo">
              <h4 class="mb-0">
                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                  Reuse Packaging
                </button>
              </h4>
            </div>
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
              <div class="card-body">
                <?php $a = (string)$keywords;
                echo strip_tags(html_entity_decode(htmlspecialchars_decode($a)), '<br><br /><ul><li>'); ?>
              </div>
            </div>
          </div>
          <div class="card">
            <div class="card-header" id="headingThree">
              <h5 class="mb-0">
                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                  Benifits
                </button>
              </h5>
            </div>
            <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
              <div class="card-body">
                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-sm-6">
        <h3>How To Use?</h3>
        <br />
        <p>
          <b>Step 1:</b><br />
          Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cupiditate, deleniti!
        </p>
        <hr />
        <p>
          <b>Step 2:</b><br />
          Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cupiditate, deleniti!
        </p>
        <hr />
        <p>
          <b>Step 3:</b><br />
          Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cupiditate, deleniti!
        </p>
        <hr />
      </div>
    </div>



  </div>
</div> -->




<!-- product reviews start -->
<!-- <div style="background: #fff; padding:30px 0px">
  <div class="container">
    <br />
    <div class="row">
      <div class="col-sm-12 text-center">
        <h3>What Poeple Say</h2>
          <p>Real customers, Real Reviews.</p>
      </div>
    </div>

    <br />
    <div class="row ">

      <div class="col-sm-12">
        <div id="review"></div>
        <form style="display: none;" class="form-horizontal" id="form-review">


          <?php if ($review_guest) { ?>
            <div class="form-group required">
              <div class="col-sm-12">
                <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                <input type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" class="form-control" />
              </div>
            </div>
            <div class="form-group required">
              <div class="col-sm-12">
                <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>

              </div>
            </div>
            <div class="form-group required">
              <div class="col-sm-12">
                <label class="control-label"><?php echo $entry_rating; ?></label>
                &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                <input type="radio" name="rating" value="1" />
                &nbsp;
                <input type="radio" name="rating" value="2" />
                &nbsp;
                <input type="radio" name="rating" value="3" />
                &nbsp;
                <input type="radio" name="rating" value="4" />
                &nbsp;
                <input type="radio" name="rating" value="5" />
                &nbsp;<?php echo $entry_good; ?></div>
            </div>
            <?php echo $captcha; ?>
            <div class="buttons clearfix">
              <div class="pull-right">
                <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary">Submit</button>
              </div>
            </div>
          <?php } else { ?>
            <?php echo $text_login; ?>
          <?php } ?>
        </form>
        <br />
        <div style="width: 100%;" class="row">
          <div class="col-sm-12 text-center">
            <button style="float: none;" id="review-open" class="btn btn-primary">Write A Review</button>
          </div>
        </div>

      </div>
    </div>

  </div>
</div> -->

<!--Related product start -->

<!-- <div class="container">
  <?php if ($products) { ?>
    <br /><br />
    <div class="row">
      <div class="col-sm-12 text-center">
        <h3><?php echo $text_related; ?></h3>
      </div>

    </div>

    <br /><br />

    <div class="row">
      <?php $i = 0; ?>
      <?php foreach ($products as $product) { ?>

        <div class="col-sm-3 col-6 product-boxes">
          <!-- product grid start -->
          <div class="product-item">
            <figure class="product-thumb">
              <a href="<?php print_r($product['href']); ?>">
                <img style="z-index:99999999" src="<?php print_r($product['thumb']); ?>" class="img-responsive">
              </a>

            </figure>
            <p class="description" style="display: none;">
              <?php print_r($product['description']); ?>
              <input type="hidden" class="pid" value="<?php echo $product['product_id']; ?>">
            </p>
            <div class="product-caption text-center">
              <h6 class="product-name">
                <a href="<?php print_r($product['href']); ?>">
                  <?php print_r($product['name']); ?>
                </a>
              </h6>

              <?php if ($product['price']) { ?>
                <?php if ($product['special']) { ?>
                  <div class="price-box">
                    <span class="price-regular"><?php echo $product['special']; ?></span>
                    <span class="price-old"><del><?php echo $product['price']; ?></del></span>
                  </div>
                <?php } else { ?>
                  <div class="price-box">
                    <span class="price-regular">
                      <?php echo preg_replace('~\.0+$~', '', $product['price']); ?>
                    </span>
                  </div>
                <?php } ?>
              <?php } ?>



            </div>

          </div>
          <!-- product grid end -->
        </div>

      <?php } ?>
    </div> <br /><br /> <br /><br />
  <?php } ?>
</div> -->

<!-- banner-1 -->
<div class="container-fluid" style="margin-top:-190px;">
  <div class="row">
    <div class="col-12">
     <div id="size">
     <img src="assets/img/Home Page Images/P_Banner.jpg" alt="" style="max-width:100%">
     </div>
    </div>
  </div>
</div>
<!-- banner-1-end -->
<!-- banner-2 -->
<div class="container-fluid">
  <div class="row">
    <div class="col-12">
     <div id="size-2">
     <img src="assets/img/Home Page Images/P_Banner-2.jpg" alt="" style="max-width:100%">
     </div>
    </div>
  </div>
</div>
<!-- banner-2-end -->
<!-- banner-3 -->
<div class="container-fluid">
  <div class="row">
    <div class="col-12">
     <div id="size-3">
     <img src="assets/img/Home Page Images/P_Banner-3.jpg" alt="" style="max-width:100%">
     </div>
    </div>
  </div>
</div>
<!-- banner-3-end -->
<!-- banner-4 -->
<div class="container-fluid">
  <div class="row">
    <div class="col-12">
     <div id="size-4">
    <img src="assets/img/Home Page Images/P_Banner-4.jpg" alt="">
     </div>
    </div>
  </div>
</div>
<!-- banner-4-end -->
<div class="container-fluid mb-2">
  <div class="row">
    <div class="col-12">
     <div id="size-5">
    
     </div>
    </div>
  </div>
</div>
<script type="text/javascript">
  $("#review-open").click(function() {
    $("#form-review").fadeToggle();
  })

  $("body").on("change", "input[type='radio']", function() {
    var x = $.trim($("input[type='radio']:checked").parent().text());
    if (x == "Upload Now") {
      $(".file_input").fadeIn();
    } else {
      $(".file_input").fadeOut();
    }

  });

  $('select[name=\'recurring_id\'], input[name="quantity"]').change(function() {
    $.ajax({
      url: 'index.php?route=product/product/getRecurringDescription',
      type: 'post',
      data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
      dataType: 'json',
      beforeSend: function() {
        $('#recurring-description').html('');
      },
      success: function(json) {
        $('.alert, .text-danger').remove();

        if (json['success']) {
          $('#recurring-description').html(json['success']);
        }
      }
    });
  });

  var review_to_show = $(".review-card").length;



  var slides_to_show = $(".imgth").length;

  $('.slider-for').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: true,
    fade: false,
    asNavFor: '.slider-nav',
    nextArrow: '<button style="width: 30px;height:30px;color:#fff;top: 200px;position: absolute;right: 0px;z-index: 99;" class="btn-round left"><svg style="fill:#fff; margin-top:-3px; width:15px" viewBox="0 0 100 100"><path d="M 20,50 L 60,90 L 60,85 L 25,50  L 60,15 L 60,10 Z" class="arrow" transform="translate(100, 100) rotate(180) "></path></svg></button>',
    prevArrow: '<button style="width: 30px;height:30px;color:#fff;top: 200px;position: absolute;left: 0px;z-index: 99;" class="btn-round right"><svg style="fill:#fff; margin-top:-3px; width:15px" viewBox="0 0 100 100"><path d="M 20,50 L 60,90 L 60,85 L 25,50  L 60,15 L 60,10 Z" class="arrow"></path></svg></button>'

  });

  $('.slider-nav').slick({
    slidesToShow: slides_to_show,
    vertical: true,
    slidesToScroll: 1,
    asNavFor: '.slider-for',
    dots: true,
    arrows: true,
    focusOnSelect: true,
    nextArrow: '<button style="width: 30px;height:30px;color:#fff;top: 200px;position: absolute;right: 0px;z-index: 99;" class="btn-round left"><svg style="fill:#fff; margin-top:-3px; width:15px" viewBox="0 0 100 100"><path d="M 20,50 L 60,90 L 60,85 L 25,50  L 60,15 L 60,10 Z" class="arrow" transform="translate(100, 100) rotate(180) "></path></svg></button>',
    prevArrow: '<button style="width: 30px;height:30px;color:#fff;top: 200px;position: absolute;left: 0px;z-index: 99;" class="btn-round right"><svg style="fill:#fff; margin-top:-3px; width:15px" viewBox="0 0 100 100"><path d="M 20,50 L 60,90 L 60,85 L 25,50  L 60,15 L 60,10 Z" class="arrow"></path></svg></button>'


  });
  $("#add_quantity").click(function() {
    var b = Number($("#input-quantity").val()) + 1;
    $("#input-quantity").val(b);
  })

  $("#less_quantity").click(function() {
    var b = Number($("#input-quantity").val()) - 1;
    if (b < 0) {
      b = 0;
    }
    $("#input-quantity").val(b);
  })
</script>
<script type="text/javascript">
  $('#button-cart').on('click', function() {
    $.ajax({
      url: 'index.php?route=checkout/cart/add',
      type: 'post',
      data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
      dataType: 'json',
      beforeSend: function() {
        $('#button-cart').button('loading');
      },
      complete: function() {
        $('#button-cart').button('reset');
      },
      success: function(json) {
        $('.alert, .text-danger').remove();
        $('.form-group').removeClass('has-error');

        if (json['error']) {
          if (json['error']['option']) {
            for (i in json['error']['option']) {
              var element = $('#input-option' + i.replace('_', '-'));

              if (element.parent().hasClass('input-group')) {
                element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
              } else {
                element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
              }
            }
          }

          if (json['error']['recurring']) {
            $('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
          }

          // Highlight any found errors
          $('.text-danger').parent().addClass('has-error');
        }

        if (json['success']) {
          // Need to set timeout otherwise it wont update the total
          setTimeout(function() {
            $('#cart_count').html(json['total']);
          }, 100);

          $('.minicart-btn').click();


          $('#cart > ul').load('index.php?route=common/cart/info #cart li');
          $(".minicart-pricing-box > ul").load('index.php?route=common/cart/info .minicart-pricing-box ul li');
          $(".minicart-button").fadeIn();
        }
      },
      error: function(xhr, ajaxOptions, thrownError) {
        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
      }
    });
  });
  //
</script>
<script type="text/javascript">
  $('.date').datetimepicker({
    pickTime: false
  });

  $('.datetime').datetimepicker({
    pickDate: true,
    pickTime: true
  });

  $('.time').datetimepicker({
    pickDate: false
  });

  var ref = '';
  $(document).on('click', '.upload-btn', function() {
    $('.upload-btn').removeClass('acc');
    $(this).addClass('acc');
  })
  $(document).on('change', 'input[name="file"]', function() {
    ref = this;
    if (this.files && this.files[0]) {
      var reader = new FileReader();

      reader.onload = function(e) {

        $('.acc').siblings('.filePreview').attr('src', e.target.result);
        $('.acc').siblings('.filePreview').fadeIn();
      }

      reader.readAsDataURL(this.files[0]); // convert to base64 string
    }
  });

  $('button[id^=\'button-upload\']').on('click', function() {
    var node = this;

    $('#form-upload').remove();

    $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

    $('#form-upload input[name=\'file\']').trigger('click');

    if (typeof timer != 'undefined') {
      clearInterval(timer);
    }

    timer = setInterval(function() {
      if ($('#form-upload input[name=\'file\']').val() != '') {
        clearInterval(timer);

        $.ajax({
          url: 'index.php?route=tool/upload',
          type: 'post',
          dataType: 'json',
          data: new FormData($('#form-upload')[0]),
          cache: false,
          contentType: false,
          processData: false,
          beforeSend: function() {
            $(node).button('loading');
          },
          complete: function() {
            $(node).button('reset');
          },
          success: function(json) {
            $('.text-danger').remove();

            if (json['error']) {
              $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
            }

            if (json['success']) {
              alert(json['success']);

              $(node).parent().find('input').val(json['code']);
            }
            if (json['error']) {
              ref = '';
              $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
            }


          },
          error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
          }
        });
      }
    }, 500);
  });


  //
</script>
<script type="text/javascript">
  $('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
  });

  $('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

  $('#button-review').on('click', function() {
    $.ajax({
      url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
      type: 'post',
      dataType: 'json',
      data: $("#form-review").serialize(),
      beforeSend: function() {
        $('#button-review').button('loading');
      },
      complete: function() {
        $('#button-review').button('reset');
      },
      success: function(json) {
        $('.alert-success, .alert-danger').remove();

        if (json['error']) {
          $('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
        }

        if (json['success']) {
          $('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

          $('input[name=\'name\']').val('');
          $('textarea[name=\'text\']').val('');
          $('input[name=\'rating\']:checked').prop('checked', false);
        }
      }
    });
  });

  $(document).ready(function() {
    $('.thumbnails').magnificPopup({
      type: 'image',
      delegate: 'a',
      gallery: {
        enabled: true
      }
    });
  });


  $('#exampleModal').on('shown.bs.modal', function() {

    $("#pop-zoom").attr('src', $(".slick-current img").attr('src'));
    $('.zoom').zoom({
      magnify: '1.3'
    });

  })
</script>
<?php echo $footer; ?>
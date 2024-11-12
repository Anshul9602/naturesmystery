<?php echo $header; ?>
<script src="catalog/view/javascript/jquery.zoom.js" type="text/javascript"></script>
<style>
   .panel-default {
      border: none;
      box-shadow: none;
      border-top: thin solid #f1f1f1;
      border-radius: 0
   }

   .slick-prev:before,
   .slick-next:before {
      color: #333;
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

   .slick-track {

      transform: none !important;
   }

   /************star rating************/
   .star-rating {
      font-size: 0;
      white-space: nowrap;
      display: inline-block;
      /* width: 250px; remove this */
      height: 25px;
      overflow: hidden;
      position: relative;
      background: url('data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB3aWR0aD0iMjBweCIgaGVpZ2h0PSIyMHB4IiB2aWV3Qm94PSIwIDAgMjAgMjAiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDIwIDIwIiB4bWw6c3BhY2U9InByZXNlcnZlIj48cG9seWdvbiBmaWxsPSIjREREREREIiBwb2ludHM9IjEwLDAgMTMuMDksNi41ODMgMjAsNy42MzkgMTUsMTIuNzY0IDE2LjE4LDIwIDEwLDE2LjU4MyAzLjgyLDIwIDUsMTIuNzY0IDAsNy42MzkgNi45MSw2LjU4MyAiLz48L3N2Zz4=');
      background-size: contain;
   }

   .star-rating i {
      opacity: 0;
      position: absolute;
      left: 0;
      top: 0;
      height: 100%;
      /* width: 20%; remove this */
      z-index: 1;
      background: url('data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB3aWR0aD0iMjBweCIgaGVpZ2h0PSIyMHB4IiB2aWV3Qm94PSIwIDAgMjAgMjAiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDIwIDIwIiB4bWw6c3BhY2U9InByZXNlcnZlIj48cG9seWdvbiBmaWxsPSIjRkZERjg4IiBwb2ludHM9IjEwLDAgMTMuMDksNi41ODMgMjAsNy42MzkgMTUsMTIuNzY0IDE2LjE4LDIwIDEwLDE2LjU4MyAzLjgyLDIwIDUsMTIuNzY0IDAsNy42MzkgNi45MSw2LjU4MyAiLz48L3N2Zz4=');
      background-size: contain;
   }

   .star-rating input {
      -moz-appearance: none;
      -webkit-appearance: none;
      opacity: 0;
      display: inline-block;
      /* width: 20%; remove this */
      height: 100%;
      margin: 0;
      padding: 0;
      z-index: 2;
      position: relative;
   }

   .star-rating input:hover+i,
   .star-rating input:checked+i {
      opacity: 1;
   }

   .star-rating i~i {
      width: 40%;
   }

   .star-rating i~i~i {
      width: 60%;
   }

   .star-rating i~i~i~i {
      width: 80%;
   }

   .star-rating i~i~i~i~i {
      width: 100%;
   }


   .star-rating.star-5 {
      width: 125px;
   }

   .star-rating.star-5 input,
   .star-rating.star-5 i {
      width: 20%;
   }

   .star-rating.star-5 i~i {
      width: 40%;
   }

   .star-rating.star-5 i~i~i {
      width: 60%;
   }

   .star-rating.star-5 i~i~i~i {
      width: 80%;
   }

   .star-rating.star-5 i~i~i~i~i {
      width: 100%;
   }

   .star-rating.star-3 {
      width: 150px;
   }

   .star-rating.star-3 input,
   .star-rating.star-3 i {
      width: 33.33%;
   }

   .star-rating.star-3 i~i {
      width: 66.66%;
   }

   .star-rating.star-3 i~i~i {
      width: 100%;
   }

   .img-thumbnail,
   .slider-nav .slick-slide {
      width: 110px !important;
   }

   .product-boxes {
      padding: 10px;
   }

   /************star rating************/
</style>
<!-- breadcrumb area end -->
<br />
<div class="container">

   <div class="row">
      <div id="content" class="col-sm-12">
         <div class="row">
            <div class="col-lg-6 desktop_slider">
               <?php if ($thumb || $images) { ?>
               <div id="s_wrap">
                  <div class="product-large-slider">
                     <?php if ($thumb) { ?>
                     <div class="pro-large-img img-zoom">
                        <img src="<?php echo $thumb; ?>" alt="product-details" />
                     </div>
                     <?php } ?>
                     <?php if ($images) { ?>
                     <div class="pro-large-img img-zoom">
                        <img src="<?php echo $images[0]['popup']; ?>" alt="product-details" />
                     </div>
                     <div class="pro-large-img img-zoom">
                        <img src="<?php echo $images[1]['popup']; ?>" alt="product-details" />
                     </div>
                     <?php if (isset($images[2]['popup'])) { ?>
                     <div class="pro-large-img img-zoom">
                        <img src="<?php echo $images[2]['popup']; ?>" alt="product-details" />
                     </div>
                     <?php } ?>

                     <?php } ?>
                  </div>
                  <div class="pro-nav">
                     <?php if ($thumb) { ?>
                     <div class="pro-nav-thumb">
                        <img src="<?php echo $thumb; ?>" alt="product-details" />
                     </div>
                     <?php } ?>
                     <?php if ($images) { ?>
                     <div class="pro-nav-thumb">
                        <img src="<?php echo $images[0]['popup']; ?>" alt="product-details" />
                     </div>
                     <div class="pro-nav-thumb">
                        <img src="<?php echo $images[1]['popup']; ?>" alt="product-details" />
                     </div>

                     <?php if (isset($images[2]['popup'])) { ?>
                     <div class="pro-nav-thumb">
                        <img src="<?php echo $images[2]['popup']; ?>" alt="product-details" />
                     </div>
                     <?php } ?>

                     <?php } ?>
                  </div>
               </div>
               <?php } ?>

            </div>

            <div class="col-lg-5 slider_mob mb-3">
               <div class="product-large-slider">
                  <?php if ($thumb) { ?>
                  <div class="pro-large-img img-zoom">
                     <img src="<?php echo $thumb; ?>" alt="product-details" />
                  </div>
                  <?php } ?>
                  <?php if ($images) { ?>
                  <div class="pro-large-img img-zoom">
                     <img src="<?php echo $images[0]['popup']; ?>" alt="product-details" />
                  </div>
                  <div class="pro-large-img img-zoom">
                     <img src="<?php echo $images[1]['popup']; ?>" alt="product-details" />
                  </div>
                  <?php if (isset($images[2]['popup'])) { ?>
                  <div class="pro-large-img img-zoom">
                     <img src="<?php echo $images[2]['popup']; ?>" alt="product-details" />
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
                  <div class="pro-nav-thumb">
                     <img src="<?php echo $images[0]['popup']; ?>" alt="product-details" />
                  </div>
                  <div class="pro-nav-thumb">
                     <img src="<?php echo $images[1]['popup']; ?>" alt="product-details" />
                  </div>
                  <?php if (isset($images[2]['popup'])) { ?>
                  <div class="pro-nav-thumb">
                     <img src="<?php echo $images[2]['popup']; ?>" alt="product-details" />
                  </div>
                  <?php } ?>
                  <?php } ?>


               </div>

            </div>


            <div class="col-lg-6 ">


               <h3 class="product-name">
                  <?php echo $heading_title; ?>
               </h3>
               <div class="ratings d-flex">
                  <span class="fa fa-stack">
                     <i class="fa fa-star fa-stack-1x"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
               </div>


               <div style="margin-top: 10px; " class="price-box">
                  <?php if ($price) { ?>

                  <?php if (!$special) { ?>

                  <h3 class="price-regular" id="p_price">
                     <?php echo $price; ?>
                  </h3>

                  <?php } else { ?>

                  <h6 class="price-old"> <del>
                        <?php echo $price; ?>
                     </del></h6>
                  <h3 class="price-regular" id="p_price">
                     <?php echo $special; ?>
                  </h3>

                  <?php } ?>
                  <?php if ($tax) { ?>
                  <li>
                     <?php echo $text_tax; ?>
                     <?php echo $tax; ?>
                  </li>
                  <?php } ?>
                  <?php if ($points) { ?>
                  <li>
                     <?php echo $text_points; ?>
                     <?php echo $points; ?>
                  </li>
                  <?php } ?>
                  <?php if ($discounts) { ?>
                  <li>
                     <hr>
                  </li>
                  <?php foreach ($discounts as $discount) { ?>
                  <li>
                     <?php echo $discount['quantity']; ?>
                     <?php echo $text_discount; ?>
                     <?php echo $discount['price']; ?>
                  </li>
                  <?php } ?>
                  <?php } ?>

                  <?php } ?>
               </div>


               <hr>


               <div id="product">
                  <?php if ($options) { ?>
                  <?php foreach ($options as $option) { ?>
                  <?php if ($option['type'] == 'select') { ?>
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                     <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
                        <?php echo $option['name']; ?>
                     </label>
                     <select name="option[<?php echo $option['product_option_id']; ?>]"
                        id="input-option<?php echo $option['product_option_id']; ?>" class="form-control select_option">
                        <option value="">
                           <?php echo $text_select; ?>
                        </option>
                        <?php foreach ($option['product_option_value'] as $option_value) { ?>
                        <option data-sign="<?php echo $option_value['price_prefix']  ?>"
                           data-money="<?php echo $option_value['price'] ?>"
                           value="<?php echo $option_value['product_option_value_id']; ?>">
                           <?php echo $option_value['name']; ?>
                           (
                           <?php echo $option_value['price_prefix']; ?>
                           <?php echo $option_value['price']; ?>)
                        </option>
                        <?php } ?>
                     </select>
                  </div>
                  <?php } ?>
                  <?php if ($option['type'] == 'radio') { ?>
                  <div class="radio_input form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                     <label class="control-label">
                        <?php echo $option['name']; ?>
                     </label>
                     <div id="input-option<?php echo $option['product_option_id']; ?>">
                        <?php foreach ($option['product_option_value'] as $option_value) { ?>
                        <div class="radio">
                           <label>
                              <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]"
                                 value="<?php echo $option_value['product_option_value_id']; ?>" />
                              <?php if ($option_value['image']) { ?>
                              <img src="<?php echo $option_value['image']; ?>"
                                 alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>"
                                 class="img-thumbnail" />
                              <?php } ?>
                              <?php echo $option_value['name']; ?>
                              <?php if ($option_value['price']) { ?>
                              (
                              <?php echo $option_value['price_prefix']; ?>
                              <?php echo $option_value['price']; ?>)
                              <?php } ?>
                           </label>
                        </div>
                        <?php } ?>
                     </div>
                  </div>
                  <?php } ?>
                  <?php if ($option['type'] == 'checkbox') { ?>
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                     <label class="control-label">
                        <?php echo $option['name']; ?>
                     </label>
                     <div id="input-option<?php echo $option['product_option_id']; ?>">
                        <?php foreach ($option['product_option_value'] as $option_value) { ?>
                        <div class="checkbox">
                           <label>
                              <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]"
                                 value="<?php echo $option_value['product_option_value_id']; ?>" />
                              <?php if ($option_value['image']) { ?>
                              <img src="<?php echo $option_value['image']; ?>"
                                 alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>"
                                 class="img-thumbnail" />
                              <?php } ?>
                              <?php echo $option_value['name']; ?>
                              <?php if ($option_value['price']) { ?>
                              (
                              <?php echo $option_value['price_prefix']; ?>
                              <?php echo $option_value['price']; ?>)
                              <?php } ?>
                           </label>
                        </div>
                        <?php } ?>
                     </div>
                  </div>
                  <?php } ?>
                  <?php if ($option['type'] == 'text') { ?>
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                     <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
                        <?php echo $option['name']; ?>
                     </label>
                     <input type="text" name="option[<?php echo $option['product_option_id']; ?>]"
                        value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>"
                        id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                  </div>
                  <?php } ?>
                  <?php if ($option['type'] == 'textarea') { ?>
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                     <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
                        <?php echo $option['name']; ?>
                     </label>
                     <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5"
                        placeholder="<?php echo $option['name']; ?>"
                        id="input-option<?php echo $option['product_option_id']; ?>"
                        class="form-control"><?php echo $option['value']; ?></textarea>
                  </div>
                  <?php } ?>
                  <?php if ($option['type'] == 'file') { ?>
                  <div class="file_input form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                     <img class="filePreview" style="display:none; max-width: 50px; margin:auto">

                     <label class="control-label">
                        <?php echo $option['name']; ?>
                     </label>
                     <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>"
                        data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default upload-btn btn-block"><i
                           class="fa fa-upload"></i>
                        <?php echo $button_upload; ?>
                     </button>
                     <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value=""
                        id="input-option<?php echo $option['product_option_id']; ?>" />
                  </div>

                  <?php } ?>
                  <?php if ($option['type'] == 'date') { ?>
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                     <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
                        <?php echo $option['name']; ?>
                     </label>
                     <div class="input-group date">
                        <input type="text" name="option[<?php echo $option['product_option_id']; ?>]"
                           value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD"
                           id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                        <span class="input-group-btn">
                           <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                        </span>
                     </div>
                  </div>
                  <?php } ?>
                  <?php if ($option['type'] == 'datetime') { ?>
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                     <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
                        <?php echo $option['name']; ?>
                     </label>
                     <div class="input-group datetime">
                        <input type="text" name="option[<?php echo $option['product_option_id']; ?>]"
                           value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm"
                           id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                        <span class="input-group-btn">
                           <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                        </span>
                     </div>
                  </div>
                  <?php } ?>
                  <?php if ($option['type'] == 'time') { ?>
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                     <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
                        <?php echo $option['name']; ?>
                     </label>
                     <div class="input-group time">
                        <input type="text" name="option[<?php echo $option['product_option_id']; ?>]"
                           value="<?php echo $option['value']; ?>" data-date-format="HH:mm"
                           id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                        <span class="input-group-btn">
                           <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                        </span>
                     </div>
                  </div>
                  <?php } ?>
                  <?php } ?>

                  <?php } ?>


                  <div style="display: inline-block; width:100%; margin-bottom:0px" class="form-group">


                     <div id="counter-btn" style="padding: 0px; padding-left:10px; margin-top:-12px; max-width:300px"
                        class="row">
                        <div style="cursor: pointer; height: 40px; text-align:center;   border:thin solid #ccc"
                           class="col-sm-2 col-4 minus-icon">
                           <li style=" font-size:12px; margin:auto; line-height:40px; text-align:center"
                              id="less_quantity" class="fa fa-minus"></li>
                        </div>
                        <div style=" padding-left:0px; height: 40px; padding-right:0px;" class="col-sm-3 col-4">
                           <input name="quantity" type="text"
                              style="box-shadow:none; text-align:center; border-radius:0px; width:100%; height: 40px; background-color: transparent; cursor:default"
                              id="input-quantity" value="1" class="form-control" />
                        </div>
                        <div style=" cursor: pointer;  height: 40px; text-align:center; border:thin solid #ccc"
                           class="col-sm-2 col-4 minus-icon">
                           <li style="font-size:12px; height: 50px; line-height:40px; text-align:center"
                              id="add_quantity" class="fa fa-plus"></li>
                        </div>
                     </div>

                     <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />

                     <button type="button" style="margin-top: 20px;" id="button-cart"
                        data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg btn-block">
                        ADD TO CART
                     </button>
                     <br /> <br /><br />
                     <button style="border:none; padding:10px 0px; margin-top:10px; background:none " type="button"
                        data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_wishlist; ?>"
                        onclick="wishlist.add('<?php echo $product_id; ?>');">ADD TO WISHLIST &nbsp;<i
                           style="color:rgb(185, 130, 123, 0.9)" class="fa fa-heart-o"></i></button>
                  </div>
                  <div style="padding: 0px;" class="col-sm-12 col-12">
                     <?php if ($location) { ?>
                     <hr />
                     <p class="sub-heading"><b>Color:</b>
                        <?php echo $location; ?>
                     </p>
                     <p class="sub-heading"><b>Fabric:</b>
                        <?php echo $isbn; ?>
                     </p>
                     <hr />
                     <?php } ?>
                     <p>
                        <?php echo strip_tags($description, "<br /><br>"); ?>
                     </p>

                  </div>
                  <?php if ($minimum > 1) { ?>
                  <div class="alert alert-info"><i class="fa fa-info-circle"></i>
                     <?php echo $text_minimum; ?>
                  </div>
                  <?php } ?>
               </div>

            </div>
         </div>
      </div>
   </div>
</div>
<?php if ($images) { ?>
<br />
<?php for ($i = 3; $i <= 7; $i++) { ?>
<div class="row" style="padding:0px; margin:0px">
   <div class="col-12 " style="padding:0px; margin:0px">
      <img src="image/<?php echo $bans[$i][" image"]; ?>" alt="" class="img-size">
   </div>
</div>

<?php } ?>
<?php } ?>

<div class="container">
   <?php if ($products) { ?>
   <br /><br />
   <div class="row">
      <div class="col-sm-12 text-center">
         <h3>
            <?php echo $text_related; ?>
         </h3>
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
                  <span class="price-regular">
                     <?php echo $product['special']; ?>
                  </span>
                  <span class="price-old"><del>
                        <?php echo $product['price']; ?>
                     </del></span>
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


</div>
<style>
   .jdgm-rev-widg__title {
      text-align: center;
      margin-bottom: 24px;
   }

   .checked {
      color: orange;
      font-size: 18px;
   }

   .rating .checked1 {
      color: orange;
      font-size: 24px !important;
   }
   .rating .fa-star {
      
      font-size: 18px;
   }

</style>
<?php if ($review_status) { ?>



<div class="tab-pane mt-5">
   <h2 class="jdgm-rev-widg__title">Customer Reviews</h2>
   <div class=" rating" style="width: 90%;margin: auto;">
      <div class="row">
         <div class="col-md-4 " style="
         border-right: 1px solid rgba(51,153,153,0.1);display: flex;    align-items: center;justify-content: center;text-align: center;">
            <div class="col-sm-12">
               <span class="fa fa-star checked1"></span>
               <span class="fa fa-star checked1"></span>
               <span class="fa fa-star checked1"></span>
               <span class="fa fa-star checked1"></span>
               <span class="fa fa-star checked1"></span>
               <span style="font-size: 20px;margin-left:15px;">4.77 out of 5</span>
               <div style="font-size: 20px;">Based on 13 reviews</div>
            </div>
           
         </div>
         <div class="col-md-4 "style="
         border-right: 1px solid rgba(51,153,153,0.1);padding: 0 6%;">
            <div class="row" style="align-items: center;">
               <div class="col-md-6">
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
               </div>
               <div class="col-md-5 p-0">
                  <span class="progress" style="font-size: 20px;margin-left:15px;">
                     <span class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
                        aria-valuemax="100" style="width:70%">
                        <span class="sr-only">70% Complete</span>
                     </span>
                  </span>
               </div>
               <div class="col-md-1 p-0">
                  <span style="font-size: 18px;margin-left:15px;">5</span>
               </div>
            </div>
            <div class="row"style="align-items: center;">
               <div class="col-md-6">
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star "></span>
               </div>
               <div class="col-md-5 p-0">
                  <span class="progress" style="font-size: 20px;margin-left:15px;">
                     <span class="progress-bar" role="progressbar" aria-valuenow="50" aria-valuemin="0"
                        aria-valuemax="100" style="width:50%">
                        <span class="sr-only">70% Complete</span>
                     </span>
                  </span>
               </div>
               <div class="col-md-1 p-0">
                  <span style="font-size: 18px;margin-left:15px;">3</span>
               </div>
            </div>
            <div class="row"style="align-items: center;">
               <div class="col-md-6">
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star "></span>
                  <span class="fa fa-star "></span>
               </div>
               <div class="col-md-5 p-0">
                  <span class="progress" style="font-size: 20px;margin-left:15px;">
                     <span class="progress-bar" role="progressbar" aria-valuenow="40" aria-valuemin="0"
                        aria-valuemax="100" style="width:40%">
                        <span class="sr-only">40% Complete</span>
                     </span>
                  </span>
               </div>
               <div class="col-md-1 p-0">
                  <span style="font-size: 18px;margin-left:15px;">3</span>
               </div>
            </div>
            
            <div class="row"style="align-items: center;">
               <div class="col-md-6">
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star "></span>
                  <span class="fa fa-star "></span>
                  <span class="fa fa-star "></span>
               </div>
               <div class="col-md-5 p-0">
                  <span class="progress" style="font-size: 20px;margin-left:15px;">
                     <span class="progress-bar" role="progressbar" aria-valuenow="30" aria-valuemin="0"
                        aria-valuemax="100" style="width:30%">
                        <span class="sr-only">30% Complete</span>
                     </span>
                  </span>
               </div>
               <div class="col-md-1 p-0">
                  <span style="font-size: 18px;margin-left:15px;">2</span>
               </div>
            </div>
           
            <div class="row"style="align-items: center;">
               <div class="col-md-6">
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star "></span>
                  <span class="fa fa-star "></span>
                  <span class="fa fa-star "></span>
                  <span class="fa fa-star "></span>
               </div>
               <div class="col-md-5 p-0">
                  <span class="progress" style="font-size: 20px;margin-left:15px;">
                     <span class="progress-bar" role="progressbar" aria-valuenow="10" aria-valuemin="0"
                        aria-valuemax="100" style="width:10%">
                        <span class="sr-only">10% Complete</span>
                     </span>
                  </span>
               </div>
               <div class="col-md-1 p-0">
                  <span style="font-size: 18px;margin-left:15px;">1</span>
               </div>
            </div>

         </div>
         <div class="col-md-4">
            
            <div class="buttons clearfix">
               <div class="text-center">
                  <button type="button" id="show" 
                     class="btn btn-hero">Write a review</button>
               </div>
            </div>
         </div>
      </div>
   </div>
   <div class="menu" style="display: none;">
      <hr>
      <form class="form-horizontal mt-4" id="form-review" style="text-align: center;">

         <h2 class="jdgm-rev-widg__title">Write a review</h2>
         <?php if ($review_guest) { ?>
         <div class="form-group required">
            <div class="col-sm-12">
               <label class="control-label" for="input-name">
                  <?php echo $entry_name; ?>
               </label>
               <input type="text"style="margin:auto;" name="name" value="<?php echo $customer_name; ?>" id="input-name" class="form-control" />
            </div>
         </div>
         <div class="form-group required">
            <div class="col-sm-4"style="margin:auto;">
               <label class="control-label" for="input-review">
                  <?php echo $entry_review; ?>
               </label>
               <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
            </div>
         </div>
         <div class="form-group required">
            <div class="col-sm-12">
               <span class="star-cb-group star-rating star-5">
                  <label class="control-label">
                     <?php echo $entry_rating; ?>
                  </label>
                  <input type="radio" name="rating" value="1" /><i></i>
                  &nbsp;
                  <input type="radio" name="rating" value="2" /><i></i>
                  &nbsp;
                  <input type="radio" name="rating" value="3" /><i></i>
                  &nbsp;
                  <input type="radio" name="rating" value="4" /><i></i>
                  &nbsp;
                  <input type="radio" name="rating" value="5" /><i></i>
               </span>
            </div>
         </div>
         <?php echo $captcha; ?>
         <div class="buttons clearfix">
            <div class="text-center">
               <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>"
                  class="btn btn-hero">Submit</button>
            </div>
         </div>
         <?php
                 } else { ?>
         <?php echo $text_login; ?>
         <?php
                 } ?>
      </form>
   </div>
  
</div>
<hr>
<div id="review"></div>
<?php
     } ?>


    


     

<script type="text/javascript">


   $(document).ready(function(){
      $('#show').click(function() {
        $('.menu').toggle("slide");
      });
  });


   $("body").on("change", "input[type='radio']", function () {
      var x = $.trim($("input[type='radio']:checked").parent().text());
      if (x == "Upload Now") {
         $(".file_input").fadeIn();
      } else {
         $(".file_input").fadeOut();
      }

   });

   $('select[name=\'recurring_id\'], input[name="quantity"]').change(function () {
      $.ajax({
         url: 'index.php?route=product/product/getRecurringDescription',
         type: 'post',
         data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
         dataType: 'json',
         beforeSend: function () {
            $('#recurring-description').html('');
         },
         success: function (json) {
            $('.alert, .text-danger').remove();

            if (json['success']) {
               $('#recurring-description').html(json['success']);
            }
         }
      });
   });


   $("#add_quantity").click(function () {
      var b = Number($("#input-quantity").val()) + 1;
      $("#input-quantity").val(b);
   })

   $("#less_quantity").click(function () {
      var b = Number($("#input-quantity").val()) - 1;
      if (b < 0) {
         b = 0;
      }
      $("#input-quantity").val(b);
   })
</script>
<script type="text/javascript">
   $('#button-cart').on('click', function () {
      $.ajax({
         url: 'index.php?route=checkout/cart/add',
         type: 'post',
         data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
         dataType: 'json',
         beforeSend: function () {
            $('#button-cart').button('loading');
         },
         complete: function () {
            $('#button-cart').button('reset');
         },
         success: function (json) {
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
               setTimeout(function () {
                  $('#cart_count').html(json['total']);
               }, 100);

               $('.minicart-btn').click();


               $('#cart > ul').load('index.php?route=common/cart/info #cart li');
               $(".minicart-pricing-box > ul").load('index.php?route=common/cart/info .minicart-pricing-box ul li');
               $(".minicart-button").fadeIn();
            }
         },
         error: function (xhr, ajaxOptions, thrownError) {
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
   $(document).on('click', '.upload-btn', function () {
      $('.upload-btn').removeClass('acc');
      $(this).addClass('acc');
   })
   $(document).on('change', 'input[name="file"]', function () {
      ref = this;
      if (this.files && this.files[0]) {
         var reader = new FileReader();

         reader.onload = function (e) {

            $('.acc').siblings('.filePreview').attr('src', e.target.result);
            $('.acc').siblings('.filePreview').fadeIn();
         }

         reader.readAsDataURL(this.files[0]); // convert to base64 string
      }
   });

   $('button[id^=\'button-upload\']').on('click', function () {
      var node = this;

      $('#form-upload').remove();

      $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

      $('#form-upload input[name=\'file\']').trigger('click');

      if (typeof timer != 'undefined') {
         clearInterval(timer);
      }

      timer = setInterval(function () {
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
               beforeSend: function () {
                  $(node).button('loading');
               },
               complete: function () {
                  $(node).button('reset');
               },
               success: function (json) {
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
               error: function (xhr, ajaxOptions, thrownError) {
                  alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
               }
            });
         }
      }, 500);
   });


  //
</script>
<script type="text/javascript">
   $('#review').delegate('.pagination a', 'click', function (e) {
      e.preventDefault();

      $('#review').fadeOut('slow');

      $('#review').load(this.href);

      $('#review').fadeIn('slow');
   });

   $('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

   $('#button-review').on('click', function () {
      $.ajax({
         url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
         type: 'post',
         dataType: 'json',
         data: $("#form-review").serialize(),
         beforeSend: function () {
            $('#button-review').button('loading');
         },
         complete: function () {
            $('#button-review').button('reset');
         },
         success: function (json) {
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
   $('#review1').delegate('.pagination a', 'click', function (e) {
      e.preventDefault();

      $('#review1').fadeOut('slow');

      $('#review1').load(this.href);

      $('#review1').fadeIn('slow');
   });

   $('#review1').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

   $('#button-review').on('click', function () {
      $.ajax({
         url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
         type: 'post',
         dataType: 'json',
         data: $("#form-review").serialize(),
         beforeSend: function () {
            $('#button-review').button('loading');
         },
         complete: function () {
            $('#button-review').button('reset');
         },
         success: function (json) {
            $('.alert-success, .alert-danger').remove();

            if (json['error']) {
               $('#review1').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
            }

            if (json['success']) {
               $('#review1').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

               $('input[name=\'name\']').val('');
               $('textarea[name=\'text\']').val('');
               $('input[name=\'rating\']:checked').prop('checked', false);
            }
         }
      });
   });

   $(document).ready(function () {
      $('.thumbnails').magnificPopup({
         type: 'image',
         delegate: 'a',
         gallery: {
            enabled: true
         }
      });
   });


   $('#exampleModal').on('shown.bs.modal', function () {

      $("#pop-zoom").attr('src', $(".slick-current img").attr('src'));
      $('.zoom').zoom({
         magnify: '1.3'
      });

   })
</script>
<script>
   $(document).ready(function (e) {
      var pp = $('#p_price').html().replace(/\,/g, "");
      var price = pp.substr(1);
      var sig = ($('#p_price').html()).slice(0, 1);

      $(".select_option").change(function () {
         var x = $(this).find("option:selected").attr("data-money");
         if (x) {
            x = x.substr(1);
            if ($(this).find("option:selected").attr("data-sign") == '+') {
               var n = parseFloat(price) + parseFloat(x);

            } else {
               var n = parseFloat(price) - parseFloat(x);

            }

            $('#p_price').html(sig + n.toFixed(0));
         } else {
            $('#p_price').html(sig + price);

         }
      })

   });
</script>
<?php echo $footer; ?>
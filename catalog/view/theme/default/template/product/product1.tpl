<?php echo $header; ?>
<script src="catalog/view/javascript/jquery.zoom.js" type="text/javascript"></script>
<link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"
    />
    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
<style>
  @font-face {
  font-family: 'brandon_grotesquemedium ';
  src: url('../fonts/New-font/brandon_med-webfont.woff2') format('woff2'),
       url('../fonts/New-font/brandon_med-webfont.woff') format('woff');
  font-weight: normal;
  font-style: normal;

}
   .panel-title a {
    display: block;
    padding: 15px;
    text-decoration: none;
    color: #333;
  }
  .img-size
  {
    max-width: 100%;
    max-height: 100%;
  }
  .blink_me {
  animation: blinker 1s linear infinite;
}

@keyframes blinker {
  50% {
    opacity: 0;
  }
}
     .new-font-P { font-family: 'brandon_grotesquemedium!important'; }
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
/* ------------------------Slider css------------------------ */
.swiper {
        width: 100%;
        height: 100%;
      }

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
        align-items: center;
      }

      .swiper-slide img {
        display: block;
        width: 100%;
        height: 100%;
        object-fit: cover;
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
        height: 80%;
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
        height: 90%;
        object-fit: cover;
      }
      .NULL{
        padding:0px;
        margin:0px;
            }
    @media only screen and (max-width: 600px) {
  .desktop-slider{
    display:none;
  }
  .mob-slider{
    display:block;
  }
}

  .mob-slider{
    display:none;
  }
  .desktop-slider{
    display:block;
  }
/* ------------------------Slider css end------------------------ */
</style>
    <!-------------------------------------- SLIDER Start HERE-------------------------------------------- -->
<div class="container">
  <div class="row">
    <div class="col-lg-6 col-md-6 col-md-12 col-12 d-flex flex-column slider ">
    <div
      style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff"
      class="swiper mySwiper2 desktop-slider"
    >
      <div class="swiper-wrapper">
      <?php if ($images) { ?>
              <?php for ($i = 0; $i <= 3; $i++) { ?>
        <div class="swiper-slide">
        <img src="<?php echo $images[$i]["popup"]; ?>" alt="product-details" style = "max-width:100%;" >
        </div>
        <?php } ?>
            <?php } ?>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
    </div>
    <div thumbsSlider="" class="swiper mySwiper">
      <div class="swiper-wrapper">
      <?php if ($images) { ?>
        <?php for ($i = 0; $i <= 3; $i++) { ?>
        <div class="swiper-slide">
        <img src="<?php echo $images[$i]["popup"]; ?>" alt="product-details" style = "max-width:100%;" >
        </div>
        <?php } ?>
            <?php } ?>
      </div>
    </div>


    <div class="col-lg-5 slider_mob mob-slider">
          <div class="product-large-slider">
            <?php if ($thumb) { ?>
              <div class="pro-large-img img-zoom">
                <img src="<?php echo $thumb; ?>" alt="product-details" />
              </div>
            <?php } ?>
            <?php if ($images) { ?>
              <?php for ($i = 0; $i <= 3; $i++) { ?>
                <div class="pro-large-img img-zoom">
                  <img src="<?php echo $images[$i]["popup"]; ?>" alt="product-details" />
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
              <?php for ($i = 0; $i <= 3; $i++) { ?>
                <div class="pro-nav-thumb">
                  <img src="<?php echo $images[$i]["popup"]; ?>" alt="product-details" />
                </div>
              <?php } ?>
            <?php } ?>


          </div>
        </div>
    </div>
    <!-------------------------------------- SLIDER END HERE-------------------------------------------- -->

    <!-- -------------------------------------------DESCRIPTION SECTION------------------------------------------- -->
    <div class="col-lg-6 col-md-6 col-12 d-flex flex-column mt-4  description">
      <div  style=" background: black; color: gold; text-align:center; border-radius:10px; max-width:120px;padding:3px 5px ;">
      <span class="blink_me" style="font-size:10px; ">BEST SELLER</span>
    </div>
     
      <h3 style="color:#333; margin-top:10px;" style="brandon_grotesquemedium!important"><?php echo $heading_title; ?></h3>
      <!-- <p class="blink_me " style="font-size:10px; background: black; color: gold; border-radius:10px; max-width:70px;padding:5px ;">BEST SELLER</p> -->
      <div class="mt-2  ProductMeta__Description">
         <?php print_r(strip_tags($description, '<br><hr><br /><hr /><b><p>')); ?> 
      </div>
     
      <div class="options row">
              <div class="col-12 price">
                    <?php if ($price) { ?>

                    <?php if (!$special) { ?>

                      <h3 class="price-regular"><?php echo $price; ?></h3>

                    <?php } else { ?>

                      <h6 class="price-old"> <del><?php echo $price; ?></del></h6>
                      <h3 class="price-regular" style="color:black;"><?php echo $special; ?></h3>

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
      
       <?php if ($options) { ?>
          <div class="col-6">
              <?php foreach ($options as $option) { ?>
                <?php if ($option['type'] == 'select') { ?>
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                        <option value=""><?php echo $text_select; ?></option>
                        <?php foreach ($option['product_option_value'] as $option_value) { ?>
                          <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
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
              <?php } ?>
        </div>
      <?php } ?>    


      
      <div class="col-6 d-flex">
        <div id="counter-btn" style="padding: 0px; padding-left:10px; margin-top:-12px; max-width:300px" class="row">
                <div style="cursor: pointer; height: 40px; text-align:center;   border:thin solid #ccc" class="col-sm-2 col-4 minus-icon">
                  <li style=" font-size:12px; margin:auto; line-height:40px; text-align:center" id="less_quantity" class="fa fa-minus"></li>
                </div>
                <div style=" padding-left:0px; height: 40px; padding-right:0px;" class="col-sm-3 col-4">
                  <input name="quantity" type="text" style="box-shadow:none; text-align:center; border-radius:0px; width:100%; height: 40px; background-color: transparent; cursor:default" id="input-quantity" value="1" class="form-control" /></div>
                <div style=" cursor: pointer;  height: 40px; text-align:center; border:thin solid #ccc" class="col-sm-2 col-4 minus-icon">
                  <li style="font-size:12px; height: 50px; line-height:40px; text-align:center" id="add_quantity" class="fa fa-plus"></li>
                </div>
              </div>
        </div>
        <div class="col-12">
          <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
          <button type="button" style="margin-top: 20px; background-color:black;" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg btn-block"><?php echo $button_cart; ?></button>  
      </div>
      <div class="col-12">
       
              <div style="text-align: left" class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">


                <div class="panel panel-default">
                  <div class="panel-heading" role="tab" id="headingTwo">
                    <h4 class="panel-title">
                      <a role="button" style="padding:20px 0px" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseOne">
                        <b class="new-font"> Description</b>
                        <i class="more-less glyphicon glyphicon-plus"></i>
                      </a>
                    </h4>
                  </div>
                  <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                    <div class="panel-body new-font" style="font-family:brandon_grotesquemedium!important">
                      <?php $a = (string)$finer_details;
                      echo strip_tags(html_entity_decode($a), '<br /><ul><li><br>'); ?>
                    </div>
                  </div>
                </div>
                <?php if ($keywords) { ?>
                  <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingThree">
                      <h4 class="panel-title">
                        <a role="button" style="padding:20px 0px" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
                          <b>Product Care</b>
                          <i class="more-less glyphicon glyphicon-plus"></i>
                        </a>
                      </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                      <div id="delivery_d" class="panel-body">
                        <?php $a = (string)$keywords;
                        echo strip_tags(html_entity_decode(htmlspecialchars_decode($a)), '<br><br /><ul><li>'); ?>
                      </div>
                    </div>
                  </div>
                <?php } ?>



              </div>
      </div>
    </div>
                         
  </div>
      
    </div>
     
      <!-- container-div -->
    </div>
    <!-- -------------------------------------------DESCRIPTION SECTION-END------------------------------------------ -->
<div class="row">
  
  </div>
</div>

    <!-- -----------------------------------------Banner-section------------------------------------------- -->
    
<!-- banner-1 -->
<br />
<?php if ($images) { ?>
              <?php for ($i = 4; $i <= 8; $i++) { ?>  
                     <div class="row" style="padding:0px; margin:0px">
                        <div class="col-12 " style="padding:0px; margin:0px">
                            <img src="image/<?php echo $bans[$i]["image"]; ?>" alt="" class="img-size">
                       </div>
                      </div>
                  
   <?php } ?>
            <?php } ?>
                

     
 
<!-- banner-1-end -->

  <!-- -----------------------------------------Banner-section-END------------------------------------------ -->
</div>

<div class="row">
  <div class="col-12">
  <?php if ($products) { ?>
        <br /><br />
        <div class="row">
          <div class="col-sm-12 text-center">
            <h3 style="color:black;"><?php echo $text_related; ?></h3>
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
                        <span class="price-regular" style="color:black;"><?php echo $product['special']; ?></span>
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
  </div>
</div>

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




<script>
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

</script>

<!-- trial -->

<?php echo $footer; ?>
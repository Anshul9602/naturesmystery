<?php echo $header; ?>
<style>
  @media screen and (max-width:750px) {
    .container {
      padding: 0px;
    }

    .breadcrumb-area {
      display: none;
    }
  }
</style>
<style>
  .product-thumb .price-new {
    font-weight: 600;
    color: darkred;
    font-size: 15px;
  }

  .product-thumb .price-old {
    color: #999;
    text-decoration: line-through;
    margin-left: 10px;
  }

  .flair-badge:after {
    content: "";
    position: absolute;
    top: 10px;
    left: 0;
    float: left;
    width: 4px;
    height: 4px;
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    background: #fff;
    -moz-box-shadow: -1px -1px 2px #f64d84;
    -webkit-box-shadow: -1px -1px 2px #f64d84;
    box-shadow: -1px -1px 2px #f64d84;
  }

  .size-strip {
    width: 100%;
    position: absolute;
    left: 0px;
    border: 0px;
    bottom: 70px;
    text-align: center;
    color: #fff;
    padding: 5px;
  }

  .row {
    margin: 0px;
  }

  .size-strip p {
    float: left;

  }

  .size-list {
    list-style: none;
    margin: 0;
    padding: 0;
    overflow: auto;
    opacity: 0;
  }

  .size-list li {
    display: inline-block;
    letter-spacing: normal;
    margin: 0 2.5px 0;
    background: #fff;
    width: 25px;
    height: 25px;
    color: #333;
    border-radius: 50%;
    text-align: center;
    line-height: 27.5px;

  }

  @media(hover: hover) and (pointer: fine) {
    .foo:hover img:last-child {
      display: inline-block
    }

  }

  .product-thumb:hover .size-list {
    opacity: 1;
  }



  .cate-caption {
    text-align: center;
    margin-top: -60px;
    text-transform: uppercase;
    font-family: 'brandon_grotesquemedium!important';
    color: #fff;
    letter-spacing: 1px;
  }

  .cate-caption {
    font-size: 42px;
    text-transform: uppercase;
    position: absolute;
    width: 100%;
    margin-top: -210px;
  }

  .sold-out {
    font-size: 12px;
  }

  @media screen and (max-width:750px) {
    .sold-out {
      font-size: 10px;
    }

    .cate-wrapper {
      margin-top: 100px;
    }

    .cate-caption {
      font-size: 18px;
      text-transform: uppercase;
      position: absolute;
      width: 100%;
      margin-top: -115px;
    }



    .size-strip {
      display: none !important;
    }
  }

  .product_name {
    font-size: 13px;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
    color:black;
  }

  .foo img:last-child {
    display: none
  }

  .foo:hover img:first-child,
  .foo:active img:first-child,
  .foo:focus img:first-child {
    display: none
  }

  .foo:hover img:last-child,
  .foo:active img:last-child,
  .foo:focus img:last-child {
    display: inline-block
  }

  .price {
    margin-top: -10px;
  }

  aside {
    max-width: 100% !important;
  }
</style>
<!-- breadcrumb area start -->
<div style="display: none;" style="background:none; border-top:thin solid rgb(255,255,255,0.5)" class="breadcrumb-area">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="breadcrumb-wrap">
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
<!-- breadcrumb area end -->
<div class="container">

  <div class="row">
    <div class="col-sm-3">
      <?php echo $column_right; ?>
    </div>
    <div id="content" class="col-sm-9 product-wrapper">

      <?php if ($thumb || $description) { ?>
        <div class="row">
          <?php if ($thumb) { ?>
            <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
          <?php } ?>
          <?php if ($description) { ?>
            <div class="col-sm-10"><?php echo $description; ?></div>
          <?php } ?>
        </div>
        <hr>
      <?php } ?>

      <?php if ($products) { ?>

        <div class="row" style="width: 100%;">

          <div class="col-sm-4"></div>
          <div class="col-sm-4 text-center">
            <h2 style="font-family: 'Lora', serif; font-size:42px"> <?php echo $heading_title; ?></h2>
          </div>
          <div style="margin-top: -80px;" class="col-md-4 col-12">
            <div style="max-width: 200px;float:right; padding-top:5px" class="form-group input-group input-group-sm">
              <label class="input-group-addon" for="input-sort"><?php echo $text_sort; ?>&nbsp;&nbsp;</label>
              <select id="input-sort" class="form-control" onchange="location = this.value;">
                <?php foreach ($sorts as $sorts) { ?>
                  <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                    <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                  <?php } else { ?>
                    <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                  <?php } ?>
                <?php } ?>
              </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <button type="button" class="filter-open"><i class="fa fa-filter"></i></button>
            </div>
          </div>

        </div>
        <br /><br />
        <div id="product_box" class="row">
          <?php $k = 0;
          foreach ($products as $product) { ?>
            <?php if ($k < 6) { ?>
              <div style="margin-bottom:20px" class="product-layout product-grid col-lg-4 col-md-4 col-sm-6 col-6 text-center">
                <div class="product-thumb">
                  <div class="image">
                    <a class="foo" onclick="" href="<?php echo $product['href']; ?>">
                      <img onclick="" style="z-index:99999999" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive pthumb" />
                      <img onclick="" src="<?php print_r($images[$product['product_id']]['popup']); ?>" class="img-responsive" />
                    </a>
                    <span class="size-strip">
                      <ul class="size-list">
                        <?php for ($i = 0; $i < sizeof($product['option']); $i++) {
                          if ($product['option'][$i]['option_id'] == 13) {
                            for ($j = 0; $j < sizeof($product['option'][$i]['product_option_value']); $j++) {
                              echo '<li>' . $product['option'][$i]['product_option_value'][$j]['name'] . '</li>';
                            }
                          }
                        } ?>

                      </ul>
                    </span>
                  </div>
                  <div>


                    <div class="caption">
                      <p class="product_name" style="color:black;"><?php echo $product['name']; ?></p>
                      <?php if ($product['price']) { ?>
                        <p class="price">
                          <?php if (!$product['special']) { ?>
                            <?php echo preg_replace('~\.0+$~', '', $product['price']); ?>
                          <?php } else { ?>

                            <span style="white-space:nowrap" class="price-new"><?php echo $product['special']; ?></span>
                            <span style="white-space:nowrap" class="price-old"><?php echo $product['price']; ?></span>
                          <?php } ?>
                        </p>
                      <?php } ?>
                    </div>

                    <?php if ($product['quantity'] == 0) { ?>
                      <p class="sold-out">Sold Out</p>
                    <?php } ?>
                  </div>
                </div>
              </div>
            <?php } else {
              break;
            } ?>
          <?php $k++;
          } ?>
        </div>


      <?php } ?>


      <?php if (!$categories && !$products) { ?>
        <div class="row" style="min-height: 60vh;">
          <div class="col-sm-12 text-center">
            <br /><br /><br />
            <h3><?php echo $text_empty; ?></h3>
            <a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a>
            <br /><br />
          </div>
        </div>

      <?php } ?>
      <div id="reached"></div>
    </div>

  </div>
</div>

<script>
  $(".filter-open").click(function() {

    $(".filter-slider").animate({
      'left': 0
    })
    $(".overlay").fadeIn();
  })

  $(".overlay").click(function() {
    $(".filter-slider").animate({
      'left': -250
    })
    $(".overlay").fadeOut();
  })
  $(document).ready(function(e) {
    $('.pagination li').each(function() {
      if ($(this).text() == '>' || $(this).text() == '<' || $(this).text() == '>|' || $(this).text() ==
        '|<') {
        $(this).css('display', 'none');
      }
    });
    var start_point = 6;
    var chunk = 6;
    var product_data = <?php print_r(json_encode($products)); ?>;
    var imgss = <?php print_r(json_encode($images)); ?>;



    $(window).scroll(function() {
      if ($('#reached').offset().top < $(this).height() + $(this).scrollTop()) {
        var i;
        console.log(start_point);
        if (start_point < product_data.length) {
          for (i = start_point; i < (start_point + chunk); i++) {
            if (typeof product_data[i] === 'undefined') {
              break;
            } else {
              var p =
                '  <div style="margin-bottom:20px" class="product-layout product-grid col-lg-4 col-md-4 col-sm-6 col-6 text-center">';
              p += '<div class="product-thumb">';
              p += ' <div class="image"><a class="foo" href="' + product_data[i]['href'] + '">';
              p += ' <img style="z-index:99999999" src="' + product_data[i]['thumb'] + '" alt="' +
                product_data[i]['name'] + '" title="' + product_data[i]['name'] +
                '" class="img-responsive pthumb" />';
              p += '<img src="' + imgss[product_data[i]['product_id']]['popup'] +
                '" class="img-responsive" /></a>';

              p += '<span class="size-strip"><ul class="size-list">';

              for (j = 0; j < product_data[i]['option'].length; j++) {
                if (product_data[i]['option'][j]['option_id'] == 13) {
                  for (k = 0; k < product_data[i]['option'][j]['product_option_value']
                    .length; k++) {
                    p += '<li>' + product_data[i]['option'][j]['product_option_value'][k][
                      'name'
                    ] + '</li>';
                  }
                }
              }


              p += '</ul></span></div>';
              p += '<div> <div class="caption"><p class="product_name">' + product_data[i]['name'] +
                '</p>';
              p += '<p class="price">';

              if (!product_data[i]['special']) {
                p += product_data[i]['price'];
              } else {

                p += '<span style="white-space:nowrap" class="price-new">' + product_data[i][
                  'special'
                ] + '</span> <span style="white-space:nowrap" class="price-old">' + product_data[
                  i]['price'] + '</span>';
              }
              p += '</p></div>';

              if (product_data[i]['quantity'] == 0) {
                p += '<p class="sold-out">Sold Out</p>';
              }

              p += '</div>';
              $("#product_box").append(p);
            }

          }
        }

        start_point = start_point + chunk;
      }
    });

  });



  $('body').on("mouseenter", ".foo", function() {
    $(this).find('img').eq(0).css('display', "none");
    $(this).find('img').eq(1).css('display', "inline-block");
  })

  $('body').on("mouseleave", ".foo", function() {
    $(this).find('img').eq(1).css('display', "none");
    $(this).find('img').eq(0).css('display', "inline-block");
  })
</script>


<?php echo $footer; ?>
<?php echo $header; ?>
<div class="container">
    <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
    <div class="row"><?php echo $column_left; ?>
   <?php if ($column_left && $column_right) { ?>
   <?php $class = 'col-sm-6'; ?>
   <?php } elseif ($column_left || $column_right) { ?>
   <?php $class = 'col-sm-9'; ?>
   <?php } else { ?>
   <?php $class = 'col-sm-12'; ?>
   <?php } ?>
   <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
     
      <div class="panel panel-default" id="main-panel">
        <div class="panel-heading"><b><?php echo $btitles; ?> </b></div>
        <div class="panel-body">
          <div class="panel-body">
            <?php if(!empty($path)){?>
			<h2><?php echo $heading_title; ?></h2>
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
			  <?php } else {?>
				<p><?php echo $description; ?></p>
			  <?php } ?>
          </div>

          <?php if($bundles) { ?>
          <?php foreach($bundles as $bundle) { ?>
      <!-- 18 09 2019 -->
        <form action="" method="post" enctype="multipart/form-data" class="tmdcartbundle<?php echo $bundle['bundle_id']; ?>">
          <input type="hidden" name="bundle_id" value="<?php echo $bundle['bundle_id']; ?>"/>
      <!-- 18 09 2019 -->
          <div class="panel panel-default">
            <div class="panel-heading"><b><?php echo $bundle['title'] ?></b>
			<!--13 aug 2020-->
				<div class="pull-right countdown">
					<a href="javascript:void(0);" style="padding:1px;" class="btn-lg btn-block timer<?php echo $bundle['bundle_id']; ?>" id="timer"><i class="fa fa-clock-o"></i> <b class="countdown<?php echo $bundle['bundle_id']; ?>"></b></a>
				</div>
			<!--13 aug 2020-->
			</div>
            <div class="panel-body">
            <div class="row">
              <?php foreach($bundle['product_infos'] as $product) { ?>
                
              <div class="product-layout col-md-2 col-sm-4 col-xs-12">
                <!-- 18 09 2019 -->
                  <input type="hidden" name="bundleproduct[<?php echo $product['product_id']; ?>][product_id]" value="<?php echo $product['product_id']; ?>" />
                  <input type="hidden" name="bundleproduct[<?php echo $product['product_id']; ?>][quantity]" value="<?php echo $product['minimum']; ?>" />
                <!-- 18 09 2019 -->
                <div class="product-thumb">
                  <div class="image">
                    <a href="<?php echo $product['href']; ?>">
                    <img src="<?php echo $product['image']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="bundle-thumb"/></a>
                    <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                    <p>
                     
                      <span class="label label-success"><?php echo $product['minimum']; ?></span>
                    
                    </p>
                    <p><?php echo $product['price']; ?></p>
                  </div>
                </div>
              </div>
              <?php } ?>
                <?php if(!empty($bundle['newprice'])) { ?>
              <div class="product-layout total col-md-3 col-sm-4"> 
                 
                <div class="product-thumb">
                  <div class="text-center">                    
                    <p><span class="bundle_discount"><?php echo $text_regularprice; ?> <span style="color:red; text-decoration: line-through;"><?php echo $bundle['total']; ?></span></span></p>
                    <h5><span class="bundle_discount"><?php echo $text_price; ?> <?php echo $bundle['newprice']; ?></span></h5>
                    <p><span class="bundle_discount"><?php echo $text_save; ?> <?php echo $bundle['discount']; ?></span></p>
                                       
                    <div style="margin-bottom:5px;">
                  <!-- 18 09 2019 -->
                      <button type="button" rel="<?php echo $bundle['bundle_id']; ?>" class="btn btn-primary bundle-cart addloading<?php echo $bundle['bundle_id']; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_addtocart; ?></span></button>
                  <!-- 18 09 2019 -->
                    </div>
                  </div>
                </div>
              </div>
			<?php } ?>
             </div>
            </div>
          </div>
			
          </form>
		  <script>
		  var bundle_id      = '<?php echo $bundle['bundle_id']; ?>';
		  $('.timer'+bundle_id).each(function() {
			var exdate  = '<?php echo $bundle['date_to']; ?>';
			var bundle_id = '<?php echo $bundle['bundle_id']; ?>';
			var ex_date  = exdate * 1000;
			var now      = <?php echo time() ?> * 1000;
			var x = setInterval(function() {

			  now = now + 1000;

			  var distance = ex_date - now;
			  if(distance!=0) {
				var days = Math.floor(distance / (1000 * 60 * 60 * 24));
				var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
				var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
				var seconds = Math.floor((distance % (1000 * 60)) / 1000);
				$('.countdown' + bundle_id).html(days + '<span>Days</span> '+ hours + '<span>H:</span> '+ minutes + '<span>M:</span> '+ seconds + '<span>S</span>');
			  }


			}, 1000);
		  });
		</script>
          <?php } ?>
          <?php } else { ?>
            <div class="col-sm-12 text-center"><h2><strong><?php echo $text_no_result; ?></strong></h2></div>
          <?php } ?>
          <div class="row">
            <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
            <div class="col-sm-6 text-right"><?php echo $results; ?></div>
          </div>
        </div>
      </div>   

      <?php echo $content_bottom; ?>
        </div>
        <?php echo $column_right; ?>
      </div>
</div>

<!-- 18 09 2019 -->

<script type="text/javascript"><!--
$(document).on('click','.bundle-cart',function() {
  bundle_id=$(this).attr('rel');
  $.ajax({
    url: 'index.php?route=bundle/bundleproduct/addToCart',
    type: 'post',
    data :$('.tmdcartbundle'+bundle_id).serialize(),
    dataType: 'json',
    beforeSend: function() {
      $('.addloading'+bundle_id).button('loading');
    },
    complete: function() {
      $('.addloading'+bundle_id).button('reset');
    },
    success: function(json) {
      $('.alert, .text-danger').remove();
      $('.form-group').removeClass('has-error');

      if (json['redirect']) {
        location = json['redirect'];
      }

      if (json['success']) {
        $('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

        $('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');

        $('html, body').animate({ scrollTop: 0 }, 'slow');

        $('#cart > ul').load('index.php?route=common/cart/info ul li');
      }
    },
    error: function(xhr, ajaxOptions, thrownError) {
        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
    }
  });
});
//--></script>
<!-- 18 09 2019 -->

<?php echo $footer; ?>
<style>
.padd0{padding: 0px;}
.bgc1{background: #48c0f0;color: #fff;padding: 12px;}
.bgc1{background: #1c95e6;color: #fff;padding: 12px;}

.product-layout:first-child .plusign{
  display:none;
}
.plusign .fa{
  font-size:14px;
}
.plusign{
  float:left;
  display: inline-block;
  margin:50% 6% 0 -16%;
}
.plusign1{
  float:left;
  display: inline-block;
  margin:50% 6% 0 -11%;
}
.total h5{
    font-weight: bold;
    font-size: 14px;
}
@media (min-width: 1200px) {
    .bundle-bundleproduct .col-md-2{
        width:20% !important;
        clear: none !important;
    } 
    .bundle-bundleproduct .product-layout:nth-child(5n+1) .plusign{
        display:none;
    }
}
@media (min-width: 992px) and (max-width: 1199px) {
    .bundle-bundleproduct .col-md-2{
        width:25% !important;
        clear: none !important;
    }
    .bundle-bundleproduct .product-layout:nth-child(4n+1) .plusign{
        display:none;
    }
}
@media (min-width: 768px) and (max-width: 991px) {
    .bundle-bundleproduct .col-md-2{
        width:32% !important;
        clear: none !important;
    }
    .bundle-bundleproduct .product-layout:nth-child(3n+1) .plusign{
        display:none;
    }
}
</style>
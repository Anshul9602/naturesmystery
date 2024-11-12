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
   <div id="content" class="<?php echo $class; ?> product-bundle"><?php echo $content_top; ?>
      
      <div class="panel panel-default" id="main-panel">
        <div class="panel-heading"><b><?php echo $btitles; ?> </b></div>
        <div class="panel-body">
          <div class="panel-body">
            <p><?php echo $description; ?></p>
          </div>

          <?php if($bundles) { ?>
          <?php foreach($bundles as $bundle) { ?>
          <form action="" method="post" enctype="multipart/form-data" class="tmdcartbundle<?php echo $bundle['bundle_id']; ?>">
          <input type="hidden" name="bundle_id" value="<?php echo $bundle['bundle_id']; ?>"/>
          <div class="panel panel-default">
            <div class="panel-heading"><b><?php echo $bundle['title'] ?></b>
            <!--13 aug 2020-->
              <div class="pull-right">
                <a href="javascript:void(0);" style="padding:1px;" class="btn-lg btn-block timer<?php echo $bundle['bundle_id']; ?>" id="timer"><i class="fa fa-clock-o"></i> <b class="countdown<?php echo $bundle['bundle_id']; ?>"></b></a>
              </div>
            </div>
            <!--13 aug 2020-->
            <div class="panel-body">
            <div class="row">
              <?php foreach($bundle['product_infos'] as $product) { ?>
              <input type="hidden" name="bundleproduct[<?php echo $product['product_id']; ?>][product_id]" value="<?php echo $product['product_id']; ?>" />
                  <input type="hidden" name="bundleproduct[<?php echo $product['product_id']; ?>][quantity]" value="<?php echo $product['minimum']; ?>" />
              <div class="product-layout col-md-2 col-sm-4 col-xs-12">
                
                <div class="product-thumb">
              <div class="image">
                <a class="product-img" href="<?php echo $product['href']; ?>">
                <img src="<?php echo $product['image']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="bundle-thumb"/></a>
              </div>
              <div class="caption">
                  <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                  <p>
                   
                    <span class="label label-success"><?php echo $product['minimum']; ?></span>
                    
                  </p>
                  <p><?php echo $product['price']; ?></p>
                    
                </div>
              </div>
              </div>
              <?php } ?>
                <?php if(!empty($bundle['newprice'])) { ?>
              <div class="product-layout total col-md-2 col-sm-4 col-xs-12"> 
                  
                <div class="product-thumb">
                  <div class="text-center">
                    <p><span class="bundle_discount"><?php echo $text_regularprice; ?> <span style="color:red; text-decoration: line-through;"><?php echo $bundle['total']; ?></span></span></p>
                    <h5><span class="bundle_discount"><?php echo $text_price; ?> <?php echo $bundle['newprice']; ?></span></h5>
                    <p><span class="bundle_discount"><?php echo $text_save; ?> <?php echo $bundle['discount']; ?></span></p>
                                       
                    <div style="margin-bottom:5px;">
                      <button type="button" rel="<?php echo $bundle['bundle_id']; ?>" class="btn btn-primary" id="bundle-cart"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_addtocart; ?></span></button>
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

<script type="text/javascript"><!--
$(document).on('click','#bundle-cart',function() {
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
        if (json['notification']) {
          parent.show_notification(json['notification']);
        } else {
          parent.$('#content').parent().before('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + ' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');
        }

        parent.$('#cart-total').html(json['total']);
        parent.$('#cart-items').html(json['items_count']);

        if (Journal['scrollToTop']) {
          parent.$('html, body').animate({ scrollTop: 0 }, 'slow');
        }

        parent.$('.cart-content ul').load('index.php?route=common/cart/info ul li');
      }
    },
    error: function(xhr, ajaxOptions, thrownError) {
        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
    }
  });
});
//--></script>

<?php echo $footer; ?>
<style>
    .product-bundle .product-layout {padding: 0 15px;}
.product-bundle .product-thumb {
    border-radius: 5px;
    border:1px solid #ddd !important;
    min-height: 275px;
}
.product-bundle .total .product-thumb{
    padding-top: 15px;
}
.product-bundle .product-thumb .caption {
    background: rgba(255, 255, 255, 1);
    text-align: center;
}
.product-bundle .product-thumb:hover {
    box-shadow: 5px 10px 30px -5px rgba(0, 0, 0, 0.3);
}
.product-bundle .product-thumb .name {
    display: flex;
    width: auto;
    margin-left: auto;
    margin-right: auto;
    justify-content: center;
    margin-left: auto;
    margin-right: auto;
    padding: 10px;
    padding-bottom: 10px;
    padding-bottom: 5px;
}
.product-bundle .product-layout:first-child .plusign{
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
    .product-bundle .product-layout:nth-child(5n+1) .plusign{
        display:none;
    }
}
@media (min-width: 992px) and (max-width: 1199px) {
    .product-bundle .product-layout:nth-child(4n+1) .plusign{
        display:none;
    }
}
@media (min-width: 768px) and (max-width: 991px) {
    .product-bundle .product-layout:nth-child(3n+1) .plusign{
        display:none;
    }
}
</style>
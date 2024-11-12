<?php echo $header; ?>
<div id="container" class="container j-container">
    <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
    <div class="row"><?php echo $column_left; ?><?php echo $column_right; ?>
   <?php if ($column_left && $column_right) { ?>
   <?php $class = 'col-sm-6'; ?>
   <?php } elseif ($column_left || $column_right) { ?>
   <?php $class = 'col-sm-9'; ?>
   <?php } else { ?>
   <?php $class = 'col-sm-12'; ?>
   <?php } ?>
   <div id="content" class="<?php echo $class; ?> bundle-bundleproduct"><?php echo $content_top; ?>
      
      <div class="panel panel-default" id="main-panel">
        <div class="panel-heading"><b><?php echo $btitles; ?> </b></div>
        <div class="panel-body">
          <div class="panel-body">
            <p><?php echo $description; ?></p>
          </div>

          <?php if($bundles) { ?>
          <?php foreach($bundles as $bundle) { ?>
		  <!-- 18 09 2019 -->
        <form action="" method="post" enctype="multipart/form-data" class="tmdcartbundle<?php echo $bundle['bundle_id']; ?>">
          <input type="hidden" name="bundle_id" value="<?php echo $bundle['bundle_id']; ?>"/>
      <!-- 18 09 2019 -->
          <div class="panel panel-default">
            <div class="panel-heading"><b><?php echo $bundle['title'] ?></b></div>
            <div class="panel-body">
            <div class="row">
              <?php foreach($bundle['product_infos'] as $product) { ?>
                
              <div class="product-layout xs-100 sm-50 md-33 lg-25 xl-25">
			  <!-- 18 09 2019 -->
                  <input type="hidden" name="bundleproduct[<?php echo $product['product_id']; ?>][product_id]" value="<?php echo $product['product_id']; ?>" />
                  <input type="hidden" name="bundleproduct[<?php echo $product['product_id']; ?>][quantity]" value="<?php echo $product['minimum']; ?>" />
                <!-- 18 09 2019 -->
                 
                <div class="product-thumb product-wrapper">
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
              <div class="product-layout xs-100 sm-50 md-33 lg-25 xl-25"> 
                  
                <div class="product-thumb">
                  <div class="text-center">
                    <p><span class="bundle_discount"><?php echo $text_regularprice; ?> <span style="color:red; text-decoration: line-through;"><?php echo $bundle['total']; ?></span></span></p>
                    <h5><span class="bundle_discount"><?php echo $text_price; ?> <?php echo $bundle['newprice']; ?></span></h5>
                    <p><span class="bundle_discount"><?php echo $text_save; ?> <?php echo $bundle['discount']; ?></span></p>
                                       
                    <div style="margin-bottom:5px;">
                      <!-- 18 09 2019 -->
                      <button type="button" rel="<?php echo $bundle['bundle_id']; ?>" class="btn btn-primary" id="bundle-cart"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_addtocart; ?></span></button>
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
          <?php } ?>
          <?php } else { ?>
            <div class="col-sm-12 text-center"><h2><strong><?php echo $text_no_result; ?></strong></h2></div>
          <?php } ?>
          <div class="row pagination">
             <div class="col-sm-6 text-left links"><?php echo $pagination; ?></div>
             <div class="col-sm-6 text-right results"><?php echo $results; ?></div>
          </div>
        </div>
      </div>
      <?php echo $content_bottom; ?></div>
      </div>
</div>

<!-- 18 09 2019 -->

<script type="text/javascript"><!--
$(document).on('click','#bundle-cart',function() {
  bundle_id=$(this).attr('rel');
  $.ajax({
    url: 'index.php?route=bundle/bundleproduct/addToCart',
    type: 'post',
    data :$('.tmdcartbundle'+bundle_id).serialize(),
    dataType: 'json',
    beforeSend: function() {
      $('#bundle-cart').button('loading');
    },
    complete: function() {
      $('#bundle-cart').button('reset');
    },
    success: function(json) {
      $('.alert, .text-danger').remove();
      $('.form-group').removeClass('has-error');

      if (json['redirect']) {
        location = json['redirect'];
      }

      if (json['success']) {
        if (!Journal.showNotification(json['success'], json['image'], true)) {
            $('.breadcrumb').after('<div class="alert alert-success success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
        }

        $('#cart-total').html(json['total']);

          if (Journal.scrollToTop) {
              $('html, body').animate({ scrollTop: 0 }, 'slow');
          }

        $('#cart ul').load('index.php?route=common/cart/info ul li');
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
.product-layout:first-child .plusign{
	display:none;
}
.plusign .fa{
	font-size:14px;
}
.plusign{
	float:left;
	display: inline-block;
	margin:50% 6% 0 -10%;
}

.plusign1{
	float:left;
	display: inline-block;
	margin:50% 6% 0 -10%;
}
.total h5{
    font-weight: bold;
    font-size: 14px;
}
.panel-heading {
  background-color: rgb(234, 35, 73);
  color: #fff;
}
.bundle-bundleproduct .col-md-2{
  float: left;
}
.bundle-bundleproduct .product-thumb{
    border: 1px solid #ddd;
    min-height: 225px;
    padding: 15px;
}
.bundle-bundleproduct .product-wrapper{
    padding: 0px;
}
.bundle-bundleproduct .quickview-button{display: none !important;}
.bundle-bundleproduct .product-thumb h5, .bundle-bundleproduct .product-thumb h4{
  margin: 10px 0;
}
.bundle-bundleproduct .product-thumb p{
  margin: 0 0 10px;
}
.bundle-bundleproduct .product-layout {
    margin-bottom: 20px;
    text-align: center;
}
.panel-body{border:1px solid #ddd;margin-bottom: 20px;}
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
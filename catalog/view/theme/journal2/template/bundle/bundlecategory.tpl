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
      <?php if ($categories) { ?>
      <h3><?php echo $text_refine; ?></h3>
      <?php if (count($categories) <= 5) { ?>
      <div class="row">
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php } else { ?>
      <div class="row">
        <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <?php } ?>
      <?php if ($categorybundles) { ?>
      
      <?php foreach($categorybundles as $result) { ?>
      <form method="post" enctype="multipart/form-data" class="tmdcartbundle<?php echo $result['bundle_id']; ?>">
        <input type="hidden" name="bundle_id" value="<?php echo $result['bundle_id']; ?>"/>
      <div class="panel panel-default">
        <div class="panel-heading"><b><?php echo $result['title'] ?></b></div>
        <div class="panel-body">
        <div class="row">
          <?php foreach($result['product_infos'] as $product) { ?>
          <input type="hidden" name="bundleproduct[<?php echo $product['product_id']; ?>][product_id]" value="<?php echo $product['product_id']; ?>" />
          <input type="hidden" name="bundleproduct[<?php echo $product['product_id']; ?>][quantity]" value="<?php echo $product['minimum']; ?>" />
          <div class="product-layout col-sm-3">
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
            <?php if(!empty($result['newprice'])) { ?>
          <div class="product-layout total col-sm-3"> 
            <div class="product-thumb">
              <div class="text-center">
                <p><span class="bundle_discount"><?php echo $text_regularprice; ?> <span style="color:red;text-decoration: line-through;"><?php echo $result['total']; ?></span></span></p>
                <h5><span class="bundle_discount"><strong><?php echo $text_price; ?> <?php echo $result['newprice']; ?></strong></span></h5>
                <p><span class="bundle_discount"><?php echo $text_save; ?> <?php echo $result['discount']; ?></span></p>
                
                <div style="margin-bottom:5px;">
                  <a href="<?php echo $result['bundlehref']; ?>" target="_new" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_addtocart; ?></span></a>
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
      
      <?php } ?>
      <?php if (!$categories && !$categorybundles) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>

<script type="text/javascript"><!--
$(document).on('click','#category-cart',function() {
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

<?php echo $footer; ?>

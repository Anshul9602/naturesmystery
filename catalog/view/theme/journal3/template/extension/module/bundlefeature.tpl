<h3><?php echo $heading_title; ?></h3>
<?php foreach($bundlefeatures as $result) { ?>
<form action="" method="post" enctype="multipart/form-data" class="tmdcartbundle<?php echo $result['bundle_id']; ?>">
  <input type="hidden" name="bundle_id" value="<?php echo $result['bundle_id']; ?>"/>
  <div class="panel panel-default">
    <div class="panel-heading"><b><?php echo $result['title'] ?></b>
    <!--13 aug 2020-->
      <div class="pull-right">
        <a href="javascript:void(0);" style="padding:1px;" class="btn-lg btn-block timer<?php echo $result['bundle_id']; ?>" id="timer"><i class="fa fa-clock-o"></i> <b class="countdown<?php echo $result['bundle_id']; ?>"></b></a>
      </div>
    </div>
    <!--13 aug 2020-->
    <div class="panel-body">
    <div class="">
      <?php foreach($result['product_infos'] as $product) { ?>
       <input type="hidden" name="bundleproduct[<?php echo $product['product_id']; ?>][product_id]" value="<?php echo $product['product_id']; ?>" />
              <input type="hidden" name="bundleproduct[<?php echo $product['product_id']; ?>][quantity]" value="<?php echo $product['minimum']; ?>" />
      <div class="product-layout col-md-2 col-sm-4 col-xs-12">
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
        <?php if (!empty($result['newprice'])) { ?>
      <div class="product-layout total col-md-2 col-sm-4 col-xs-12"> 
        <div class="product-thumb">
          <div class="text-center">
            <p><span class="bundle_discount"><?php echo $text_regularprice; ?> <span class="text-danger" style="text-decoration: line-through;"><?php echo $result['total']; ?></span></span></p>
            <h5><span class="bundle_discount"><strong><?php echo $text_price; ?> <?php echo $result['newprice']; ?></strong></span></h5>
            <p><span class="bundle_discount"><?php echo $text_save; ?> <?php echo $result['discount']; ?></span></p>
            
            <div style="margin-bottom:5px;">
              <button type="button" rel="<?php echo $result['bundle_id']; ?>" class="btn btn-primary addloading<?php echo $result['bundle_id']; ?>" id="bundle-cart"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_addtocart; ?></span></button>
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
  var bundle_id      = '<?php echo $result['bundle_id']; ?>';
  $('.timer'+bundle_id).each(function() {
  var exdate  = '<?php echo $result['date_to']; ?>';
  var bundle_id = '<?php echo $result['bundle_id']; ?>';
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
<script type="text/javascript">
$(document).on('click','#bundle-cart',function() {
  bundle_id=$(this).attr('rel');
  $.ajax({
    url: 'index.php?route=extension/module/relatedbundle/addToCart',
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
        $('#content').parent().before('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + ' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');

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
</script>
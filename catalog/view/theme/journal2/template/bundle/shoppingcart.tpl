<?php echo $header; ?>
<div id="container" class="container j-container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger warning"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?><?php echo $column_right; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="row">
        <div class="col-sm-6 text-left">
          <h2><?php echo $heading_title; ?></h2>
        </div>
		<?php if($groupdiscount) { ?>
        <div class="col-sm-6 text-right" style="margin-top:5px;">
          <span style="background-color:#5bb75b; color:#fff; padding:5px;"><b>Bundle Discount = <?php echo $groupdiscount; ?></b></span>
        </div>
		<?php } ?>
      </div>
      <form action="" method="post" enctype="multipart/form-data" class="tmdbundle">
        <div class="table-responsive cart-info">
          <table class="table table-bordered">
            <thead>
              <tr>
                <td class="text-center image"><?php echo $column_image; ?></td>
                <td class="text-left name"><?php echo $column_name; ?></td>
                <td class="text-left model"><?php echo $column_model; ?></td>
                <td class="text-left quantity"><?php echo $column_quantity; ?></td>
                <td class="text-left price"><?php echo $column_price; ?></td>
                <td class="text-center"><?php echo $column_option; ?></td>
              </tr>
            </thead>
            <tbody >
              <?php foreach ($bundleproducts as $product) { ?>
              <tr >
                <input type="hidden" name="product[<?php echo $product['product_id']; ?>][product_id]" value="<?php echo $product['product_id']; ?>" />
                <td class="text-center image"><?php if ($product['thumb']) { ?>
                  <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                  <?php } ?>
                </td>

                <td class="text-left name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></td>
                <td class="text-left model"><?php echo $product['model']; ?></td>
                <td class="text-left quantity"><?php echo $product['quantity']; ?>
                  <input type="hidden" name="product[<?php echo $product['product_id']; ?>][quantity]" value="<?php echo $product['quantity']; ?>" />
                </td>
                <td class="text-left price">
                  <?php if ($product['special']) { ?>
                  <span style="color:red; text-decoration: line-through;"><?php echo $product['proprice']; ?></span><br/>
                  <strong><?php echo $product['special']; ?></strong>
                  <?php } else { ?>
                  <?php echo $product['proprice']; ?>
                  <?php } ?>
                </td>

                <td class="text-left" id="product">
                  <?php if (isset($product['options'])) { ?>
                  <?php foreach ($product['options'] as $option) { ?>
                    <?php if ($option['type'] == 'select') { ?>
                      <div class="option form-group<?php echo ($option['required'] ? ' required' : ''); ?> option-<?php echo $option['type']; ?>">
                        <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                        <select name="product[<?php echo $product['product_id'] ?>][option][<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
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
                    <div class="option form-group<?php echo ($option['required'] ? ' required' : ''); ?> option-<?php echo $option['type']; ?>">
                    <label class="control-label"><?php echo $option['name']; ?></label>
                    <div id="input-option<?php echo $option['product_option_id']; ?>">
                    <?php foreach ($option['product_option_value'] as $option_value) { ?>
                    <div class="radio">
                    <label>
                    <input type="radio" name="product[<?php echo $product['product_id']; ?>][option][<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
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
                    <div class="option form-group<?php echo ($option['required'] ? ' required' : ''); ?> option-<?php echo $option['type']; ?>">
                    <label class="control-label"><?php echo $option['name']; ?></label>
                    <div id="input-option<?php echo $option['product_option_id']; ?>">
                    <?php foreach ($option['product_option_value'] as $option_value) { ?>
                    <div class="checkbox">
                    <label>
                    <input type="checkbox" name="product[<?php echo $product['product_id']; ?>][option][<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
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
                    <div class="option form-group<?php echo ($option['required'] ? ' required' : ''); ?> option-<?php echo $option['type']; ?>">
                      <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                      <input type="text" name="product[<?php echo $product['product_id'] ?>][option][<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                    </div>
                    <?php } ?>
                    <?php if ($option['type'] == 'textarea') { ?>
                    <div class="option form-group<?php echo ($option['required'] ? ' required' : ''); ?> option-<?php echo $option['type']; ?>">
                      <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                      <textarea name="product[<?php echo $product['product_id'] ?>][option][<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
                    </div>
                    <?php } ?>

                    <?php if ($option['type'] == 'file') { ?>
                    <div class="option form-group<?php echo ($option['required'] ? ' required' : ''); ?> option-<?php echo $option['type']; ?>">
                      <label class="control-label"><?php echo $option['name']; ?></label>
                      <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
                      <input type="hidden" name="product[<?php echo $product['product_id'] ?>][option][<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
                    </div>
                    <?php } ?>
                    <?php if ($option['type'] == 'date') { ?>
                    <div class="option form-group<?php echo ($option['required'] ? ' required' : ''); ?> option-<?php echo $option['type']; ?>">
                      <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                      <div class="input-group date">
                        <input type="text" name="product[<?php echo $product['product_id'] ?>][option][<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                        <span class="input-group-btn">
                        <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                        </span></div>
                    </div>
                    <?php } ?>
                    <?php if ($option['type'] == 'datetime') { ?>
                    <div class="option form-group<?php echo ($option['required'] ? ' required' : ''); ?> option-<?php echo $option['type']; ?>">
                      <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                      <div class="input-group datetime">
                        <input type="text" name="product[<?php echo $product['product_id'] ?>][option][<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                        <span class="input-group-btn">
                        <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                        </span></div>
                    </div>
                    <?php } ?>
                    <?php if ($option['type'] == 'time') { ?>
                    <div class="option form-group<?php echo ($option['required'] ? ' required' : ''); ?> option-<?php echo $option['type']; ?>">
                      <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                      <div class="input-group time">
                        <input type="text" name="product[<?php echo $product['product_id'] ?>][option][<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                        <span class="input-group-btn">
                        <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                        </span></div>
                    </div>
                    <?php } ?>
                                                 
                    <?php } ?>
                    <?php } ?>
                    <?php if ($product['recurrings']) { ?>
                    <hr>
                    <h3><?php echo $text_recurring_item; ?></h3>
                    <div class="form-group required">
                      <select name="recurring_id" class="form-control">
                        <option value=""><?php echo $text_select; ?></option>
                        <?php foreach ($product['recurrings'] as $recurring) { ?>
                        <option value="<?php echo $recurring['recurring_id']; ?>"><?php echo $recurring['name']; ?></option>
                        <?php } ?>
                      </select>
                      <div class="help-block" id="recurring-description"></div>
                    </div>
                    <?php } ?>
                </td>
              </tr>
              <?php } ?>
            </tbody>
          </table>
            <tfoot>
              <tr>
                <td colspan="7">
                  <div class="buttons pull-right">
                    <button type="button" rel="<?php echo $bundle_id; ?>" id="button-cart" class="btn btn-primary  btn-lg " ><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span> <i class="fa fa-shopping-cart"></i></button>
                    <button type="button" class="btn btn-primary btn-lg deletess"><?php echo $button_shopping; ?></button>
                  </div>
                </td>
              </tr>                       
            </tfoot>

        </div>
      </form>
      <?php echo $content_bottom; ?></div>
    </div>
</div>

<script type="text/javascript"><!--
$(document).on('click','#button-cart',function() {
  bundle_id=$(this).attr('rel');
  $.ajax({
    url: 'index.php?route=bundle/shoppingcart/addbundle&bundle_id='+bundle_id,
    type: 'post',
    data :$('.tmdbundle').serialize(),
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

      for(j in json) {
        if (json[j]['error']) {
          if (json[j]['error']['option']) {
              for (i in json[j]['error']['option']) {
                var element = $('#input-option' + i.replace('_', '-'));

                if (element.parent().hasClass('input-group')) {
                  element.parent().after('<div class="text-danger">' + json[j]['error']['option'][i] + '</div>');
                } else {
                  element.after('<div class="text-danger">' + json[j]['error']['option'][i] + '</div>');
                }
              }

          }

          if (json[j]['error']['recurring']) {
            $('select[name=\'recurring_id\']').after('<div class="text-danger">' + json[j]['error']['recurring'] + '</div>');
          }

          // Highlight any found errors
          $('.text-danger').parent().addClass('has-error');
        }
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

<script>
//File Upload
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
        },
        error: function(xhr, ajaxOptions, thrownError) {
          alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
      });
    }
  }, 500);
});
</script>

<script>
$(document).on('click','.deletess',function() {
  var bundle_id=$(this).attr('rel1');
  
  $.ajax({
  url: 'index.php?route=bundle/shoppingcart/deletecart&bundle_id='+bundle_id,
  type:'post',
  dataType:'json',
    beforeSend: function() {
  },
  success: function(json) {
    if (json['success']) {
      $('.breadcrumb').after('<div class="alert alert-success success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
    }
  }
});
});
  
</script>


<?php echo $footer; ?>
<style>
.cart-info .hide{
  display: none; 
}
#button-cart {
  font-size: 13px;
}
</style>
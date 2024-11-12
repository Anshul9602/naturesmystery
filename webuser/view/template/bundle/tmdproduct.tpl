<div class="modal-dialog">
  <div class="modal-content">
    <div class="modal-header">
      <h3 class="modal-title"><?php echo $entry_product?></h3>
      <div class="pull-right">
        <button type="submit" form="form-managepro" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>"><button type="button" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></button></a>
      </div>
    </div>
    <div class="modal-body">
      <div class="tmdsuccess"></div>
      <form action="<?php echo $proaction; ?>" method="post" enctype="multipart/form-data" id="form-managepro" class="addresss<?php echo $order_id; ?> form-horizontal">
        <div class="form-group">
            <label class="col-sm-2 control-label" for="input-product"><span data-toggle="tooltip" title="<?php echo $help_product; ?>"><?php echo $entry_product; ?></span></label>
            <div class="col-sm-10">
              <input type="text" name="product" value="" placeholder="<?php echo $entry_product; ?>" id="input-product" class="form-control" />
              <div id="bundle-product" class="well" style="height: 200px; overflow: auto;">
                <?php $rows=0; ?>
                <?php foreach ($bundle_products as $bundle_product) { ?>
                <div class="form-group rmvfield<?php echo $rows; ?>">
                  <label class="col-sm-3 control-label" for="input-qty<?php echo $bundle_product['product_id']; ?>"><?php echo $bundle_product['name']; ?></label>
                  <div class="col-sm-6">
                    <div class="input-group">
                      <input type="hidden" name="bundle_product[<?php echo $bundle_product['product_id']; ?>][product_id]" value="<?php echo $bundle_product['product_id']; ?>" placeholder="<?php echo $bundle_product['name']; ?>" id="input-quantity<?php echo $bundle_product['product_id']; ?>" class="form-control">
                      <input type="text" name="bundle_product[<?php echo $bundle_product['product_id']; ?>][quantity]" value="<?php echo $bundle_product['quantity']; ?>" placeholder="<?php echo $bundle_product['name']; ?>" id="input-quantity<?php echo $bundle_product['product_id']; ?>" class="form-control">
                      <span class="input-group-btn">
                        <button class="btn btn-danger" onclick="$('.rmvfield<?php echo $rows; ?>').remove();" type="button"><i class="fa fa-trash"></i></button>
                      </span>
                    </div>
                  </div>
                </div>
                <?php $rows++; ?>
                <?php } ?>
              </div>
            </div>
          </div>
      </form>
    </div>
  </div>
</div>

<script>
var rows = 0;
$('input[name=\'product\']').autocomplete({
  'source': function(request, response) {
    $.ajax({
      url: 'index.php?route=bundle/bundleproduct/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
      dataType: 'json',
      success: function(json) {
        response($.map(json, function(item) {
          return {
            label: item['name'],
            value: item['product_id'],
            price: item['price']
          }
        }));
      }
    });
  },
  'select': function(item) {
    html  = '';
    html += ' <input type="hidden" name="bundle_product[' + item['value'] + '][name]" value="' + item['label'] + '" />';
    html += ' <input type="hidden" name="bundle_product[' + item['value'] + '][product_id]" value="' + item['value'] + '" />';

    html += ' <div class="form-group rmvfield'+rows+'"">';
    html += '   <label class="col-sm-3 control-label" for="input-required' + item['value'] + '">'+item['label']+'</label>';
    html += '   <div class="col-sm-6"><div class="input-group">';
    html +='    <input type="text" name="bundle_product[' + item['value'] + '][quantity]" placeholder="'+item['label']+'" id="input-required' + item['value'] + '" class="form-control">';
    html += ' <span class="input-group-btn">';
    html += ' <button class="btn btn-danger removess" onclick="$(\'.rmvfield' + rows + '\').remove();" type="button"><i class="fa fa-trash"></i></button>';
    html += ' </span>';
    html += ' </div></div>';
    html += ' </div>';
    $('#bundle-product').append(html);
    rows++;
  }
});

$('#bundle-product').delegate('.fa-minus-circle', 'click', function() {
  $(this).parent().remove();
});

</script>


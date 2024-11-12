<div class="modal-dialog">
  <div class="modal-content">
    <div class="modal-header">
      <h3 class="modal-title"><?php echo $entry_managecategoriess?></h3>
      <div class="pull-right">
        <button type="submit" form="form-managecate" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>"><button type="button" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></button></a>
      </div>
    </div>
    <div class="modal-body">
      <div class="tmdsuccess"></div>
      <form action="<?php echo $cateaction; ?>" method="post" enctype="multipart/form-data" id="form-managecate" class="addresss<?php echo $order_id; ?> form-horizontal">
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-category"><span data-toggle="tooltip" title="<?php echo $help_category; ?>"><?php echo $entry_category; ?></span></label>
          <div class="col-sm-10">
            <input type="text" name="category" value="" placeholder="<?php echo $entry_category; ?>" id="input-category" class="form-control" />
            <div id="bundle-category" class="well well-sm" style="height: 150px; overflow: auto;">
              <?php foreach ($bundle_categories as $bundle_category) { ?>
              <div id="bundle-category<?php echo $bundle_category['bundle_category_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $bundle_category['name']; ?>
                <input type="hidden" name="bundle_category[]" value="<?php echo $bundle_category['bundle_category_id']; ?>" />
              </div>
              <?php } ?>
            </div>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>

<script>
$('input[name=\'category\']').autocomplete({
  'source': function(request, response) {
    $.ajax({
      url: 'index.php?route=bundle/category/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
      dataType: 'json',
      success: function(json) {
        response($.map(json, function(item) {
          return {
            label: item['name'],
            value: item['bundle_category_id'],
          }
        }));
      }
    });
  },
  'select': function(item) {
    $('input[name=\'category\']').val('');

    $('#bundle-category' + item['value']).remove();

    $('#bundle-category').append('<div id="bundle-category' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="bundle_category[]" value="' + item['value'] + '" /></div>');
  }
});

$('#bundle-category').delegate('.fa-minus-circle', 'click', function() {
  $(this).parent().remove();
});
</script>


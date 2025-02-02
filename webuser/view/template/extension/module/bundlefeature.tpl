<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-bundlefeature" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-bundlefeature" class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
            <div class="col-sm-10">
              <input type="text" name="name" value="<?php echo $name; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name" class="form-control" />
              <?php if ($error_name) { ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-type"><?php echo $entry_type; ?></label>
            <div class="col-sm-10">
              <select name="type" id="input-type" class="form-control">
                <?php if ($type) { ?>
                <option value="1" selected="selected"><?php echo $text_bundle; ?></option>
                <option value="0"><?php echo $text_bundle_category; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_bundle; ?></option>
                <option value="0" selected="selected"><?php echo $text_bundle_category; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <fieldset id="bundleProduct">          
            <div class="form-group">
              <label class="col-sm-2 control-label" for="input-bundle"><?php echo $entry_product; ?></label>
              <div class="col-sm-10">
                <input type="text" name="bundle_name" value="" placeholder="<?php echo $entry_product; ?>" id="input-bundle" class="form-control" />
                <div id="featured-product" class="well well-sm" style="height: 150px; overflow: auto;">
                  <?php foreach ($bundles as $bundle) { ?>
                  <div id="featured-bundle<?php echo $bundle['bundle_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $bundle['title']; ?>
                    <input type="hidden" name="bundle[]" value="<?php echo $bundle['bundle_id']; ?>" />
                  </div>
                  <?php } ?>
                </div>
              </div>
            </div>
          </fieldset>          
          <fieldset id="bundleCategory">          
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-bundle_category"><?php echo $entry_category; ?></label>
            <div class="col-sm-10">
              <input type="text" name="bundle_category" value="" placeholder="<?php echo $entry_category; ?>" id="input-bundle_category" class="form-control" />
              <div id="featured-category" class="well well-sm" style="height: 150px; overflow: auto;">
                <?php foreach ($bundle_categories as $category) { ?>
                <div id="featured-category<?php echo $category['bundle_category_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $category['name']; ?>
                  <input type="hidden" name="category[]" value="<?php echo $category['bundle_category_id']; ?>" />
                </div>
                <?php } ?>
              </div>
            </div>
          </div>
          </fieldset>          
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-limit"><?php echo $entry_limit; ?></label>
            <div class="col-sm-10">
              <input type="text" name="limit" value="<?php echo $limit; ?>" placeholder="<?php echo $entry_limit; ?>" id="input-limit" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-width"><?php echo $entry_width; ?></label>
            <div class="col-sm-10">
              <input type="text" name="width" value="<?php echo $width; ?>" placeholder="<?php echo $entry_width; ?>" id="input-width" class="form-control" />
              <?php if ($error_width) { ?>
              <div class="text-danger"><?php echo $error_width; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-height"><?php echo $entry_height; ?></label>
            <div class="col-sm-10">
              <input type="text" name="height" value="<?php echo $height; ?>" placeholder="<?php echo $entry_height; ?>" id="input-height" class="form-control" />
              <?php if ($error_height) { ?>
              <div class="text-danger"><?php echo $error_height; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="status" id="input-status" class="form-control">
                <?php if ($status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>

<script type="text/javascript"><!--
  $('select[name=\'type\']').on('change', function() {
    if (this.value == '1') {
      $('#bundleProduct').show();
      $('#bundleCategory').hide();
    } else if(this.value == '0'){
      $('#bundleProduct').hide();
      $('#bundleCategory').show();
    }
  });

  $('select[name=\'type\']').trigger('change');
</script>
    <script type="text/javascript">

 // Bundle AutoComplete
$('input[name=\'bundle_name\']').autocomplete({
  'source': function(request, response) {
    $.ajax({
      url: 'index.php?route=extension/module/bundlefeature/autocomplete&token=<?php echo $token; ?>&filter_title=' +  encodeURIComponent(request),
      dataType: 'json',
      success: function(json) {
        json.unshift({
          bundle_id: 0,
          title: '--- None ---'
        });

        response($.map(json, function(item) {
          return {
            label: item['title'],
            value: item['bundle_id']
          }
        }));
      }
    });
  },
  select: function(item) {
    $('input[name=\'bundle_name\']').val('');
    
    $('#featured-product' + item['value']).remove();
    
    $('#featured-product').append('<div id="featured-product' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="bundle[]" value="' + item['value'] + '" /></div>');  
  }
});

$('#featured-product').delegate('.fa-minus-circle', 'click', function() {
  $(this).parent().remove();
});
</script>

<script type="text/javascript">

 // Bundle AutoComplete
$('input[name=\'bundle_category\']').autocomplete({
  'source': function(request, response) {
    $.ajax({
      url: 'index.php?route=bundle/category/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
      dataType: 'json',
      success: function(json) {
        json.unshift({
          bundle_category_id: 0,
          name: '--- None ---'
        });

        response($.map(json, function(item) {
          return {
            label: item['name'],
            value: item['bundle_category_id']
          }
        }));
      }
    });
  },
  select: function(item) {
    $('input[name=\'bundle_category\']').val('');
    
    $('#featured-category' + item['value']).remove();
    
    $('#featured-category').append('<div id="featured-category' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="category[]" value="' + item['value'] + '" /></div>');  
  }
});

$('#featured-category').delegate('.fa-minus-circle', 'click', function() {
  $(this).parent().remove();
});
</script>
<?php echo $footer; ?>

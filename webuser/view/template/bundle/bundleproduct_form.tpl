<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-manufacturer" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
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
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_form; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-manufacturer" class="form-horizontal">
          <div class="form-group required">
            <label class="col-sm-2 control-label"><?php echo $entry_name; ?></label>
            <div class="col-sm-10">
              <?php foreach ($languages as $language) { ?>
              <div class="input-group"><span class="input-group-addon"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /></span>
                <input type="text" name="bundle_language[<?php echo $language['language_id']; ?>][title]" value="<?php echo isset($bundle_language[$language['language_id']]) ? $bundle_language[$language['language_id']]['title'] : ''; ?>" id="input-name<?php echo $language['language_id']; ?>" placeholder="<?php echo $entry_name; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" id="button-seourls" rel="<?php echo $language['language_id']; ?>" class="btn btn-info"><i class="fa fa-bolt"></i> Generate Seo</button>
                </span>
              </div>
              <?php if (isset($error_title[$language['language_id']])) { ?>
              <div class="text-danger"><?php echo $error_title[$language['language_id']]; ?></div>
              <?php } ?>
              <?php } ?>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-date_from"><span data-toggle="tooltip" title="<?php echo $help_date; ?>"><?php echo $entry_date; ?></span></label>
            <div class="col-sm-4">
              <div class="input-group date">
                <input type="text" name="date_from" value="<?php echo $date_from; ?>" data-date-format="YYYY-MM-DD" placeholder="<?php echo $entry_datefrom; ?>" id="input-date_from" class="form-control" />
                <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
              </div>
              <?php if ($error_date_from) { ?>
              <div class="text-danger"><?php echo $error_date_from; ?></div>
              <?php } ?>
            </div>
            <div class="col-sm-4">
              <div class="input-group tmddate">
                <input type="text" name="date_to" value="<?php echo $date_to; ?>" data-date-format="YYYY-MM-DD" placeholder="<?php echo $entry_dateto; ?>" id="input-date_from" class="form-control" />
                <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
              </div>
              <?php if ($error_date_to) { ?>
              <div class="text-danger"><?php echo $error_date_to; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label"><?php echo $entry_discount; ?></label>
            <div class="col-sm-10">
              <div class="table-responsive">
                <table id="discount" class="table table-striped table-bordered table-hover">
                  <thead>
                    <th class="text-left"><?php echo $entry_customergroup; ?></th>  
                    <th class="text-left"><?php echo $entry_doption; ?></th>  
                    <th class="text-left"><?php echo $entry_adddiscount; ?></th>  
                  </thead>
                  <tbody>
                    <?php foreach ($customer_groups as $customergroup) { ?>
                    <tr >
                      <td class="text-left"><?php echo $customergroup['name']; ?></td>
                      <td class="text-left">
                        <div class="form-group">
                          <div class="col-sm-10">
                            <select name="customer_group[<?php echo $customergroup['customer_group_id']; ?>][discount_option]" id="input-discount_option" class="form-control">
                                <?php if (isset($customer_group[$customergroup['customer_group_id']]['discount_option']) && $customer_group[$customergroup['customer_group_id']]['discount_option'] == 'Percentage') { ?>
                                <option value="Percentage" selected="selected"><?php echo $text_percent; ?></option>
                                <option value="Fixed"><?php echo $text_fixed; ?></option>
                                <?php } else { ?>
                                <option value="Percentage"><?php echo $text_percent; ?></option>
                                <option value="Fixed" selected="selected"><?php echo $text_fixed; ?></option>
                                <?php } ?>
                              </select>
                            </select>
                          </div>
                        </div>

                      </td>
                      <td class="text-left"><input type="text" name="customer_group[<?php echo $customergroup['customer_group_id']; ?>][add_discount]" value="<?php echo isset($customer_group[$customergroup['customer_group_id']]) ? $customer_group[$customergroup['customer_group_id']]['add_discount'] : ''; ?>" placeholder="<?php echo $entry_adddiscount; ?>" class="form-control"></td>
                    </tr>
                    <?php } ?>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-keyword"><span data-toggle="tooltip" title="<?php echo $help_keyword; ?>"><?php echo $entry_keyword; ?></span></label>
            <div class="col-sm-10">
              <input type="text" name="keyword" value="<?php echo $keyword; ?>" placeholder="<?php echo $entry_keyword; ?>" id="input-keyword" class="form-control" />
              <?php if ($error_keyword) { ?>
              <div class="text-danger"><?php echo $error_keyword; ?></div>
              <?php } ?>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-sort-order"><?php echo $entry_sort_order; ?></label>
            <div class="col-sm-10">
              <input type="text" name="sort_order" value="<?php echo $sort_order; ?>" placeholder="<?php echo $entry_sort_order; ?>" id="input-sort-order" class="form-control" />
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
          <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo $entry_store; ?></label>
                <div class="col-sm-10">
                  <div class="well well-sm" style="height: 150px; overflow: auto;">
                    <div class="checkbox">
                      <label>
                        <?php if (in_array(0, $bundleproduct_store)) { ?>
                        <input type="checkbox" name="bundleproduct_store[]" value="0" checked="checked" />
                        <?php echo $text_default; ?>
                        <?php } else { ?>
                        <input type="checkbox" name="bundleproduct_store[]" value="0" />
                        <?php echo $text_default; ?>
                        <?php } ?>
                      </label>
                    </div>
                    <?php foreach ($stores as $store) { ?>
                    <div class="checkbox">
                      <label>
                        <?php if (in_array($store['store_id'], $bundleproduct_store)) { ?>
                        <input type="checkbox" name="bundleproduct_store[]" value="<?php echo $store['store_id']; ?>" checked="checked" />
                        <?php echo $store['name']; ?>
                        <?php } else { ?>
                        <input type="checkbox" name="bundleproduct_store[]" value="<?php echo $store['store_id']; ?>" />
                        <?php echo $store['name']; ?>
                        <?php } ?>
                      </label>
                    </div>
                    <?php } ?>
                  </div>
                </div>
              </div>
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>
<script type="text/javascript"><!--
$('.date').datetimepicker({
  pickTime: false
});

$('.time').datetimepicker({
  pickDate: false
});

$('.datetime').datetimepicker({
  pickDate: true,
  pickTime: true
});
//--></script>

<script type="text/javascript">
  var dateToday = new Date();
  $('.tmddate').datetimepicker({
    pickDate: true,
    pickTime: false,
    minDate: dateToday
  });
</script>

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

/// Categories
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
<!-- Seo -->
<script type="text/javascript">
$(document).on('click','#button-seourls',function() {
  rel=$(this).attr('rel');
  title=$('#input-name'+rel).val();
  $.ajax({
    url: 'index.php?route=bundle/bundleproduct/SeoText&token=<?php echo $token; ?>&title='+title,
    type: 'post',
    data: '',
    dataType: 'json',
    beforeSend: function() {
    },
    complete: function() {
    },
    success: function(json) {
      if (json['success']) {
        $('input[name=\'keyword\']').val(json['title']);
      }
    },
  });
});
</script>
<!-- Seo -->
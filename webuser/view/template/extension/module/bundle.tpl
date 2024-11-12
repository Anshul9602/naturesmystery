<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-support" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
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
	  <?php if ($error_keynotfound) { ?>
				<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_keynotfound; ?>
				  <button type="button" class="close" data-dismiss="alert">&times;</button>
				</div>
			<?php } ?>			
			<div class="loadlicensekey"></div>
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-support" class="form-horizontal">
          <ul class="nav nav-tabs">
            <li class="active"><a href="#tab-language" data-toggle="tab"><?php echo $tab_language; ?></a></li>
            <li class=""><a href="#tab-Setting" data-toggle="tab"><?php echo $tab_setting; ?></a></li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab-language">
              <ul class="nav nav-tabs" id="language">
                <?php foreach ($languages as $language) { ?>
                <li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"> <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                <?php } ?>
              </ul>
              <div class="tab-content">
                <?php foreach ($languages as $language) { ?>
                <div class="tab-pane" id="language<?php echo $language['language_id']; ?>">
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-filter"><span data-toggle="tooltip" title="<?php echo $help_title; ?>"><?php echo $entry_title; ?></span></label>
                    <div class="col-sm-10">
                      <input type="text" name="bundlepro_languageseting[<?php echo $language['language_id']; ?>][title]" value="<?php echo isset($bundlepro_languageseting[$language['language_id']]) ? $bundlepro_languageseting[$language['language_id']]['title'] : ''; ?>" placeholder="<?php echo $entry_title; ?>" id="input-title" class="form-control"/>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-filter"><span data-toggle="tooltip" title="<?php echo $help_description; ?>"><?php echo $entry_description; ?></span></label>
                    <div class="col-sm-10">
                      <textarea type="text" name="bundlepro_languageseting[<?php echo $language['language_id']; ?>][description]" rows="5" placeholder="<?php echo $entry_description; ?>" id="input-description" class="form-control"><?php echo isset($bundlepro_languageseting[$language['language_id']]) ? $bundlepro_languageseting[$language['language_id']]['description'] : ''; ?></textarea>
                    </div>
                  </div>
                  <legend><h3><?php echo $heading_bundleshoppingcart; ?></h3></legend>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-filter"><?php echo $entry_bundleheading; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="bundlepro_languageseting[<?php echo $language['language_id']; ?>][bundleheading]" value="<?php echo isset($bundlepro_languageseting[$language['language_id']]) ? $bundlepro_languageseting[$language['language_id']]['bundleheading'] : ''; ?>" placeholder="<?php echo $entry_title; ?>" id="input-bundleheading" class="form-control"/>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-filter"><?php echo $entry_image; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="bundlepro_languageseting[<?php echo $language['language_id']; ?>][image]" value="<?php echo isset($bundlepro_languageseting[$language['language_id']]) ? $bundlepro_languageseting[$language['language_id']]['image'] : ''; ?>" placeholder="<?php echo $entry_image; ?>" id="input-image" class="form-control"/>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-filter"><?php echo $entry_productname; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="bundlepro_languageseting[<?php echo $language['language_id']; ?>][productname]" value="<?php echo isset($bundlepro_languageseting[$language['language_id']]) ? $bundlepro_languageseting[$language['language_id']]['productname'] : ''; ?>" placeholder="<?php echo $entry_productname; ?>" id="input-productname" class="form-control"/>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-filter"><?php echo $entry_model; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="bundlepro_languageseting[<?php echo $language['language_id']; ?>][model]" value="<?php echo isset($bundlepro_languageseting[$language['language_id']]) ? $bundlepro_languageseting[$language['language_id']]['model'] : ''; ?>" placeholder="<?php echo $entry_model; ?>" id="input-model" class="form-control"/>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-filter"><?php echo $entry_minquantity; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="bundlepro_languageseting[<?php echo $language['language_id']; ?>][minquantity]" value="<?php echo isset($bundlepro_languageseting[$language['language_id']]) ? $bundlepro_languageseting[$language['language_id']]['minquantity'] : ''; ?>" placeholder="<?php echo $entry_minquantity; ?>" id="input-minquantity" class="form-control"/>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-filter"><?php echo $entry_price; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="bundlepro_languageseting[<?php echo $language['language_id']; ?>][price]" value="<?php echo isset($bundlepro_languageseting[$language['language_id']]) ? $bundlepro_languageseting[$language['language_id']]['price'] : ''; ?>" placeholder="<?php echo $entry_price; ?>" id="input-price" class="form-control"/>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-filter"><?php echo $entry_availability; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="bundlepro_languageseting[<?php echo $language['language_id']; ?>][availability]" value="<?php echo isset($bundlepro_languageseting[$language['language_id']]) ? $bundlepro_languageseting[$language['language_id']]['availability'] : ''; ?>" placeholder="<?php echo $entry_availability; ?>" id="input-availability" class="form-control"/>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-filter"><?php echo $entry_option; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="bundlepro_languageseting[<?php echo $language['language_id']; ?>][option]" value="<?php echo isset($bundlepro_languageseting[$language['language_id']]) ? $bundlepro_languageseting[$language['language_id']]['option'] : ''; ?>" placeholder="<?php echo $entry_option; ?>" id="input-option" class="form-control"/>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-filter"><?php echo $entry_addtocart; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="bundlepro_languageseting[<?php echo $language['language_id']; ?>][addtocart]" value="<?php echo isset($bundlepro_languageseting[$language['language_id']]) ? $bundlepro_languageseting[$language['language_id']]['addtocart'] : ''; ?>" placeholder="<?php echo $entry_addtocart; ?>" id="input-option" class="form-control"/>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-filter"><?php echo $entry_continueshopping; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="bundlepro_languageseting[<?php echo $language['language_id']; ?>][continueshopping]" value="<?php echo isset($bundlepro_languageseting[$language['language_id']]) ? $bundlepro_languageseting[$language['language_id']]['continueshopping'] : ''; ?>" placeholder="<?php echo $entry_continueshopping; ?>" id="input-continueshopping" class="form-control"/>
                    </div>
                  </div>
                  <legend><h3><?php echo $heading_bundleproduct; ?></h3></legend>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-filter"><?php echo $entry_bundleproduct; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="bundlepro_languageseting[<?php echo $language['language_id']; ?>][bundleproduct]" value="<?php echo isset($bundlepro_languageseting[$language['language_id']]) ? $bundlepro_languageseting[$language['language_id']]['bundleproduct'] : ''; ?>" placeholder="<?php echo $entry_bundleproduct; ?>" id="input-bundleproduct" class="form-control"/>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-filter"><?php echo $entry_yousave; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="bundlepro_languageseting[<?php echo $language['language_id']; ?>][yousave]" value="<?php echo isset($bundlepro_languageseting[$language['language_id']]) ? $bundlepro_languageseting[$language['language_id']]['yousave'] : ''; ?>" placeholder="<?php echo $entry_yousave; ?>" id="input-yousave" class="form-control"/>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-filter"><?php echo $entry_regularprice; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="bundlepro_languageseting[<?php echo $language['language_id']; ?>][regularprice]" value="<?php echo isset($bundlepro_languageseting[$language['language_id']]) ? $bundlepro_languageseting[$language['language_id']]['regularprice'] : ''; ?>" placeholder="<?php echo $entry_regularprice; ?>" id="input-yousave" class="form-control"/>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-filter"><?php echo $entry_taxprice; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="bundlepro_languageseting[<?php echo $language['language_id']; ?>][taxprice]" value="<?php echo isset($bundlepro_languageseting[$language['language_id']]) ? $bundlepro_languageseting[$language['language_id']]['taxprice'] : ''; ?>" placeholder="<?php echo $entry_taxprice; ?>" id="input-yousave" class="form-control"/>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-filter"><?php echo $entry_relatedpro; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="bundlepro_languageseting[<?php echo $language['language_id']; ?>][related_bundle]" value="<?php echo isset($bundlepro_languageseting[$language['language_id']]) ? $bundlepro_languageseting[$language['language_id']]['related_bundle'] : ''; ?>" placeholder="<?php echo $entry_relatedpro; ?>" id="input-yousave" class="form-control"/>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-filter"><?php echo $entry_allbundle; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="bundlepro_languageseting[<?php echo $language['language_id']; ?>][all_bundle]" value="<?php echo isset($bundlepro_languageseting[$language['language_id']]) ? $bundlepro_languageseting[$language['language_id']]['all_bundle'] : ''; ?>" placeholder="<?php echo $entry_allbundle; ?>" id="input-yousave" class="form-control"/>
                    </div>
                  </div>

                </div>
              <?php } ?>
              </div>
            </div>
            <div class="tab-pane" id="tab-Setting">
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-filter"><span data-toggle="tooltip" title="<?php echo $help_pagelimit; ?>"><?php echo $entry_pagelimit; ?></span></label>
                <div class="col-sm-10">
                  <input type="number" name="bundlepro_pagelimit" value="<?php echo $bundlepro_pagelimit; ?>" placeholder="<?php echo $entry_pagelimit; ?>" id="input-pagelimit" class="form-control"/>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-filter"><span data-toggle="tooltip" title="<?php echo $help_modulelimit; ?>"><?php echo $entry_modulelimit; ?></span></label>
                <div class="col-sm-10">
                  <input type="number" name="bundlepro_modulelimit" value="<?php echo $bundlepro_modulelimit; ?>" placeholder="<?php echo $entry_modulelimit; ?>" id="input-modulelimit" class="form-control"/>
                </div>
              </div>
               <div class="form-group">
                <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_menu; ?></label>
                <div class="col-sm-10">
                  <select name="bundlepro_menu" id="input-status" class="form-control">
                    <?php if ($bundlepro_menu) { ?>
                    <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                    <option value="0"><?php echo $text_no; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_yes; ?></option>
                    <option value="0" selected="selected"><?php echo $text_no; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
                <div class="col-sm-10">
                  <select name="bundlepro_status" id="input-status" class="form-control">
                    <?php if ($bundlepro_status) { ?>
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
                <label class="col-sm-2 control-label" for="input-image"><?php echo $entry_image; ?></label>
                <div class="row">
                  <div class="col-sm-4">
                    <input type="number" name="bundlepro_height" value="<?php echo $bundlepro_height; ?>" placeholder="<?php echo $entry_height; ?>" id="input-height" class="form-control"/>
                  </div>
                  <div class="col-sm-4">
                    <input type="number" name="bundlepro_width" value="<?php echo $bundlepro_width; ?>" placeholder="<?php echo $entry_width; ?>" id="input-width" class="form-control"/>
                  </div>
                </div>
              </div>

            </div>
           </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div><script type="text/javascript"><!--
$('#language a:first').tab('show');
//--></script>
<script type="text/javascript"><!--
			$(document).ready(function() {
				$('.loadlicensekey').load('index.php?route=extension/module/keysubmit/loadfrom&token=<?php echo $token; ?>');
				});
				//--></script>
<?php echo $footer; ?>

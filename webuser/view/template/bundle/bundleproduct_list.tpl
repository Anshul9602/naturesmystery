<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <a href="<?php echo $add; ?>" data-toggle="tooltip" title="<?php echo $button_add; ?>" class="btn btn-primary"><i class="fa fa-plus"></i></a>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_delete; ?>" class="btn btn-danger" onclick="confirm('<?php echo $text_confirm; ?>') ? $('#form-bundleform').submit() : false;"><i class="fa fa-trash-o"></i></button>
      </div>
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
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-list"></i> <?php echo $text_list; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form-bundleform">
          <div class="table-responsive">
            <table class="table table-bordered table-hover">
              <thead>
                <tr>
                  <td style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></td>
                  
                  <td class="text-left"><?php if ($sort == 'bn.title') { ?>
                    <a href="<?php echo $sort_title; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_name; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_title; ?>"><?php echo $column_name; ?></a>
                    <?php } ?>
                  </td>

                  <td class="text-left"><?php if ($sort == 'b.datefrom') { ?>
                    <a href="<?php echo $sort_datefrom; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_datefrom; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_datefrom; ?>"><?php echo $column_datefrom; ?></a>
                    <?php } ?>
                  </td>

                  <td class="text-left"><?php if ($sort == 'b.dateto') { ?>
                    <a href="<?php echo $sort_dateto; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_dateto; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_dateto; ?>"><?php echo $column_dateto; ?></a>
                    <?php } ?>
                  </td>

                  <td class="text-left"><?php echo $column_product; ?></td>
                  <td class="text-left"><?php echo $column_category; ?></td>

                  <td class="text-center"><?php if ($sort == 'b.status') { ?>
                    <a href="<?php echo $sort_status; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_status; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_status; ?>"><?php echo $column_status; ?></a>
                    <?php } ?>
                  </td>
                  <td class="text-left"><?php echo $column_order; ?></td>
                  <td class="text-center"><?php echo $column_action; ?></td>
                </tr>
              </thead>
              <tbody>
                <?php if ($bundles) { ?>
                <?php foreach ($bundles as $result) { ?>
                <tr class="bundlemove<?php echo $result['bundle_id']; ?>">
                  <td class="text-center"><?php if (in_array($result['bundle_id'], $selected)) { ?>
                    <input type="checkbox" name="selected[]" value="<?php echo $result['bundle_id']; ?>" checked="checked" />
                    <?php } else { ?>
                    <input type="checkbox" name="selected[]" value="<?php echo $result['bundle_id']; ?>" />
                    <?php } ?></td>
                  <td class="text-left"><?php echo $result['title']; ?></td>

                  <td class="text-left"><?php echo $result['date_from']; ?></td>

                  <td class="text-left"><?php echo $result['date_to']; ?></td>

                  <td class="text-left" id="productedit<?php echo $result['bundle_id']; ?>">
                    <?php foreach ($result['product'] as $product) { ?>
                    <li><?php echo $product; ?></li>
                    <?php } ?>
                    <a class="tmdproduct" data-toggle="modal" data-target="#myModal" href="<?php echo $result['popuphref']; ?>"><div class="pull-right" rel="<?php echo $result['bundle_id']; ?>"><i class="fa fa-pencil-square"></i></div></a>
                  </td>

                  <td class="text-left">
                    <?php foreach ($result['category'] as $category) { ?>
                    <li><?php echo $category; ?></li>
                    <?php } ?>
                    <a class="tmdcategory" data-toggle="modal" data-target="#catemyModal" href="<?php echo $result['catepopuphref']; ?>"><div class="pull-right" rel="<?php echo $result['bundle_id']; ?>"><i class="fa fa-pencil-square"></i></div>
                  </td>
                  
                  <td class="text-center" width="170px">
                    <div class="form-group">
                      <label class="col-sm-2 control-label"></label>
                      <div class="col-sm-10">
                        <label class="switch inputbundle<?php echo $result['bundle_id']; ?>" >
                          <input type="checkbox" value="1" name="status" class="quick-status" rel="<?php echo $result['bundle_id']; ?>" <?php if ($result['btnstatus']) { ?> checked="checked" <?php } ?> >
                          <span class="slider round"></span>
                          <span class="absolute-no">OFF</span>
                        </label>
                      </div>
                    </div>
                  </td>
                <!--@Rakesh New -->
                  <td class="text-left">
                    <?php if($result['ordertotal']!=0) { ?>
                    <?php if ($result['ordertotal'] <= 0) { ?>
                    <span class="label label-warning"><?php echo $result['ordertotal']; ?></span>
                    <?php } elseif ($result['ordertotal'] <= 5) { ?>
                    <span class="label label-danger"><?php echo $result['ordertotal']; ?></span>
                    <?php } else { ?>
                    <span class="label label-success"><?php echo $result['ordertotal']; ?></span>
                    <?php } ?>
                    <?php } ?>
                  </td>
                <!--@Rakesh New -->
                  <td class="text-center">
                    <a href="<?php echo $result['edit']; ?>" data-toggle="tooltip" title="<?php echo $button_edit; ?>" class="btn btn-primary"><i class="fa fa-pencil"></i></a>
                    <button type="button" class="btn btn-danger tmddelete" rel1="<?php echo $result['bundle_id']; ?>" rel2="<?php echo $result['title']; ?>"><i class="fa fa-trash-o"></i></button>
                  </td>
                 
                </tr>
                <?php } ?>
                <?php } else { ?>
                <tr>
                  <td class="text-center" colspan="8"><?php echo $text_no_results; ?></td>
                </tr>
                <?php } ?>
              </tbody>
            </table>
          </div>
        </form>
        <div class="row">
          <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
          <div class="col-sm-6 text-right"><?php echo $results; ?></div>
        </div>
      </div>
    </div>
  </div>
</div>


<div class="modal" id="myModal" role="dialog" aria-labelledby="myModal" aria-hidden="true"></div>
<div class="modal" id="catemyModal" role="dialog" aria-labelledby="myModal" aria-hidden="true"></div>
<script>
$(document).on('click','.tmdproduct',function(e) {
  $('#myModal .modal-dialog').html('<div class="loader-if centered"></div>');
   $('#myModal').load($(this).attr('href'));
  
});

$(document).on('click','.tmdcategory',function(e) {
  $('#catemyModal .modal-dialog').html('<div class="loader-if centered"></div>');
   $('#catemyModal').load($(this).attr('href'));
  
});
</script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>

<script type="text/javascript">
$(document).on('click','.quick-status',function() {
  rel=$(this).attr('rel');
  val=$(this).prop("checked");
  if(val ==true){
    status =1;
  }else{
    status =0;
  }
  $.ajax({
    url: 'index.php?route=bundle/bundleproduct/quickStatus&token=<?php echo $token; ?>&bundle_id='+rel+'&status='+status,
    type: 'post',
    data: '',
    dataType: 'json',
    beforeSend: function() {
    },
    complete: function() {
    },
    success: function(json) {
      $('.alert, .text-danger').remove();      
      if (json['success']) {
        $('.breadcrumb').after('<div class="alert alert-success alert-dismissible">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
      }
    },
  });
});

$(document).on('click','.tmddelete',function() {
  bundle_id=$(this).attr('rel1');
  title=$(this).attr('rel2');
  $.confirm({
    title: 'Confirmation!',
    content: 'Do You Confirm You Want To Delete '+title+' ?',
    buttons: {
      confirm: {
        text: 'Confirm',
        btnClass: 'btn-red',
        keys: ['enter', 'shift'],
        action:function () {
          $.ajax({
            url: 'index.php?route=bundle/bundleproduct/deletebundle&token=<?php echo $token; ?>&bundle_id='+bundle_id,
            type: 'post',
            data: '',
            dataType: 'json',
            beforeSend: function() {
            },
            complete: function() {
            },
            success: function(json) {
              $('.alert, .text-danger').remove();      
              if (json['success']) {
                $('.breadcrumb').after('<div class="alert alert-success alert-dismissible">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                $('.bundlemove'+bundle_id).remove(); 
              }
            },
          });
        },
        cancel: function () {

        },
      }
    }
  });
});
</script>

<style>
  .minicolors-theme-bootstrap .minicolors-input{
    width:100%;
    height:35px;
  }
    .component td:first-child{
       cursor:move; 
    }
    .quickbtn-success {
        color: #fff;
        background-color: #afafaf;
        border-color: #afafaf;
    }
    .quickbtn-success:hover,.quickbtn-success:active:hover, .quickbtn-success.active:hover, .open > .quickbtn-success.dropdown-toggle:hover, .quickbtn-success:active:focus, .quickbtn-success.active:focus, .open > .quickbtn-success.dropdown-toggle:focus, .quickbtn-success:active.focus, .quickbtn-success.active.focus, .open > .quickbtn-success.dropdown-toggle.focus, .quickbtn-success:active, .quickbtn-success.active, .open > .quickbtn-success.dropdown-toggle{
      background-color:#33ccff;
      border-color:#33ccff;
    }
.switch {
  position: relative;
  display: inline-block;
  width: 95px;
  height: 30px;
}

.switch input {display:none;}

.slider {
  position: absolute;
  cursor: pointer;
  overflow: hidden;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #f2f2f2;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  z-index: 2;
  content: "";
  height: 22px;
  width: 22px;
  left: 4px;
  bottom: 4px;
  background-color: #28b8ed;
      -webkit-box-shadow: 0 2px 5px rgba(0, 0, 0, 0.22);
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.22);
  -webkit-transition: .4s;
  transition: all 0.4s ease-in-out;
}
.slider:after {
  position: absolute;
  left: 0;
  z-index: 1;
  content: "ON";
    font-size: 14px;
    text-align: left !important;
    line-height: 30px;
  padding-left: 0;
    width: 95px;
    color: #fff;
    height: 30px;
    border-radius: 100px;
    background-color: #28b8ed;
    -webkit-transform: translateX(-160px);
    -ms-transform: translateX(-160px);
    transform: translateX(-160px);
    transition: all 0.4s ease-in-out;
}

input:checked + .slider:after {
  -webkit-transform: translateX(0px);
  -ms-transform: translateX(0px);
  transform: translateX(0px);
  /*width: 235px;*/
  padding-left: 15px;
}

input:checked + .slider:before {
  background-color: #fff;
}

input:checked + .slider:before {
  -webkit-transform: translateX(63px);
  -ms-transform: translateX(63px);
  transform: translateX(63px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 100px;
}

.slider.round:before {
  border-radius: 50%;
}
.absolute-no {
  position: absolute;
  left: 0;
  color: #229ac8;
  text-align: right !important;
    font-size: 14px;
    width: calc(100% - 15px);
    height: 30px;
    line-height: 30px;
    cursor: pointer;
} 
</style>

<?php echo $footer; ?>
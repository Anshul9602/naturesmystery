 <style>
   .sidebar-single .sidebar-title:before {
     background-color: rgb(255, 255, 255, 0.5);
   }

   label {
     text-transform: uppercase;
     padding-left: 0px;
   }

   label input {
     opacity: 0
   }

   .custom-control-input {
     position: absolute;
     z-index: 1;
     opacity: 1;
     margin-left: -20px;
   }
 </style>
 <div class="panel-group filter-slider" id="accordion">
   <?php foreach ($filter_groups as $filter_group) { ?>

     <!-- single sidebar start -->
     <div class="sidebar-single">
       <h5 class="sidebar-title"><?php echo $filter_group['name']; ?></h5>
       <div class="sidebar-body">
         <ul class="checkbox-container categories-list">
           <?php foreach ($filter_group['filter'] as $filter) { ?>

             <li>
               <div class="custom-control custom-checkbox">
                 <label>
                   <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
                     <input type="checkbox" class="custom-control-input" name="filter[]" value="<?php echo $filter['filter_id']; ?>" checked="checked" />
                     <?php echo $filter['name']; ?>
                   <?php } else { ?>
                     <input type="checkbox" name="filter[]" class="custom-control-input" value="<?php echo $filter['filter_id']; ?>" />
                     <?php echo $filter['name']; ?>
                   <?php } ?>

                 </label>


               </div>
             </li>

           <?php } ?>
         </ul>
       </div>
     </div>
     <!-- single sidebar end -->

   <?php } ?>
 </div>
 <button id="button-filter" style="display:none"></button>
 <script type="text/javascript">
   $("input[type='checkbox']").change(function() {
     $('#button-filter').click();
   })
   $('#button-filter').on('click', function() {
     filter = [];

     $('input[name^=\'filter\']:checked').each(function(element) {
       filter.push(this.value);
     });

     location = '<?php echo $action; ?>&filter=' + filter.join(',');
   });
   //
 </script>
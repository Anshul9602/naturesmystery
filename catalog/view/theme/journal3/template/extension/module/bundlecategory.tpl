<div class="list-group">
  <h4 class="list-group-item bgc1"><?php echo $heading_title; ?></h4>
  <?php if ($bundles) { ?>
  <?php foreach ($categories as $category) { ?>
  <?php if ($category['bundle_category_id'] == $bundle_category_id) { ?>
  <a href="<?php echo $category['href']; ?>" class="list-group-item active"><?php echo $category['name']; ?></a>
  <?php if ($category['children']) { ?>
  <?php foreach ($category['children'] as $child) { ?>
  <?php if ($child['bundle_category_id'] == $child_id) { ?>
  <a href="<?php echo $child['href']; ?>" class="list-group-item active">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
  <?php } else { ?>
  <a href="<?php echo $child['href']; ?>" class="list-group-item">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
  <?php } ?>
  <?php } ?>
  <?php } ?>
  <?php } else { ?>
  <a href="<?php echo $category['href']; ?>" class="list-group-item"><?php echo $category['name']; ?></a>
  <?php } ?>
  <?php } ?>
  <?php } ?>
</div>
<style>
.padd0{padding: 0px;}
.bgc1{background: #48c0f0;color: #fff;padding: 12px;}
.bgc1{background: #1c95e6;color: #fff;padding: 12px;}
</style>
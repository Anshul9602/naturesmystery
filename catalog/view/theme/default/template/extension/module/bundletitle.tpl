<div class="list-group">
	<h4 class="list-group-item bgc1"><?php echo $heading_title; ?></h4>
	<?php if ($bundletitles) { ?>
	<?php foreach ($bundletitles as $result) { ?>
	<a href="<?php echo $result['href']; ?>" class="list-group-item"><?php echo $result['title']; ?> (<?php echo $result['prototal'];?>)</a>
	<?php } ?>
	<?php } ?>
</div>
<style>
.padd0{padding: 0px;}
.bgc1{background: #48c0f0;color: #fff;padding: 12px;}
.bgc1{background: #1c95e6;color: #fff;padding: 12px;}
</style>
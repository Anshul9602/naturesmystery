  <?php if($probundles) { ?>
  <div class="panel panel-default" id="main-panel">
    <div class="panel-heading"><b><?php echo $related_heading; ?> </b></div>
    <div class="panel-body">
      <div class="panel-body">
        <p><?php echo $description; ?></p>
      </div>
        <div id="relatedpages"></div> 
        <script type="text/javascript"><!--
          $('#relatedpages').delegate('.pagination a', 'click', function(e) {
          e.preventDefault();

          $('#relatedpages').fadeOut('slow');

          $('#relatedpages').load(this.href);

          $('#relatedpages').fadeIn('slow');
          });

          $('#relatedpages').load('<?php echo $tmdrelatedproduct; ?>');
        </script>  
    </div>
  </div>
<?php } ?>

<style>
  .fa-stack {
    width: 1.1em;
  }

  .fa-stack-2x {
    font-size: 1.1em;
  }

  .review-card {
    background-color: #E8E2DA;

    border: 1px solid #dee2e6;
    padding: 20px;

    margin: 10px;
  }

  .review-box .slick-slide {
    padding: 10px;
  }
</style>
<?php if ($reviews) { ?>
  <div class="review-box container">
    <?php foreach ($reviews as $review) { ?>

      <div class="card1">
        <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($review['rating'] < $i) { ?>
            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
        <?php } ?>
        <div style="margin: 0px; padding:0px" class="row">
          <div style="margin: 0px; padding:0px" class="col-sm-6">
            <p>
              <strong><?php echo $review['author']; ?> </strong>
              <span class="p-1" style="background-color:#6E7832 ;color:#fff;">Verified</span></p>
          </div>
          <div class="col-sm-6">
            <p style="float: right;"><?php echo $review['date_added']; ?></p>
          </div>
          <div class="col-sm-8 text-start mt-3">
            <p ><?php echo $review['text']; ?></p>
          </div>

        </div>

      </div>
<hr>
    <?php } ?>
  </div>
  <div class="text-right"><?php echo $pagination; ?></div>

  <script>
    
  </script>

<?php } else { ?>
  <p><?php echo $text_no_reviews; ?></p>
<?php } ?>
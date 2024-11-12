<?php echo $header; ?>
<style>
  .home-banners .slick-dots {
    bottom: 25px;
  }
</style>
<section class="home-banners">
  <div class="home-banner">
    <?php foreach ($banners as $banner) { ?>
      <div style=" height:90vh; background: url('image/<?php echo $banner['image']; ?>'); background-position:top; background-size:cover; background-repeat: no-repeat;">
        <div style="display:flex; align-items: center; justify-content: center; width: 100%; height:100%; padding-top:25%;">
          <div style="display: none;" class="text-center">
            <h1 style="color:#fff; margin-bottom:30px;" class="text-center"><?php echo  $banner['title']; ?></h1>
            <button style="background: #fff; color:#000; text-transform:uppercase; 
            padding:15px 35px; outline: none; border:none; font-size:12px;">
              View Collection
            </button>
          </div>
        </div>
      </div>
    <?php } ?>

</section>


<section style="margin-top: -40px;" class="home-about">
  <img src="home1.jpg" class="img-responsive" />
</section>


<section class="new-collections" style="margin-top:70px;">
  <h3 class="text-center" style="margin-bottom:30px;">New Collection</h3>
  <div class="line" style="height:1px; background-color: #000; width:50px; margin:0 auto;"></div>

  <div class="container" style="margin-top:50px;">
    <div class="row">
      <?php for ($i = 0; $i < sizeof($new_collections); $i++) { ?>
        <div class="col-xs-12 col-sm-4" style="padding: 15px;">
          <div class="wrapper" style="overflow:hidden;">
            <div class="collection-tile" style="background-image:linear-gradient(0deg, rgba(0, 0, 0, 0.25), rgba(0, 0, 0, 0.25)), url('<?php echo 'image/' . $new_collections[$i]['image']; ?>'); padding-top:65%; position:relative; background-size:cover; background-position:center">
              <a class="plain-link" href="<?php echo 'index.php?route=product/category&path=' .  $new_collections[$i]['category_id']; ?>" style="display:flex; align-items:center; justify-content:center; position:absolute; top:0; left:0; right:0; bottom:0;">
                <h3 style="color:#fff;"><?php echo $new_collections[$i]['name']; ?></h3>
              </a>
            </div>
          </div>

        </div>
      <?php } ?>
    </div>
  </div>
  <br /><br />
  <h3 class="text-center" style="margin-bottom:30px;">Featured Product</h3>
  <div class="line" style="height:1px; background-color: #000; width:50px; margin:0 auto;"></div>

  <div class="container" style="margin-top:50px;">
    <div class="row">
      <?php for ($i = 0; $i < sizeof($new_collections); $i++) { ?>
        <div class="col-xs-12 col-sm-4" style="padding: 15px;">
          <div class="wrapper" style="overflow:hidden;">
            <div class="collection-tile" style="background-image:linear-gradient(0deg, rgba(0, 0, 0, 0.25), rgba(0, 0, 0, 0.25)), url('<?php echo 'image/' . $new_collections[$i]['image']; ?>'); padding-top:65%; position:relative; background-size:cover; background-position:center">
              <a class="plain-link" href="<?php echo 'index.php?route=product/category&path=' .  $new_collections[$i]['category_id']; ?>" style="display:flex; align-items:center; justify-content:center; position:absolute; top:0; left:0; right:0; bottom:0;">
                <h3 style="color:#fff;"><?php echo $new_collections[$i]['name']; ?></h3>
              </a>
            </div>
          </div>

        </div>
      <?php } ?>
    </div>
  </div>


</section>

<script>
  $('.home-banner').slick({
    autoplay: true,
    infinite: true,
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: false,
    dots: true,
    fade: true,
    cssEase: 'linear',
    autoplaySpeed: 5000
  });
</script>
<?php echo $footer; ?>
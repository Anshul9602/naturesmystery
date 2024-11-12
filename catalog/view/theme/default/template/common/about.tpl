<?php echo $header; ?>
<style>
  h3{
    font-size:16px;
    font-weight:400;
  }
</style>
<!-- breadcrumb area start -->
<div class="breadcrumb-area hidden-phone">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="breadcrumb-wrap">
          <nav aria-label="breadcrumb">
            <ul class="breadcrumb">
              <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li class="breadcrumb-item"><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>

              <?php } ?>
            </ul>

          </nav>
        </div>
      </div>
    </div>
  </div>
</div>

<div style="min-height: 600px;" class="container">
   <br /><br />
   <div class="row">
      <div class="col-12 text-center">
         <h2 style="font-size:20px">OUR BRAND STORY</h2>
         <br />
         <h2 style="font-size:16px; font-weight:400; text-transform:capitalize">At Nature's Mystery, we seek to unravel Mother Earth's<br />
            mysteries and the healing power nature has to offer and bring<br />
            the same to you
         </h2>
      </div>
      <div class="col-12"><br /><br />
         <img src="assets/img/about/A1.jpg" alt="" class="img-fluid">
      </div>
   </div>

<br />
<div class="row">
   <div class="col-12 text-center">
      <h2>WHAT MAKES US UNIQUE</h2>
   </div>
</div>
<br /><br />
<div class="row" style="display:flex; align-items:center">
   <div class="col-12 col-sm-6 text-center">
      <h3 ><u>QUALITY INGREDIENTS</u></h3>
      <br />
      <h3 style="font-size:13px; line-height:28px">Every ingredient we use while preparing our
        products is handpicked in its raw, crude and
        the most natural form.
      </h3>
      <br /><br />
      <h3 ><u>HANDMADE WITH LOVE</u></h3>
      <br />
      <h3 style="font-size:13px; line-height:28px">Each handmade product is unique and one of
        a kind. You will often find unique differnces
        which makes the product special.
      </h3>
   </div>
   <div class="col-12 col-sm-6">
    <img src="assets/img/about/A2.png" alt="" class="img-fluid">
   </div>
</div>

<br /><br /><br /><br />
<div class="row" style="display:flex; align-items:center">
<div class="col-12 col-sm-6">
    <img src="assets/img/about/A3.png" alt="" class="img-fluid">
   </div>  
<div class="col-12 col-sm-6 text-center">
      <h3 ><u>HAPPINESS IS CHEMICAL FREE</u></h3>
      <br />
      <h3 style="font-size:13px; line-height:28px">Mixing the products with chemicals and
preservatives take away the freshness and
authenticity that each ingredient has to
offer. Hence, at Nature’s Mystery we want
to offer you everything pure and natural.
      </h3>
      
      
   </div>
   
</div>

<br /><br /><br /><br />
<div class="row" style="display:flex; align-items:center">
  <div class="col-6 col-sm-6">
    <img src="assets/img/about/A4.png" alt="" class="img-fluid">
   </div>  
   <div class="col-6 col-sm-6">
    <img src="assets/img/about/A5.png" alt="" class="img-fluid">
   </div> 
   
</div>
<br />
<div class="row text-center">
  <div class="col-12">
    <h3>We aim to build authentic, pure and completely natural<br />
skin and hair care products handcrafted with love</h3>
  </div>
</div>
</div>

<br />
<?php echo $footer; ?>
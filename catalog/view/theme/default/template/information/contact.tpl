<?php echo $header; ?>
<!-- breadcrumb area start -->
<div class="breadcrumb-area">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="breadcrumb-wrap">
          <nav aria-label="breadcrumb">
            <ul class="breadcrumb">
              <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                  <li class="breadcrumb-item"><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
              </ul>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- breadcrumb area end -->
<div class="container">
  <!-- contact area start -->
  <div class="contact-area section-padding pt-20">
    <div class="container">
      <div class="row">
        
        <div class="col-lg-6 offset-lg-3">
          <div class="contact-info">
            <h4 class="contact-title newfont" >Contact Us</h4>
            
            <ul>
           
            <li>
             <p class="newfont">EMAIL: naturesmysteryinfo@gmail.com</p>

            </li>
              <li>
                
                 <p class="newfont">Customer Care:  +91 9125306456</p>
              </li>
            </ul>
           
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- contact area end -->
 
</div>
<?php echo $footer; ?>
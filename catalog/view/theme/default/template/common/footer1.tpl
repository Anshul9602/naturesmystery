<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<style>
  .widget-title,
  .contact-block li,
  .info-list li a,
  .widget-title-text {
    color: #333;
  }

  .footer-top {
    background: url('assets/img/Home Page Images/Footer-Background') no-repeat center center fixed;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
  }

  footer {
    border-top: thin solid #ccc;
  }



  .newsletter-inner .news-field {
    padding-left: 10px;
  }

  .float {
    position: fixed;
    width: 60px;
    height: 60px;
    bottom: 40px;
    right: 60px;
    background-color: #25d366;
    color: #FFF;
    border-radius: 50px;
    text-align: center;
    font-size: 35px;
    box-shadow: 2px 2px 3px #999;
    z-index: 100;
  }

  .img-s {
    max-width: 30%;
    margin-top: -50px;
  }

  @media only screen and (max-width: 786px) {
    .img-s {
      max-width: 20%;
      margin-bottom: 10px
    }
  }
</style>
<!-- Scroll to top start -->
<div class="scroll-top not-visible">
  <i class="fa fa-angle-up"></i>
</div>
<!-- Scroll to Top End -->



<!-- footer area start -->
<footer class="footer-widget-area " style="background:url('assets/img/block/Footer-Background')">
  <div style="padding-bottom:20px; padding-top:30px; background:url('assets/img/Home Page Images/Footer-Background')"
    class="footer-top section-padding">
    <div class="container-fluid" style="margin-left:0px">

      <div class="row">

        <div class="col-lg-3 col-md-3 mt-4 d-flex flex-column justify-content-center" style="align-items:center">
          <img src="assets/img/Home Page Images/Logo.png" alt="" class="img-s">
          <span>Lorem ipsum dolor sit amet consectetur adipisicing elit. Facere consequuntur magni assumenda animi,
            adipisci tempord</span>
        </div>



        <div class="col-lg-3 col-md-3 col-sm-4  col-4 d-flex justify-content-center">
          <div class="widget-item">
            <h6 class="widget-title">Shop</h6>
            <div class="widget-body">
              <ul style="display: inline;" class="info-list">
                <li><a href="<?php echo $contact; ?>">Face Care</a></li>
                <li><a href="index.php?route=common/about">Lip Care</a></li>


                <li><a href="<?php echo $sitemap; ?>">Hair Care</a></li>

              </ul>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-4  col-4 d-flex justify-content-center">
          <div class="widget-item">
            <h6 class="widget-title">Order Realted</h6>
            <div class="widget-body">
              <ul style="display: inline;" class="info-list">

                <?php foreach ($informations as $information) { ?>
                <li><a href="<?php echo $information['href']; ?>">
                    <?php echo $information['title']; ?>
                  </a></li>
                <?php } ?>





                <li><a href="<?php echo $contact; ?>">contact us</a></li>

              </ul>
            </div>
          </div>
        </div>
        <div class="col-lg-2 col-md-3 col-sm-4 col-4 d-flex justify-content-center">
          <div class="widget-item">
            <h6 class="widget-title">Stay Connected</h6>
            <div class="widget-body">
              <address class="contact-block">
                <ul>
                  <!-- <li><i class="pe-7s-home"></i>JAIPUR ,RAJASTHAN</li>
                  <li><i class="pe-7s-mail"></i> <a href="mailto:info@mellow.co.in">info@nature.co.in </a></li>
                  <li><i class="pe-7s-call" style="padding:0px"></i> <a href="tel:919928533955">+91-992123 33955,<br>
                      <span style="margin-left:28px">789-987<span></a></li> -->
                </ul>
              </address>
            </div>
          </div>
        </div>
      </div>
      <br /> <br />
      <div class="row">
        <div class="col-sm-4 offset-sm-4">
          <div class="newsletter-wrapper text-center">
            <h6 class="widget-title-text">Signup for newsletter</h6>
            <form class="newsletter-inner" id="mc-form">
              <input style="border: 1px solid #bcbcbc;" type="email" class="news-field" id="mc-email" autocomplete="off"
                placeholder="Enter your email address">
              <button class="news-btn" id="mc-submit">Subscribe</button>
            </form>
            <!-- mailchimp-alerts Start -->
            <div class="mailchimp-alerts">
              <div class="mailchimp-submitting"></div><!-- mailchimp-submitting end -->
              <div class="mailchimp-success"></div><!-- mailchimp-success end -->
              <div class="mailchimp-error"></div><!-- mailchimp-error end -->
            </div>
            <!-- mailchimp-alerts end -->
          </div>
        </div>
      </div>

    </div>
  </div>
  <div style="background-color: #f6f6f6; padding:10px">
    <div class="container">
      <div class="row align-items-center">

        <div class="col-md-4">
          <div class="footer-payment">
            <img style="float: left;" src="assets/img/payment.png" alt="payment method">
          </div>
        </div>
        <div style="text-align: center;" class="col-sm-4">
          <p style="color: #ccc; margin-top:10px">&copy; Nature's Mystry. All Rights Reserved, 2022</p>
        </div>
        <div class="col-sm-4">
          <div style="margin-top: 0px; float:right" class="widget-body social-link">

            <a href="#"><i class="fa fa-facebook"></i></a>
            <!-- <a href="#"><i class="fa fa-twitter"></i></a> -->
            <a href="#"><i class="fa fa-instagram"></i></a>
            <a href="#"><i class="fa fa-youtube"></i></a>
          </div>
        </div>
      </div>
    </div>
  </div>

</footer>
<!-- footer area end -->
<a href="https://api.whatsapp.com/send?phone=+919694998693&amp;text=HELLO" class="float" target="_blank">
  <i class="fa fa-whatsapp wp-button"></i>
</a>



<!-- JS
============================================ -->

<!-- Modernizer JS -->
<script src="assets/js/vendor/modernizr-3.6.0.min.js"></script>

<!-- Popper JS -->
<script src="assets/js/vendor/popper.min.js"></script>


<!-- Countdown JS -->
<script src="assets/js/plugins/countdown.min.js"></script>

<!-- jquery UI JS -->
<script src="assets/js/plugins/jqueryui.min.js"></script>
<!-- Image zoom JS -->
<script src="assets/js/plugins/image-zoom.min.js"></script>
<!-- Imagesloaded JS -->
<script src="assets/js/plugins/imagesloaded.pkgd.min.js"></script>
<!-- Instagram feed JS -->
<script src="assets/js/plugins/instagramfeed.min.js"></script>
<!-- mailchimp active js -->
<script src="assets/js/plugins/ajaxchimp.js"></script>
<!-- contact form dynamic js -->
<script src="assets/js/plugins/ajax-mail.js"></script>
<!-- google map api -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCfmCVTjRI007pC1Yk2o2d_EhgkjTsFVN8"></script>
<!-- google map active js -->
<script src="assets/js/plugins/google-map.js"></script>
<!-- Main JS -->
<script src="assets/js/main.js"></script>
<!-- jquery UI JS -->
<script src="assets/js/plugins/jqueryui.min.js"></script>
<!-- Bootstrap JS -->
<script src="assets/js/vendor/bootstrap.min.js"></script>

<?php /esbuygetcombo starts/ ?>
<style type="text/css">
  .product-layout .product-thumb .image {
    position: relative;
    overflow: hidden;
  }

  .jbuygetcombo-wrap .jbuygetcombo-ribbon {
    text-align: center;
    background: red;
    color: #fff;
    padding: 3px 10px;
    transform: rotate(50deg);
    font-size: 14px;
    font-weight: bold;
    width: 200px;
    position: absolute;
    right: -45px;
    top: 55px;
    white-space: nowrap;
  }

  /j3/ html[data-jv] .jbuygetcombo-wrap {
    right: 0;
  }

  /j3/
</style>
<?php /esbuygetcombo ends/ ?>

</body>

</html>
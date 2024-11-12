<style>
  .widget-title,
  .contact-block li,
  .info-list li a,
  .widget-title-text {
    color: #fff;
  }
</style>
<!-- Scroll to top start -->
<div class="scroll-top not-visible">
  <i class="fa fa-angle-up"></i>
</div>
<!-- Scroll to Top End -->

<!-- footer area start -->
<footer class="footer-widget-area">
  <div class="footer-top section-padding">
    <div class="container">
      <div class="row">
        <div class="col-lg-3 col-md-6">
          <div class="widget-item">
            <div class="widget-title">
              <div class="widget-logo">
                <a href="index.php?route=common/home">
                  <img style="filter: brightness(0) invert(1);" src="<?php echo $logo; ?>" alt="brand logo">
                </a>
              </div>
            </div>

          </div>
        </div>
        <div class="col-lg-3 col-md-6">
          <div class="widget-item">
            <h6 class="widget-title">Contact Us</h6>
            <div class="widget-body">
              <address class="contact-block">
                <ul>
                  <li><i class="pe-7s-home"></i> 4710-4890 Breckinridge USA</li>
                  <li><i class="pe-7s-mail"></i> <a style="color:#fff" href="mailto:demo@plazathemes.com">demo@yourdomain.com </a></li>
                  <li><i class="pe-7s-call"></i> <a style="color:#fff" href="tel:(012)800456789987">(012) 800 456
                      789-987</a></li>
                </ul>
              </address>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6">
          <div class="widget-item">
            <h6 class="widget-title">Information</h6>
            <div class="widget-body">
              <ul class="info-list">
                <li><a href="index.php?route=common/about">about us</a></li>
                <?php foreach ($informations as $information) { ?>
                  <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                <?php } ?>





                <li><a href="<?php echo $contact; ?>">contact us</a></li>
                <li><a href="<?php echo $sitemap; ?>">site map</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6">
          <div class="widget-item">
            <h6 class="widget-title">Follow Us</h6>
            <div class="widget-body social-link">
              <a href="#"><i class="fa fa-facebook"></i></a>
              <a href="#"><i class="fa fa-twitter"></i></a>
              <a href="#"><i class="fa fa-instagram"></i></a>
              <a href="#"><i class="fa fa-youtube"></i></a>
            </div>
          </div>
        </div>
      </div>
      <div class="row align-items-center mt-20">
        <div class="col-md-6">
          <div class="newsletter-wrapper">
            <h6 class="widget-title-text">Signup for newsletter</h6>
            <form class="newsletter-inner" id="mc-form">
              <input type="email" class="news-field" id="mc-email" autocomplete="off" placeholder="Enter your email address">
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
        <div class="col-md-6">
          <div class="footer-payment">
            <img src="assets/img/payment1.png" alt="payment method">
          </div>
        </div>
      </div>
    </div>
  </div>

</footer>
<!-- footer area end -->




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
</body>

</html>
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<style>
  .widget-title,
  .contact-block li,
  .info-list li a,
  .widget-title-text {
    color: #333;
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

    .nateure-text p{
      text-align:center !important;
      
    }
    .widget-item, .widget-body, .widget-body ul{
      text-align:center !important;
    }
  }
</style>
<!-- Scroll to top start -->
<div class="scroll-top not-visible">
  <i class="fa fa-angle-up"></i>
</div>
<!-- Scroll to Top End -->



<!-- footer area start -->
<footer class="footer-widget-area " style="background-image:url('assets/img/Footer-bg.jpg'); background-position:center; background-size:cover;   background-repeat: no-repeat;">
  <div style="padding-bottom:20px; padding-top:30px"
    class="footer-top section-padding">
    <div class="container">
      <div class="row ">
      <img src="assets/img/Home Page Images/Logo.png" alt="" style="margin:auto; width:100px" class="img-s">
      
      </div>
      <div class="row">

        <div class="col-md-3  nateure-text" style="align-items:center ">
          <p>At Nature's Mystery, we seek to unravel Mother Earth's mysteries and the
           healing power nature has to offer and bring the same to you.
            We aim to build authentic, pure and completely nature skin and hair 
            care products handcrafted with love.</p>
        <br />
        </div>



        <div class="col-md-3 d-flex justify-content-center">
          <div class="widget-item">
            
            <div class="widget-body">
              <ul style="display: inline;" class="info-list">
                <li><a href="index.php?route=product/category&path=59_62">Skin Care</a></li>
                <li><a href="index.php?route=product/category&path=59_74">Lip Care</a></li>


                <li><a href="index.php?route=product/category&path=59_71">Hair Care</a></li>
                <li><a href="index.php?route=product/category&path=59_77">100% Cold Pressed</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-md-3 d-flex justify-content-center">
          <div class="widget-item">
           
            <div class="widget-body">
              <ul style="display: inline;" class="info-list">

                <?php foreach ($informations as $information) { ?>
                <li><a href="<?php echo $information['href']; ?>">
                    <?php echo $information['title']; ?>
                  </a></li>
                <?php } ?>
               


                <li><a href="index.php?route=common/about">About Us</a></li>

                <li><a href="<?php echo $contact; ?>">contact us</a></li>

              </ul>
            </div>
          </div>
        </div>
        <div class="col-md-3 d-flex justify-content-center">
          <div class="widget-item">
           
            <div class="widget-body">
              <address class="contact-block">
                <ul>
                 
                  <li><i class="pe-7s-mail"></i> <a href="mailto:naturesmysteryinfo@gmail.com">naturesmysteryinfo@gmail.com </a></li>
                  <li><i class="pe-7s-call" style="padding:0px"></i>
                   <a href="tel:+919125306456">+91 9125306456<br>
                      </a></li>
                </ul>
              </address>
            </div>
          </div>
        </div>
      </div>
      

    </div>
  </div>
 

</footer>
<!-- footer area end -->
<a href="https://api.whatsapp.com/send?phone=+919125306456&amp;text=HELLO" class="float" target="_blank">
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
<script src="assets/js/main.js?v1.1"></script>
<!-- jquery UI JS -->
<script src="assets/js/plugins/jqueryui.min.js"></script>
<!-- Bootstrap JS -->
<script src="assets/js/vendor/bootstrap.min.js"></script>

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

  html[data-jv] .jbuygetcombo-wrap {
    right: 0;
  }

</style>

</body>

</html>
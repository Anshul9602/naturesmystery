<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?php echo $title; ?></title>
  <base href="<?php echo $base; ?>" />
  <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>" />
  <?php } ?>
  <?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>" />
  <?php } ?>

 <!-- google fonts -->
 <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,900" rel="stylesheet">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="assets/css/vendor/bootstrap.min.css">
<!-- Pe-icon-7-stroke CSS -->
<link rel="stylesheet" href="assets/css/vendor/pe-icon-7-stroke.css">
<!-- Font-awesome CSS -->
<link rel="stylesheet" href="assets/css/vendor/font-awesome.min.css">
<!-- Slick slider css -->
<link rel="stylesheet" href="assets/css/plugins/slick.min.css">
<link rel="stylesheet" href="assets/css/plugins/slick-theme.css">

<!-- animate css -->
<link rel="stylesheet" href="assets/css/plugins/animate.css">
<!-- Nice Select css -->
<link rel="stylesheet" href="assets/css/plugins/nice-select.css">
<!-- jquery UI css -->
<link rel="stylesheet" href="assets/css/plugins/jqueryui.min.css">
<!-- main style css -->
<link rel="stylesheet" href="assets/css/style.css?v1.1">


<!-- jQuery JS -->
<script src="assets/js/vendor/jquery-3.3.1.min.js"></script>
<script src="assets/js/plugins/slick.min.js"></script>



  <?php foreach ($styles as $style) { ?>
    <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
  <?php } ?>

  <script src="catalog/view/javascript/common.js" type="text/javascript"></script>

  <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
  <?php } ?>
  <?php foreach ($scripts as $script) { ?>
    <script src="<?php echo $script; ?>" type="text/javascript"></script>
  <?php } ?>
  <?php foreach ($analytics as $analytic) { ?>
    <?php echo $analytic; ?>
  <?php } ?>

    <style>
    .logo a img {
      width: 150px;
      margin-top: 10px;
    }

    .divider {
      margin: 10px 0px 0px 0px;
      position: absolute;
      left: 0px;

      width: 100%;
    }

    .desktop-menu {
      padding-top: 10px;
    }

    .is-sticky .desktop-menu {
      padding-top: 0px;
    }

    @font-face {
    font-family: 'newfont';
    src: url('assets/fonts/New-font/brandon_med-webfont.woff');
  }

body, h1,h2,h3,p,a{
  font-family:'newfont';
}

.minicart-inner.show{
  z-index:99999999999999999999999 !important;
}

.posters{
  width:100%;
}
.top-strip{
  text-align: center;
    background: #000;
    color: #fff;
    font-size: 12px;
    margin-top: -2px;
    margin-bottom: 0px;
    width:100%;
}

  </style>
</head>

<body class="<?php echo $class; ?>">
  <!-- Start Header Area -->
  <header style="border-bottom:thin solid #f1f1f1" class="header-area">
  <div class="top-strip">
    <p style="font-size:18px"><b>Get 10% Off On Prepaid Orders.</b></p>
  </div>
  <!-- main header start -->
    <div class="main-header d-none d-lg-block">


      <!-- header middle area start -->
      <div class="header-main-area">
        <div class="container">
          <div class="row align-items-center ptb-10">


            <!-- start logo area -->
            <div class="col-lg-4 offset-lg-4">
              <div class="logo text-center">
                <a href="<?php echo $home; ?>">
                  <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
                </a>
              </div>
            </div>
            <!-- start logo area -->

            <!-- mini cart area start -->
            <div style="position: absolute; right:20px; top:45px">
              <div class="header-right d-flex align-items-center justify-content-end">
                <div class="header-configure-area">
                  <ul class="nav justify-content-end">
                    <li class="header-search-container mr-0">
                      <button class="search-trigger d-block">
                        <i class="pe-7s-search"></i>
                      </button>
                      <div class="header-search-box d-none animated fadeInLeft">
                        <input type="text" id="search_top" placeholder="Search" class="header-search-field">
                        <button class="search_icon_top header-search-btn"><i class="pe-7s-search"></i></button>
                      </div>
                    </li>
                    <li class="user-hover">
                      <a href="#">
                        <i class="pe-7s-user"></i>
                      </a>
                      <ul class="dropdown-list new-font">
                        <?php if (!$logged) { ?>

                          <li><a href="index.php?route=account/login">Login</a></li>
                          <li><a href="index.php?route=account/register">Register</a></li>
                        <?php } else { ?>
                          <li><a href="index.php?route=account/account">My account</a></li>
                          <li><a href="index.php?route=account/logout">Logout</a></li>

                        <?php } ?>
                      </ul>
                    </li>
                    <li>
                      <a href="<?php echo $wishlist; ?>">
                        <i class="pe-7s-like"></i>

                      </a>
                    </li>
                    <li>
                      <a style="cursor:pointer;" class="minicart-btn">
                        <i class="pe-7s-shopbag"></i>
                        <div id="cart_count" class="notification"><?php echo $text_items; ?>
                        </div>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <!-- mini cart area end -->
          </div>
          <div class="row">
            <!-- main menu area start -->
            <div class="col-12">
              <div class="main-menu-area sticky new-font">

                <div class="main-menu">
                  
                                   <nav class="desktop-menu" >
                    <ul class="justify-content-center  header-style-4">
                     

                      <?php foreach ($categories as $category) { ?>
                        <?php if (strtolower($category['name']) == "header") { ?>
                          <?php if ($category['children']) { ?>
                            <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                              <?php foreach ($children as $child) { ?>
                                <li>
                                  <a style="font-family:newfont"  href="<?php echo $child['href']; ?>">
                                    <?php echo $child['name']; ?>
                                  </a>

                                  <?php if ($child['gc']) { ?>
                                    <ul class="dropdown">
                                      <?php foreach ($child['gc'] as $gc) { ?>

                                        <li>
                                          <a href="<?php print_r($gc['href']); ?>">
                                            <?php print_r($gc['name']); ?>
                                          </a>

                                          <?php if ($gc['g_gc']) { ?>
                                            <ul class="dropdown">
                                              <?php foreach ($gc['g_gc'] as $ggc) { ?>
                                                <li><a href="<?php print_r($ggc['href']); ?>">
                                                    <?php print_r($ggc['name']); ?>
                                                  </a></li>
                                              <?php } ?>
                                            </ul>
                                          <?php } ?>

                                        </li>
                                      <?php } ?>
                                    </ul>
                                  <?php } ?>
                                </li>
                              <?php } ?>
                            <?php } ?>
                          <?php } ?>
                        <?php } ?>
                      <?php  } ?>
                      
                      <li><a style="font-family:newfont" href="index.php?route=common/about">About Us</a></li>

                      


                    </ul>
                  </nav>
              
                </div>


              </div>
            </div>
            <!-- main menu area end -->
          </div>
        </div>
      </div>
      <!-- header middle area end -->
    </div>
    <!-- main header start -->

    <!-- mobile header start -->
    <!-- mobile header start -->
    <div style="padding: 0px;" class="mobile-header d-lg-none d-md-block sticky">
      
      <!--mobile header top start -->
      <div style="padding: 10px;" class="container-fluid">
        <div class="row align-items-center">
          <div class="col-12">
            <div class="mobile-main-header">
              <div class="mobile-logo" >
                <a href="<?php echo $home; ?>">
                  <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" style="max-width:45%;" />
                </a>
              </div>
              <div class="mobile-menu-toggler">
                <div class="mini-cart-wrap">
                  <a style="cursor:pointer;" class="minicart-btn">
                    <i class="pe-7s-shopbag"></i>
                    <div id="cart_count" class="notification"><?php echo $text_items; ?>
                    </div>
                  </a>
                </div>
                <button class="mobile-menu-btn">
                  <span></span>
                  <span></span>
                  <span></span>
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- mobile header top start -->
    </div>
    <!-- mobile header end -->
    <!-- mobile header end -->

    <!-- offcanvas mobile menu start -->
    <!-- off-canvas menu start -->
    <aside class="off-canvas-wrapper">
      <div class="off-canvas-overlay"></div>
      <div class="off-canvas-inner-content">
        <div class="btn-close-off-canvas">
          <i class="pe-7s-close"></i>
        </div>

        <div class="off-canvas-inner">
          <!-- search box start -->
          <div class="search-box-offcanvas">
            <input type="text" id="search_top1" placeholder="Search" class="header-search-field">

          </div>
          <!-- search box end -->

          <!-- mobile menu start -->
          <div class="mobile-navigation">

            <!-- mobile menu navigation start -->
            <nav>
              <ul class="mobile-menu">

                <li>
                  <a href="index.php?route=common/home" class="newfont" 
                  style="text-transform:uppercase; font-size:16px;">Home</a>
                </li>

                <li><a href="index.php?route=common/about">About Us</a></li>

                <?php foreach ($categories as $category) { ?>
                  <?php if (strtolower($category['name']) == "header") { ?>
                    <?php if ($category['children']) { ?>
                      <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                        <?php foreach ($children as $child) { ?>
                          <li class="menu-item-has-children">
                            <a class="newfont" style="text-transform:uppercase; font-size:16px;" href="<?php echo $child['href']; ?>">
                              <?php echo $child['name']; ?>
                            </a>
                            <?php if ($child['gc']) { ?>
                              <ul class="dropdown">
                                <?php foreach ($child['gc'] as $gc) { ?>
                                  <li class="menu-item-has-children ">
                                    <a href="<?php print_r($gc['href']); ?>">
                                      <?php print_r($gc['name']); ?>
                                    </a>
                                    <?php if ($gc['g_gc']) { ?>
                                      <ul class="dropdown">
                                        <?php foreach ($gc['g_gc'] as $ggc) { ?>
                                          <li><a href="<?php print_r($ggc['href']); ?>">
                                              <?php print_r($ggc['name']); ?>
                                            </a></li>
                                        <?php } ?>
                                      </ul>
                                    <?php } ?>

                                  </li>
                                <?php } ?>
                              </ul>
                            <?php } ?>
                          </li>
                        <?php } ?>
                      <?php } ?>
                    <?php } ?>
                  <?php } ?>
                <?php  } ?>

            
                <li><a href="index.php?route=information/contact">Contact</a></li>
              </ul>
            </nav>
            <!-- mobile menu navigation end -->
          </div>
          <!-- mobile menu end -->

          <div class="mobile-settings">
            <ul class="nav">
              
              <li>
                <div class="dropdown mobile-top-dropdown">
                  <a href="#" class="dropdown-toggle" id="myaccount" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    My Account
                    <i class="fa fa-angle-down"></i>
                  </a>
                  <div class="dropdown-menu" aria-labelledby="myaccount">
                    <?php if (!$logged) { ?>

                      <a class="dropdown-item" href="index.php?route=account/login">Login</a>
                      <a class="dropdown-item" href="index.php?route=account/register">Register</a>
                    <?php } else { ?>
                      <a class="dropdown-item" href="index.php?route=account/account">My account</a>
                      <a class="dropdown-item" href="index.php?route=account/logout">Logout</a>

                    <?php } ?>



                  </div>
                </div>
              </li>
            </ul>
          </div>

          <!-- offcanvas widget area start -->
          <div class="offcanvas-widget-area">
            <div class="off-canvas-contact-widget">
              <ul>
                <li><i class="fa fa-mobile"></i>
                  <a href="#"> +91 9125306456</a>
                </li>
                <li><i class="fa fa-envelope-o"></i>
                  <a href="#">naturesmysteryinfo@gmail.com</a>
                </li>
              </ul>
            </div>
            <div class="off-canvas-social-widget">
              <a href="https://www.facebook.com/naturesmysteryproducts/"><i class="fa fa-facebook"></i></a>
              <a href="https://www.instagram.com/naturesmysteryproducts/"><i class="fa fa-instagram"></i></a>
             
            </div>
          </div>
          <!-- offcanvas widget area end -->
        </div>

      </div>
    </aside>
    <!-- off-canvas menu end -->
    <!-- offcanvas mobile menu end -->
    <?php echo $cart; ?>
  </header>
  <!-- end Header Area -->
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
<link rel="stylesheet" href="assets/css/style.css">


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

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Lora:ital@1&family=Open+Sans:wght@300&display=swap" rel="stylesheet">
  <style>
    .new-font
    {
      font-family: 'brandon_grotesquemedium !important';
    }
      

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

    ul li a {
      font-size: 14px;
    }
  </style>
</head>

<body class="<?php echo $class; ?>">
  <!-- Start Header Area -->
  <header style="border:thin solid #f1f1f1" class="header-area">
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
            <div style="position: absolute; right:20px; top:20px">
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
                  <!-- main menu navbar start -->
                                   <!-- main menu navbar start -->
                                   <nav class="desktop-menu" class="new-font">
                    <ul class="justify-content-center header-style-4">
                      <li><a href="index.php?route=common/about">About us</a>
                        
                      </li>

                      <?php foreach ($categories as $category) { ?>
                        <?php if (strtolower($category['name']) == "header") { ?>
                          <?php if ($category['children']) { ?>
                            <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                              <?php foreach ($children as $child) { ?>
                                <li>
                                  <a href="<?php echo $child['href']; ?>">
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
                      
                     



                    </ul>
                  </nav>
                  <!-- <nav class="desktop-menu">
                    <ul class="justify-content-center header-style-4">
                    <li style="font-size:15px;" class="new-font"><a  style="font-size:15px;" href="index.php?route=common/about" > About Us</a>
                        
                        </li>
                      <li style="font-size:15px;" class="new-font"><a  style="font-size:15px;" href="index.php?route=product/category&amp;path=59_71"> Hair Care</a>
                      <ul class="dropdown" class="new-font">
                        <li class="dropdown-content new-font"><a href="#">Onion, Lavender and Black Seed Hair Oil</a></li>
                        <li class="dropdown-content new-font"><a href="#">Banana, Honey and Apple Cider Hair Oil</a></li>
                        <li class="dropdown-content new-font"><a href="#">Lemon, Ginger and Tea Tree Hair Oil</a></li>
                        
                      </ul>
                      </li>

                        <li class="new-font"><a  style="font-size:15px;" href="index.php?route=product/category&amp;path=59_62">Skin Care</a>
                        <ul class="dropdown new-font">
                        <li class="dropdown-content "><a href="#">Besan, Oats and Banana Ubtan</a></li>
                        <li class="dropdown-content"><a href="#">Potato, Tomato and Lemon Ubtan</a></li>
                        <li class="dropdown-content"><a href="#">Neem, Cinnamon and Tulsi Ubtan</a></li>
                      </ul>
                        </li>
                        <li style="font-size:15px;" class="new-font"><a  style="font-size:15px;" href="index.php?route=product/category&amp;path=59_74">Lip Care</a>
                        <ul class="dropdown new-font">
                        <li class="dropdown-content"><a href="#">Blood Orange, Licorice and Lemon Lip Balm</a></li>
                        <li class="dropdown-content"><a href="#">Lavender, Ylang Ylang and Vitamin E Lip Balm</a></li>
                        <li class="dropdown-content"><a href="#">Rose, Coconut and Hemp Seed Lip Balm</a></li>
                        <li class="dropdown-content"><a href="#">Strawberry Lip Balm</a></li>
                        <li class="dropdown-content"><a href="#">Mango Lip Balm</a></li>
                        <li class="dropdown-content"><a href="#">Apple Mint Lip Balm</a></li>

                      </ul>
                        </li>
                        <li style="font-size:15px;" class="new-font"><a  style="font-size:15px;" href="index.php?route=product/category&amp;path=59_71">100% COLD PRESSED</a>
                        <ul class="dropdown new-font">
                        <li class="dropdown-content"><a href="#">Cold Pressed Coconut Oil</a></li>
                        <li class="dropdown-content"><a href="#">Cold Pressed Rice Bran Oil</a></li>
                        <li class="dropdown-content"><a href="#">Cold Pressed Castor Oil</a></li>
                        <li class="dropdown-content"><a href="#">Cold Pressed Neem Oil</a></li>
                        <li class="dropdown-content"><a href="#">Cold Pressed Black Seed Oil</a></li>

                      </ul>
                        </li>
                      <li style="font-size:15px;" class="new-font"><a  style="font-size:15px;" href="index.php?route=information/contact">All Products</a></li>
                     



                    </ul>
                  </nav> -->
                  <!-- main menu navbar end -->
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
      <nav id="top" style="background:black;">
        <div class="container">
          <div class="row">
            <div class="col-6">
              <span id="donate-msg">
                <a style="color:#fff; text-transform: initial" href="mailto:Info@mellow.co.in">
                  <li class="fa fa-envelope"></li> &nbsp; naturesmysteryinfo@gmail.com
                </a>
              </span>

            </div>

            <div class="col-6 workshop-link">

              <div style="border: none; padding:0px; margin:0px" class="mobile-settings">
                <span id="donate-msg">
                  <?php if (!$logged) { ?>
                    <a style="color:#fff" href="index.php?route=account/register">
                      Sign Up
                    </a>
                  <?php } else { ?>
                    <a style="color:#fff" href="index.php?route=account/account">
                      Hello, <?php echo $text_customer_name; ?>!
                    </a>
                  <?php } ?>
                </span>

              </div>
            </div>
          </div>
        </div>
      </nav>
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

                <li><a href="index.php?route=common/home" class="new-font" style="text-transform:uppercase;">Home</a></li>


                <?php foreach ($categories as $category) { ?>
                  <?php if (strtolower($category['name']) == "header") { ?>
                    <?php if ($category['children']) { ?>
                      <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                        <?php foreach ($children as $child) { ?>
                          <li class="menu-item-has-children">
                            <a class="new-font" style="text-transform:uppercase;" href="<?php echo $child['href']; ?>">
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
                  <a href="#" class="dropdown-toggle" id="currency" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Currency
                    <i class="fa fa-angle-down"></i>
                  </a>
                  <div class="dropdown-menu" aria-labelledby="currency">
                    <a class="dropdown-item" href="#">$ USD</a>
                    <a class="dropdown-item" href="#">$ EURO</a>
                  </div>
                </div>
              </li>
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
                  <a href="#">0123456789</a>
                </li>
                <li><i class="fa fa-envelope-o"></i>
                  <a href="#">Info@.co.in</a>
                </li>
              </ul>
            </div>
            <div class="off-canvas-social-widget">
              <a href="#"><i class="fa fa-facebook"></i></a>
              <a href="#"><i class="fa fa-twitter"></i></a>
              <a href="#"><i class="fa fa-pinterest-p"></i></a>
              <a href="#"><i class="fa fa-linkedin"></i></a>
              <a href="#"><i class="fa fa-youtube-play"></i></a>
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
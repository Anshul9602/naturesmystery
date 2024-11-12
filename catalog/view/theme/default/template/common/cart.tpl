  <!-- offcanvas mini cart start -->
  <div class="offcanvas-minicart-wrapper">
    <div class="minicart-inner">
      <div class="offcanvas-overlay"></div>
      <div class="minicart-inner-content">
        <div class="minicart-close">
          <i class="pe-7s-close"></i>

        </div>


        <div class="minicart-content-box">
          <div class="minicart-item-wrapper" id="cart">
            <?php if ($products || $vouchers) { ?>
              <ul>

                <?php foreach ($products as $product) { ?>
                  <li class="minicart-item">
                    <div class="minicart-thumb">
                      <a href="<?php echo $product['href']; ?>">
                        <img src="<?php echo $product['thumb']; ?>" alt="product">
                      </a>
                    </div>
                    <div class="minicart-content">
                      <h3 class="product-name">
                        <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                      </h3>
                      <?php if ($product['option']) { ?>
                        <?php foreach ($product['option'] as $option) { ?>
                          <br />
                          - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
                        <?php } ?>
                      <?php } ?>
                      <p>
                        <span class="cart-quantity"><?php echo $product['quantity']; ?> <strong>&times;</strong></span>
                        <span class="cart-price"><?php echo $product['total']; ?></span>
                      </p>
                    </div>
                    <button onclick="cart.remove('<?php echo $product['cart_id']; ?>');" class="minicart-remove"><i class="pe-7s-close"></i></button>
                  </li>
                <?php } ?>
              </ul>
          </div>

          <div style="position: absolute; width:80%; bottom:0px; border:none" class="minicart-pricing-box">
            <ul>
              <li class="total">
                <span><?php echo $totals[sizeof($totals) - 1]['title']; ?></span>
                <span><strong><?php echo $totals[sizeof($totals) - 1]['text']; ?></strong></span>
              </li>
            </ul>
            <hr />
            <div class="minicart-button">
              <a href="index.php?route=checkout/guest_new"><i class="fa fa-shopping-cart"></i> Checkout Now</a>
            </div>
          </div>
        </div>
      <?php } else { ?>
        <ul>
          <li>Cart Is Empty</li>
        </ul>
      </div>
      <div style="position: absolute; width:80%; bottom:120px" class="minicart-pricing-box">
        <ul>

        </ul>
      </div>
      <div style="display: none;" class="minicart-button">
        <div class="minicart-button">
          <a href="index.php?route=checkout/guest_new"><i class="fa fa-shopping-cart"></i>  Checkout Now</a>
        </div>
      </div>
    <?php } ?>
    </div>
  </div>
  </div>
  <!-- offcanvas mini cart end -->
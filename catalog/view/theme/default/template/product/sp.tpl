<?php echo $header; ?>
<script src="catalog/view/javascript/jquery.zoom.js" type="text/javascript"></script>
<link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"
    />

<style>
  .blink_me {
  animation: blinker 1s linear infinite;
}

@keyframes blinker {
  50% {
    opacity: 0;
  }
}
     .new-font { font-family: 'brandon_grotesquemedium!important'; }
     ul.ProductMeta__Description li {
    position: relative;
    padding-left: 25px;
  }

  ul.ProductMeta__Description li:before {
    position: absolute;
    content: '';
    background-image: url(https://cdn.shopify.com/s/files/1/0058/7779/2832/files/np_tick_1308418_000000.svg?v=1625723306);
    background-repeat: no-repeat;
    height: 25px;
    width: 14px;
    top: 12px;
    left: 0;
  }
  .selectWrapper{
  border-radius:10px;
  display:inline-block;
  overflow:hidden;
  background:#cccccc;
  border:1px solid #cccccc;
}
.selectBox{
  width:180px;
  height:40px;
  border:5px;
  outline:none;
}
/* ------------------------Slider css------------------------ */
.swiper {
        width: 100%;
        height: 100%;
      }

      .swiper-slide {
        text-align: center;
        font-size: 18px;
        background: #fff;

        /* Center slide text vertically */
        display: -webkit-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        align-items: center;
      }

      .swiper-slide img {
        display: block;
        width: 100%;
        height: 100%;
        object-fit: cover;
      }

      .swiper {
        width: 100%;
        height: 300px;
        margin-left: auto;
        margin-right: auto;
      }

      .swiper-slide {
        background-size: cover;
        background-position: center;
      }

      .mySwiper2 {
        height: 80%;
        width: 100%;
      }

      .mySwiper {
        height: 20%;
        box-sizing: border-box;
        padding: 10px 0;
      }

      .mySwiper .swiper-slide {
        width: 25%;
        height: 100%;
        opacity: 0.4;
      }

      .mySwiper .swiper-slide-thumb-active {
        opacity: 1;
      }

      .swiper-slide img {
        display: block;
        width: 100%;
        height: 90%;
        object-fit: cover;
      }
      .NULL{
        padding:0px;
        margin:0px;
            }
/* ------------------------Slider css end------------------------ */
</style>
    <!-------------------------------------- SLIDER Start HERE-------------------------------------------- -->
<div class="container new-font">
  <div class="row">
    <div class="col-lg-6 col-md-6 col-md-12 col-12 d-flex flex-column slider ">
    <div
      style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff"
      class="swiper mySwiper2"
    >
      <div class="swiper-wrapper">
      <?php if ($images) { ?>
              <?php foreach ($images as $image) { ?>
        <div class="swiper-slide">
        <img src="<?php echo $image['popup']; ?>" alt="product-details" style = "max-width:100%;" >
        </div>
        <?php } ?>
            <?php } ?>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
    </div>
    <div thumbsSlider="" class="swiper mySwiper">
      <div class="swiper-wrapper">
      <?php if ($images) { ?>
              <?php foreach ($images as $image) { ?>
        <div class="swiper-slide">
        <img src="<?php echo $image['popup']; ?>" alt="product-details" style = "max-width:100%;" >
        </div>
        <?php } ?>
            <?php } ?>
      </div>
    </div>
    </div>
    <!-------------------------------------- SLIDER END HERE-------------------------------------------- -->

    <!-- -------------------------------------------DESCRIPTION SECTION------------------------------------------- -->
    <div class="col-lg-6 col-md-6 col-12 d-flex flex-column mt-4  description">
      <h3 style="color:black;" class=" new-font"><?php echo $heading_title; ?></h3>
      <!-- <p class="blink_me " style="font-size:10px; background: black; color: gold; border-radius:10px; max-width:70px;padding:5px ;">BEST SELLER</p> -->
      <div  style=" background: black; color: gold; border-radius:10px; max-width:70px;padding:3px 5px ;">
      <span class="blink_me" style="font-size:10px; ">BEST SELLER</span>
    </div>
      <div class="mt-2 new-font">
        Our Onion, Lavender, and Black seed hair oil is made with 30+ natural and organic ingredients to prevent hair fall and promote new hair growth. It is enriched with the goodness of Brahmi, Bhirngraj, Amla, Cress Seeds, Nettle leaves, Dandelion leaves, Argan Oil, Jojoba Oil, Rosemary Oil, Moringa Oil, Vitamin E Oil, Cedarwood Oil, and many more.erit!
      </div>
     
      <div class="info">
        <ul class="ProductMeta__Description new-font">
            <li>Reduces hair fall</li>
            <li>Promotes new hair growth</li>
            <li>Adds volume to hair</li>
            <li>Get rid of premature greying</li>
            <li>Remove split ends</li>
          </ul>
      </div>
      <div class="options row">
      <span class="col-12" ><h1 class="price-regular new-font d-flex justify-content-cenetr align-items-cenetr" style="  text-transform: capitalize;color:Black;"> <?php echo $price; ?></h1></span>
        <div class="col-6 d-flex justify-content-center">
          <div class="selectWrapper">
            <select class="selectBox"  style="max-width:100%;">
              <option value="" disabled="" selected="" hidden="" style="font-size:25px;">Select size</option>
              <option style="border-style:solid;border-radius:30px;"> 100ml</option>
              <option style="border-style:solid;border-radius:30px;"> 200ml</option>
            </select>
          </div>
        </div>
        <div class="col-6 d-flex">
            <div class="" id="counter-btn" style="padding: 0px; padding-left:30px; margin-top:-12px; max-width:230px"></div>
              <div style="cursor: pointer; height: 40px; text-align:center;   border:thin solid #ccc" class="col-sm-2 col-4 minus-icon">
                <li style=" font-size:12px; margin:auto; line-height:40px; text-align:center" id="less_quantity" class="fa fa-minus"></li>
              </div>
              <div style=" padding-left:0px; height: 40px; padding-right:0px;" class="col-sm-3 col-4">
                <input name="quantity" type="text" style="box-shadow:none; text-align:center; border-radius:0px; width:100%; height: 40px; background-color: transparent; cursor:default" id="input-quantity" value="1" class="form-control"></div>
                <div style=" cursor: pointer;  height: 40px; text-align:center; border:thin solid #ccc" class="col-sm-2 col-4 minus-icon">
                <li style="font-size:12px; height: 50px; line-height:40px; text-align:center" id="add_quantity" class="fa fa-plus"></li>
              </div>
            </div>
        </div>
        <div class="btn d-flex justify-content-center">
          <button  type="button" style=" color:white; margin-left: 40px;background:black!important; text-transform:uppercase;  padding:20px 45px; border-radius:10px;
          margin-top: 20px;" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn col  " ><?php echo $button_cart; ?></button>
        </div>
        </div>
      </div>
    </div>
    
    <!-- -------------------------------------------DESCRIPTION SECTION-END------------------------------------------ -->


    <!-- -----------------------------------------Banner-section------------------------------------------- -->
    
<!-- banner-1 -->
<div class="container-fluid" style="margin-top:20px;">
<div class="container-fluid NULL" >
  <div class="row">
    <div class="col-12">
     <div id="size">
     <img src="assets/img/Home Page Images/P_Banner.jpg" alt="" style="max-width:100%">
     </div>
    </div>
  </div>
</div>
<!-- banner-1-end -->
<!-- banner-2 -->
<div class="container-fluid NULL">
  <div class="row">
    <div class="col-12">
     <div id="size-2">
     <img src="assets/img/Home Page Images/P_Banner-2.jpg" alt="" style="max-width:100%">
     </div>
    </div>
  </div>
</div>
<!-- banner-2-end -->
<!-- banner-3 -->
<div class="container-fluid NULL">
  <div class="row">
    <div class="col-12">
     <div id="size-3">
     <img src="assets/img/Home Page Images/P_Banner-3.jpg" alt="" style="max-width:100%">
     </div>
    </div>
  </div>
</div>
<!-- banner-3-end -->
<!-- banner-4 -->
<div class="container-fluid NULL">
  <div class="row">
    <div class="col-12">
     <div id="size-4">
    <img src="assets/img/Home Page Images/P_Banner-4.jpg" alt="">
     </div>
    </div>
  </div>
</div>
<!-- banner-4-end -->
<div class="container-fluid NULL mb-2">
  <div class="row">
    <div class="col-12">
     <div id="size-5">
     <img src="assets/img/Home Page Images/P_Banner-5.jpg" alt="">
     </div>
    </div>
  </div>
</div>
</div>
  <!-- -----------------------------------------Banner-section-END------------------------------------------ -->
  </div>
</div>



   <!-- Swiper JS -->
   <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

<!-- Initialize Swiper -->
<script>
  var swiper = new Swiper(".mySwiper", {
    spaceBetween: 10,
    slidesPerView: 4,
    freeMode: true,
    watchSlidesProgress: true,
  });
  var swiper2 = new Swiper(".mySwiper2", {
    spaceBetween: 10,
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
    thumbs: {
      swiper: swiper,
    },
  });
</script>




<script>
$("#add_quantity").click(function() {
    var b = Number($("#input-quantity").val()) + 1;
    $("#input-quantity").val(b);
  })

  $("#less_quantity").click(function() {
    var b = Number($("#input-quantity").val()) - 1;
    if (b < 0) {
      b = 0;
    }
    $("#input-quantity").val(b);
  })
  </script>
  <script>
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.display === "block") {
      content.style.display = "none";
    } else {
      content.style.display = "block";
    }
  });
}
</script>
<?php echo $footer; ?>
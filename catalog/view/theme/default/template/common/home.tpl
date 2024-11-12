<?php echo $header; ?>
<!-- Swiper Slider CSS-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
<!-- Swiper JS -->
<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
<link rel="stylesheet" href="assets/css/home.css">
<style>
  @media screen and (max-width:650px){
    .cares-item{
      padding:2px;
    }
    p{
    font-size:14px;
    }
    .separation{
      margin-top:50px;
    }
    .d-none-mobile{
      display:none;
    }
  }

  @media screen and (min-width:651px){
   
    p{
    font-size:17px;
    }
  }
 
  .price-new {
    font-weight: 600;
    color: darkred;
    font-size: 18px;
  }
  .price-regular {
    font-weight: 600;
    color: black;
    font-size: 18px;
  }
  .price-old {
    color: #999;
    text-decoration: line-through;
    margin-left: 10px;
  }
</style>

<!-- Banners Section --->
<section class="slider">
<div class="desk-banner">
      <div class="row newfont">
        <div class="swiper mySwiper">
          <div class="swiper-wrapper">
          <?php foreach ($banners as $banner) { ?>
            <div class="swiper-slide">
            <a href="<?php echo $banner['link']; ?>">
             <img src="image/<?php echo $banner['image']; ?>" style="width:100%">
            </a>
            
            </div>   
                 <?php } ?>
         
            </div>
      </div>
    </div>
    </div>
 

<div class="mob-banner">
      <div class="row">
        <div class="swiper mySwiper">
          <div class="swiper-wrapper">
          <?php foreach ($banners_mob as $banner) { ?>
            <div class="swiper-slide">
            <a href="<?php echo $banner['link']; ?>"> 
            <img src="image/<?php echo $banner['image']; ?>" alt="" srcset=""
                style="width:100%">
            </a>
            </div>   
                 <?php } ?>
         
        </div>
      </div>
    </div>
  </div> 
</section>
<!-- Banners Section End --->

<section class="cares separation" >
  <div class="container newfont ">
    <div class="row justify-content-around">
      <div class="col-4 cares-item">
        <a href="index.php?route=product/category&path=59_71">
           <img src="assets/img/Home Page Images/Portrait-Cards-1.jpg" alt=""></a>
      </div>
      <div class="col-4 cares-item">
        <a href="index.php?route=product/category&path=59_62"> 
          <img src="assets/img/Home Page Images/Portrait-Cards-2.jpg" alt=""></a>
      </div>
      <div class="col-4 cares-item">
        <a href="index.php?route=product/category&path=59_74">
          <img src="assets/img/Home Page Images/Portrait-Cards-3.jpg" alt=""></a>
      </div>
    </div>
  </div>
</section>

<!-- ----------------------------------------BEST_SELLER_SECTION---------------------------------------------- -->
<div class="container separation ">
   <div class="row">
      <div class="col-12">
         <h1 class="d-flex justify-content-center newfont" style="color:black; text-transform:uppercase; ">
            Our bestsellers
         </h1>
         <p class= "d-flex justify-content-center mb-3"> <img src="assets/img/Home Page Images/Wave.png" alt="" style="max-width:10%;" ></p>
      </div>
   </div>
</div>
<div class="container mt-3">
 
   <div class="row">
   <?php for($i=0; $i<6; $i++){?>
    <div class="col-sm-4 col-6 holder newfont">
         <a href="<?php echo $top_selling[$i]['href'];?>">
          <img src="<?php echo $top_selling[$i]['thumb'];?>" alt="" style="max-width:100%" class="design">
         <p class=" d-flex justify-content-center" style="text-align: center; color:#333;">
           <?php echo $top_selling[$i]['name'];?>
        </p>
         <p class=" d-flex justify-content-center" style="text-align: center; color:#666">
                <?php if ($top_selling[$i]['price']) { ?>

        <?php if (!$top_selling[$i]['special']) { ?>

          <h3 class="price-regular text-center"><?php echo $top_selling[$i]['price']; ?></h3>

        <?php } else { ?>

          <h6 class="price-old text-center"> <del><?php echo $top_selling[$i]['price']; ?></del></h6>
          <h3 class="price-new text-center"><?php echo $top_selling[$i]['special']; ?></h3>

        <?php } ?>
      <?php }?>
      </p>
          
         </a>
      </div>
    
   
    <?php }?>
    </div>
</div>
<!-- ----------------------------------------BEST_SELLER_SECTION-END---------------------------------------------- -->


<!-- ----------------------------------------BEST_SELLER_SECTION-END---------------------------------------------- -->



<!-- ----------------------------------------ShOP_BY_CONCERN---------------------------------------------- -->
<section style="margin-top: 160px newfont">
  <div class="container">
    
    <h1 class="d-flex justify-content-center color mb-2  newfont separation ">SHOP BY CONCERN</h1>
  
    <div class="row  justify-content-center  newfont">

      <div class="container mt-5 ">
        <h1 class="d-flex justify-content-center color mt-3  newfont" >HAIR</h1>
        <br />
        <div class="row justify-content-center">
          <div class="col-4  text-center ">
            <a href="index.php?route=product/category&path=102"> 
              <img src="assets/img/Home Page Images//Shop-by-concern-hairfall.jpg" class="convern-img" alt="" srcset=""
                />
              </a>
            <span class="mt-3 d-flex justify-content-center concern-font-content" style="text-transform:capitalize;  font-weight:Bold;">Hairfall</span>
          </div>
          <div class="col-4 text-center">
            <a href="index.php?route=product/category&path=103">
              <img class="convern-img" src="assets/img/Home Page Images//Shop-by-concern-frizzy-hair.jpg" alt="" srcset=""
                />
              </a>
            <span class="mt-3 d-flex justify-content-center concern-font-content" style="text-transform:capitalize;  font-weight:Bold;">Frizzy-hair</span>
          </div>
          <div class="col-4 text-center">
            <a href="index.php?route=product/category&path=104">
              <img class="convern-img" src="assets/img/Home Page Images//Shop-by-concern-dandruff.jpg" alt="" srcset=""
                /></a>
            <div class="mt-3 d-flex justify-content-center concern-font-content" style="text-transform:capitalize;  font-weight:Bold;">Dandruff</div>
          </div>
        </div>
      </div>
    </div>
    <div class="row  justify-content-center mt-5 ">
      <div class="container newfont" >
        <h1 class="d-flex justify-content-center color mt-5  newfont  " >SKIN</h1>
        <br />
        <div class="row">
          <div class="col-4 text-center">
            <a href="index.php?route=product/category&path=99">
              <img class="convern-img" src="assets/img/Home Page Images/Shop-by-concern-acne.jpg" alt="" srcset=""
                /></a>
            <span class="mt-3 d-flex justify-content-center concern-font-content"  style="text-transform:capitalize;  font-weight:Bold;"> Acne</span>
          </div>
          <div class="col-4 text-center">
            <a href="index.php?route=product/category&path=100">
              <img class="convern-img" src="assets/img/Home Page Images/Shop-by-concern-detan.jpg" alt="" srcset=""
                /></a>
            <span class="mt-3 d-flex justify-content-center concern-font-content"  style="text-transform:capitalize;  font-weight:Bold; text-align:center;">Pigmentation and tan</span>
          </div>
          <div class="col-4 text-center">
            <a href="index.php?route=product/category&path=101">
              <img class="convern-img" src="assets/img/Home Page Images/Shop-by-concern-glow.jpg" alt="" srcset=""
                /></a>
            <div class="mt-3 d-flex justify-content-center concern-font-content"  style="text-transform:capitalize;  font-weight:Bold; text-align:center">Glow and even tone</div>
          </div>
        </div>
      </div>
    </div>

    <div class="row justify-content-center mt-5 shop-by-concern-box">
      <div class="container" >
        <h1 class="d-flex justify-content-center   color mt-5  newfont" >LIP</h1>
        <br />
        <div class="row">
          <div class="col-4 text-center">
            <a href="index.php?route=product/category&path=105"> 
              <img class="convern-img" src="assets/img/Home Page Images//Shop-by-concern-pigmented.jpg" alt="" srcset=""
                /></a>
            <span class="mt-3 d-flex justify-content-center concern-font-content" style="text-transform:capitalize;  font-weight:Bold;">Pigmentation</span>
          </div>
          <div class="col-4 text-center">
            <a href="index.php?route=product/category&path=106">
              <img class="convern-img" src="assets/img/Home Page Images//Shop-by-concern-chapped.jpg" alt="" srcset=""
                /></a>
            <span class="mt-3 d-flex justify-content-center concern-font-content" style="text-transform:capitalize;  font-weight:Bold;">Chapped</span>
          </div>
          
          <div class="col-4 text-center">
            <a href="index.php?route=product/category&path=107"> 
              <img class="convern-img" src="assets/img/Home Page Images//Shop-by-concern-dry.jpg" alt="" srcset=""
                /></a>
            <div class="mt-3 d-flex justify-content-center concern-font-content" style="text-transform:capitalize;  font-weight:Bold;">Dry</div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- ----------------------------------------ShOP_BY_CONCERN-end---------------------------------------------- -->



<!-- ----------------------------------------01-02-03---------------------------------------------- -->

<section style="background:#fffcf3" class="features newfont separation" >
<br /><br />  
<div class="container">
    <div class="row odd-order">
      <div class="feature-img">
        <img src="assets/img/Home Page Images/Raw-ingredients.jpg" alt="Raw-ingredient" class="img-fluid">
      </div>
      <div class="horizontal"></div>
      <div class="feature-content">
        <h1 style="color:Pink;"class=" newfont" > 01.</h1>
        <h2 style="color:Black; " class="newfont">Raw Ingredients</h2>
        <p>
        Nothing gives more flavor to your food than the usage of fresh ingredients. Similarly, every ingredient we use while preparing our products is handpicked in its raw, crude and the most natural form and processed to reap the maximum benefits out of it.
      <br />  <br />  
      </p>
      </div>
    </div>
    <div class="row even-order">
      <div class="feature-img">
        <img src="assets/img/Home Page Images/Handmade.jpg" alt="Raw-ingredient">
      </div>
      <div class="horizontal"></div>
      <div class="feature-content">
        <h1 style="color:Pink" class="newfont">02.</h1>
        <h2 style="color:Black;" class="newfont">Handmade</h2>
        <p>
        All our products are handmade with lots of 
        love and aspiration to treat your concern and deliver results. 
        Each handmade product is unique and one of a kind. You will often
         find unique differences in each handmade item, and that makes the 
         product and your purchase very special.<br />  <br />  
        
      </p>
      </div>
    </div>
    <div class="row odd-order">
      <div class="feature-img">
        <img src="assets/img/Home Page Images/No-Chemicals.jpg" alt="Raw-ingredient">
      </div>
      <div class="horizontal"></div>
      <div class="feature-content">
        <h1 style="color:Pink" class="newfont">03.</h1>
        <h2 style="color:Black; " class="newfont">No Chemicals</h2>
        <p>
        Happiness is chemical free and so are we. Mixing the products with chemicals and preservatives take away the freshness and authenticity that each ingredient has to offer. Hence, at Nature’s 
        Mystery we want to offer you pure and natural products with no chemicals and preservatives.
        <br />  
      </p>
      </div>
    </div>
  </div>
  <br /><br />
</section>

<!-- ----------------------------------------01-02-03-end---------------------------------------------- -->



<!------------------------------------------NATURE_IS_OUR_FRIEND---------------------------------------------- -->
<br />
<section class="mt-5">
 
 <br /><br />
  <div class="row d-flex align-center">
    <div class="col-2"></div>
  <div class="col-sm-4 col-12 text-center">
          <h2>NATURE IS OUR FRIEND</h2>
          <br />
          <p class="font-14">
            At Nature's Mystery, we seek to unravel Mother 
            Earth's mysteries and the healing power nature has to offer and bring the same to you.
            We aim to build authentic, pure and completely nature skin and hair care products handcrafted with love.
          </p>
      </div>
      <div class="col-12 col-sm-6">
      <img src="assets/img/Nature-is-our-friend.png" alt="" style="float:right" class="img-fluid">
  
      </div>
    </div>

  <br /><br />
  </section>

<!------------------------------------------NATURE_IS_OUR_FRIEND-end---------------------------------------------- -->
 
<!-- ----------------------------------------POSTER---------------------------------------------- -->
 
<section style="margin-top: 10px" class="season">
    <div class="container-fluid">
      <div class="row mt-5 mb-5">
        <div class="d-flex col-sm-4 col-12 justify-content-start" >
          <img src="assets/img/Home Page Images/Season-Sale-1.jpg" class="posters" alt="" srcset="" />
        </div>
        <div class="d-flex col-sm-4 col-12">
          <img src="assets/img/Home Page Images/Season-Sale-2.jpg" alt="" class="posters" srcset="" />
        </div>
        <div class="d-flex col-sm-4 col-12 justify-content-end" >
          <img src="assets/img/Home Page Images/Season-Sale-3.jpg" alt="" class="posters" srcset="" />
        </div>
      </div>
    </div>
  </section>
 <!-- ----------------------------------------POSTER_end---------------------------------------------- -->
 

<!-- ----------------------------------------PEOLPLE_LOVE_US---------------------------------------------- -->
<section class="testimonial separation text-center">
   <div class="container testimonial-spacing">
      <div class="container newfont">
         <h1 class="d-flex justify-content-center color newfont">PEOPLE LOVE US</h1>
      </div>
   </div>
   <div class="container " style=" margin-top:30px " >
      <div class="row newfont">
         <div class="col-5 col-sm-5 d-flex justify-content-left leaf-design" >
            <img src="assets/img/Home Page Images/Leaf.png" class="d-none-mobile" alt="" style="width:90%; height:90%;">
         </div>
         <div class="col-12 col-sm-7 newfont d-flex justify-content-right swiper mySwiper pt-3 testimonial-block"  >
            <div class="swiper-wrapper ">
               <div class="swiper-slide pb-5 pl-5 pr-5 pt-3" style=" background:#F4EEE6; border-radius:20px; " >
                  <p class="Testimonial-font ">The answer to all my hair woes!
                     This product is a lifesaver! I struggled with immense hair fall over the last few months but ever since I've started using the Onion hair oil, my hair fall has drastically reduced! With great ingredients and not a very heavy texture, I've found it to be most effective when applied twice a week. They also have two sizes - you can start with the smaller bottle to test which one works for you the best. Going to reorder this for sure!
                     <br>
                     <span style="font-weight: bold;">- Aanchal L.</span><br>
                     <span style="font-weight: bold;">Product – Onion, Lavender and Black Seed Hair Oil</span>
                  </p>
               </div>
               <div class="swiper-slide pb-5 pl-5 pr-5 pt-3 " style=" background:#F4EEE6; border-radius:20px;">
                  <p class="Testimonial-font ">
                     Dandruff got vanished in just 1 use. This oil is highly recommended.
                     My Thick Dandruff got Vanished in just a usage. This oil is Highly Recommended.
                     The fragrance is very good and soothing.
                     It comes with a free Comb made from Neem wood which is something very organic and unique.
                     Thanks Natures Mystery and Amazon for such a good shipping experience.<br>
                     <span style="font-weight: bold;">-Manju T.</span><br>
                     <span style="font-weight: bold;">Product – Lemon, Ginger and Tea Tree Hair Oil</span>
                  </p>
               </div>
               <div class="swiper-slide pt-5 pr-5 pl-5" style=" background:#F4EEE6; border-radius:20px;"  >
                  <p class="Testimonial-font">
                     This product is a lifesaver! I struggled with immense hair fall over the last few months but ever since I've started using Nature’s Mystery Onion black seed lavender hair oil, my hair fall has drastically reduced! With great ingredients and not a very heavy texture.<br>
                     <span style="font-weight: bold;">-Mukesh M.</span><br>
                     <span style="font-weight: bold;">Product – Onion, Lavender and Black Seed Hair Oil</span>
                  </p>
               </div>
               <div class="swiper-slide pt-5 pr-5 pl-5" style=" background:#F4EEE6; border-radius:20px;" >
                  <p class="Testimonial-font" >
                     It smells amazing. I apply this ubtan with curd and it’s really working for my skin. I can see a natural glow and my skin texture improved.<br>
                     <span style="font-weight: bold;">-Poonam M.<br></span>
                     <span style="font-weight: bold;">Product – Besan, Oats and Banana Ubtan</span>
                  </p>
               </div>
               <div class="swiper-slide pt-5 pr-5 pl-5" style=" background:#F4EEE6; border-radius:20px;" >
                  <p class="Testimonial-font" >
                     If you have dark and pigmented lips this is the go to lip balm. I can see the difference with regular use in morning and night. My lip color has lighten a little and the smell is really good.<br>
                     <span style="font-weight: bold;">–Anishka C.</span><br>
                     <span style="font-weight: bold;">Product – Blood Orange, Licorice and Lemon Lip Balm</span>
                  </p>
               </div>
            </div>
            <div class="swiper-pagination" style=" padding-top:-10px;"   ></div>
         </div>
      </div>
   </div>
   </div>
</section>
<!-- ----------------------------------------PEOLPLE_LOVE_US-end---------------------------------------------- -->


 <!-- ----------------------------------------INSTA---------------------------------------------- -->
 <section style="padding:35px 0 30px 0; ">
    <div class="container mt-4 text-center">
      <h1 class="d-flex justify-content-center color newfont">Follow us on Instagram</h1>
      <a style="color:#333" href="https://www.instagram.com/naturesmysteryproducts/">@naturesmysteryproducts</a>
     <br /><br />
    </div>
    <div class="container">
      <div class="row">

        <div class="col-4">
            <a href="https://www.instagram.com/naturesmysteryproducts/">    <img src="<?php print_r($result->data[0]->media_url);?>
        " alt="" srcset=""></a>
        </div>

        <div class="col-4">
        <a href="https://www.instagram.com/naturesmysteryproducts/">     <img src="<?php print_r($result->data[1]->media_url);?>" alt="" srcset=""></a>
        </div>

        <div class="col-4">
        <a href="https://www.instagram.com/naturesmysteryproducts/">     <img src="<?php print_r($result->data[2]->media_url);?>" alt="" srcset=""></a>
        </div>

       
      </div>
      <br />
      <div class="row">

<div class="col-4">
    <a href="https://www.instagram.com/naturesmysteryproducts/">    <img src="<?php print_r($result->data[3]->media_url);?>
" alt="" srcset=""></a>
</div>

<div class="col-4">
<a href="https://www.instagram.com/naturesmysteryproducts/">     <img src="<?php print_r($result->data[4]->media_url);?>" alt="" srcset=""></a>
</div>

<div class="col-4">
<a href="https://www.instagram.com/naturesmysteryproducts/">     <img src="<?php print_r($result->data[5]->media_url);?>" alt="" srcset=""></a>
</div>


</div>
    </div>

  </section>


<script>
      var swiper = new Swiper(".mySwiper", {
        pagination: {
          el: ".swiper-pagination",
          clickable: true
        },
        autoplay: true
      });
</script>

<script>
var swiper = new Swiper(".mySwiper", {
 pagination: {
   el: ".swiper-pagination",
   clickable: true,
   renderBullet: function (index, className) {
     return '<span class="' + className + '">'  + "</span>";
   },
 },
 autoplay: {
     delay: 3000,
   }
});
</script>

<?php echo $footer;?>
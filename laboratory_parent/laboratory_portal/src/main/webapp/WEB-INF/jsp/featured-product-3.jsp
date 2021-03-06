<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="css/normalize.css" type="text/css" />
  <link rel="stylesheet" href="css/main.css" type="text/css" />
  <link rel="stylesheet" href="css/flexbox.css" type="text/css" />
  <link rel="stylesheet" href="css/header.css" type="text/css" />
  <link rel="stylesheet" href="css/productpages.css" type="text/css" />
  <link rel="stylesheet" href="css/footer.css" type="text/css" />
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,500,700,900" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
  <title>Browse Products | Customo Coffee</title>
</head>

<body>
  <!-- HEADER // -->
  <header class="section-header">
    <div class="container width-100 header-container">
      <div class="block">
        <nav class="nav-main container">

              <a href="javascript:void(0)" class="hidden hamburger-menu-container" aria-hidden="true"  id="nav-center-toggle" aria-controls="main-nav-items">
                <img src="img/hamburger.png" alt="icon for hamburger menu">
              </a>

            <div class="nav-left block" role="menu">
                <a href="index.jsp"><img src="img/customoLogo.png" class="nav-home" alt="Customo Coffee Home"/></a>
            </div>
            <div class="nav-center block-2" role="menu">
              <nav id="main-nav-items" class="side-nav">
                <a href="javascript:void(0)" id="side-nav-close-button" class="hidden" aria-hidden="true">&times;</a>
                <a href="about-coffee.jsp">Coffee 101</a>
                <a href="products.jsp">Store</a>
                <a href="updates.jsp">Events</a>
                <a href="contact.jsp">Contact</a>
              </nav>
            </div>
            <div class="nav-right block" role="menu">
                <a href="my-cart.jsp"><img src="img/cart_icon.png" alt="a cart icon" class="nav-my-cart"/>
                  <span class="mycart-text">Cart</span></a>
            </div>
          </nav>
        </div>
      </div>

      <script src="js/header-hamburger.js"></script>
    </header>

    <div class="container product-detail-all-container">
      <a href="products.jsp" class="default-button">Back to Catalogue</a>
      <section class="container container-product-detail">

          <div class="block product-detail-img-container">
            <div class="img-product-detail">
                <img src="img/featureCoffee3_bassetEspresso/basset1.jpg" alt="cultura coffee bag 1">
            </div>
            <div class="img-product-detail-side pull-right">
              <img src="img/featureCoffee3_bassetEspresso/basset2.jpg" alt="cultura coffee bag 2">
              <img src="img/featureCoffee3_bassetEspresso/basset3.jpg" alt="cultura coffee detail shot">
            </div>
          </div>

          <div class="product-coffee-caption block">
            <h2>Bassett Espresso</h2>
            <h3>Ethiopia Shakiso: Medium Roast</h3>

            <p class="detail-product-title">$8.99</p>
            <p><strong>Cup profile: </strong>White Peach, Dried Apricots and Green Tea.</p>
            <p>
              <strong>Location:</strong> This week’s Single Provenance is sourced from the Guji zone of Shakiso which is located in one of Ethiopia’s largest specialty coffee growing regions, Oromia.
            </p>
            <p><strong>About the Roaster: </strong>We work with customers who share our values of excellence, quality and consistency. They range from contemporary cafes through to high-end restaurants and five-star resorts. <br />

            Our philosophy supports the consistent creation of exceptional coffee. We work closely with our customers, delivering tailored barista training, high performance machinery and ongoing service and support. <br />
            We're committed to creating and delivering exceptional coffee. From sourcing to roasting, our detailed processes ensure we achieve the highest degree of quality and consistency.</p>

            <a href="my-cart.jsp" class="default-button">Add to Cart</a>
          </div>

      </section>

      <section class="section-leave-review block">
          <!-- <div class="section-contact-us"> -->
            <h2>Leave a Review!</h2>
                <div class="form-box">
                <!-- Pure CSS star rating https://www.everythingfrontend.com/posts/star-rating-input-pure-css.html -->

                <span class="rating">
                  <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
                    <label for="rating-input-1-5" class="rating-star"></label>
                  <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
                    <label for="rating-input-1-4" class="rating-star"></label>
                  <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
                    <label for="rating-input-1-3" class="rating-star"></label>
                 <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
                  <label for="rating-input-1-2" class="rating-star"></label>
                 <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
                  <label for="rating-input-1-1" class="rating-star"></label>
                </span>

                  <label class="subheader3">Name</label>
                  <input type="text" name="firstname" class="contact-form"/>

                <div>
                  <label class="subheader3">Tell us about your thoughts on this Coffee!</label>
                  <textarea class="message-box" placeholder="Let us know what you think!"></textarea>
                </div>
                    <button class="default-button">Submit</button>
              </div>
            <!-- </div> -->
      </section>

    </div>


<!-- FOOTER ////////////////////////////////////////////////////////////////////// -->
<footer class="section-footer">
    <div class="container width-70 footer-container">
      <div class="block" role="menu">
        <nav class="nav-footer">
              <a href="styleguide/styleguideIndex.html">Style Guide</a><span> | </span>
              <a href="references.jsp">References</a><span> | </span>
              <a href="https://github.com/S-Karen-Lim/IAT-339-PO2-Team-16">Git Repository</a>
        </nav>
      </div>
    </div>
</footer>

</body>


</html>

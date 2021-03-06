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
                <img src="img/featureCoffee4_fernwoodCoffee/fernwood1.jpg" alt="cultura coffee bag 1">
            </div>
            <div class="img-product-detail-side pull-right">
              <img src="img/featureCoffee4_fernwoodCoffee/fernwood2.jpg" alt="cultura coffee bag 2">
              <img src="img/featureCoffee4_fernwoodCoffee/fernwood3.jpg" alt="cultura coffee detail shot">
            </div>
          </div>

          <div class="product-coffee-caption block">
            <h2>Fernwood Coffee</h2>
            <h3>1936 Espresso Blend: Light-medium Roast</h3>

            <p class="detail-product-title">$8.99</p>
            <p><strong>Cup profile: </strong>Decadent and Full bodied cup with a sweet, bright acidity and notes of peach in the finish. </p>

            <p>
              <strong>Blend:</strong>Brazil, Poco Fundo – Minas Gerais & Ethiopia, Yirgacheffe - Kochere G1
            </p>

            <p><strong>About the Roaster: </strong>Fernwood Coffee was established in 2007 after we took over The Parsonage Cafe. Intrigued by the circa 1930's German coffee roaster sitting behind the cafe’s counter, we enrolled in world­-renowned roasting courses, workshops, and trade shows everywhere from Idaho, to California, to Seattle; traveled extensively; apprenticed with highly­ regarded baristas and roasters; and researched exhaustively to roast, brew, and pull the finest coffee possible.<br />

            If relationships to community and place drive us, coffee defines us. We hand craft and roast only the finest coffees, and constantly experiment to highlight the best that each carefully sourced coffee has to offer. As obsessive roasters and competitive baristas, we push ourselves and try new things while never straying from what matters most: distinctive coffee made right here in Fernwood. <br />

            The story’s the same with our cafe menu. We source ingredients from local farmers, butchers, fishmongers, and bakers to provide a menu that’s fresh, reasonable, and local. Classic yet contemporary, refined yet unpretentious, our seasonal menu is developed with the same degree of care, attention, and experimentation that goes into our award winning espresso and filtered coffees. <br />

            By having a hand in each step of the process — from green bean sourcing, to roasting, to brewing, to menu design, to serving, to barista training — we provide a meeting place that reflects our devotion to coffee, community, and culture in Fernwood.</p>
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

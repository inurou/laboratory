<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="css/normalize.css" type="text/css" />
  <link rel="stylesheet" href="css/flexbox.css" type="text/css" />
  <link rel="stylesheet" href="css/main.css" type="text/css" />
  <link rel="stylesheet" href="css/header.css" type="text/css" />
  <link rel="stylesheet" href="css/productpages.css" type="text/css" />
  <link rel="stylesheet" href="css/footer.css" type="text/css" />
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,500,700,900" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
  <title>My Cart | Customo Coffee</title>
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

  <section class="section-my-cart">
    <h2 class="cart-title">My Cart (1/3)</h2>

    <div class="container cart-product-container">
      <div class="block width-100">
            <table>
                <thead>

                </thead>
                <tbody>
                    <tr>
                      <td class="width-40">
                          <div class="container cart-container">
                              <div class="block cart-image-container">
                                  <img src="img/featureCoffee2_BalzacsCoffee/balzacs1.jpg" alt="Balzac Coffee blend, cart item 1">
                                    <h4>Balzac's Coffee: Marble Roast</h4>
                                    <p>Marble Roast, Ground, 350g</p>

                              </div>
                          </div>
                      </td>
                      <td>In stock</td>
                      <td><select class="cart-quantity-selector">
                        <option class="subject-options-style" value="1">1</option>
                        <option class="subject-options-style" value="2">2</option>
                        <option class="subject-options-style" value="3">3</option>
                        <option class="subject-options-style" value="4">4</option>
                        <option class="subject-options-style" value="5">5</option>
                        <option class="subject-options-style" value="6">6</option>
                        <option class="subject-options-style" value="7">7</option>
                        <option class="subject-options-style" value="8">8</option>
                        <option class="subject-options-style" value="9">9</option>
                        <option class="subject-options-style" value="10">10</option>
                      </select></td>
                      <td>$8.99</td>
                    </tr>
                    <tr>
                      <td>
                          <div class="container cart-container">
                              <div class="block cart-image-container">
                                  <img src="img/catalogueImgs/ripple-coffee.jpg" alt="Ripple Coffee, cart item 2">
                                    <h4>Ripple Coffee - Malt Caramel and Red Apple</h4>
                                    <p>Medium-Dark Roast, Whole, 350g</p>

                              </div>
                          </div>
                      </td>
                      <td class="width-10">In stock</td>
                      <td class="width-10"><select class="cart-quantity-selector">
                        <option class="subject-options-style" value="1">1</option>
                        <option class="subject-options-style" value="2">2</option>
                        <option class="subject-options-style" value="3">3</option>
                        <option class="subject-options-style" value="4">4</option>
                        <option class="subject-options-style" value="5">5</option>
                        <option class="subject-options-style" value="6">6</option>
                        <option class="subject-options-style" value="7">7</option>
                        <option class="subject-options-style" value="8">8</option>
                        <option class="subject-options-style" value="9">9</option>
                        <option class="subject-options-style" value="10">10</option>
                      </select></td>
                      <td class="width-10">$6.89</td>
                    </tr>
                    <tr>
                      <td>
                          <div class="container cart-container">
                              <div class="block cart-image-container">
                                  <img src="img/catalogueImgs/roundsquare.jpg" alt="Round Square Coffee, cart item 3">
                                    <h4>Round Square</h4>
                                    <p>House Blend, Whole, 900g</p>

                              </div>
                          </div>
                      </td>
                      <td>In stock</td>
                      <td><select class="cart-quantity-selector">
                        <option class="subject-options-style" value="1">1</option>
                        <option class="subject-options-style" value="2">2</option>
                        <option class="subject-options-style" value="3">3</option>
                        <option class="subject-options-style" value="4">4</option>
                        <option class="subject-options-style" value="5">5</option>
                        <option class="subject-options-style" value="6">6</option>
                        <option class="subject-options-style" value="7">7</option>
                        <option class="subject-options-style" value="8">8</option>
                        <option class="subject-options-style" value="9">9</option>
                        <option class="subject-options-style" value="10">10</option>
                      </select></td>
                      <td>$19.99</td>
                    </tr>
                </tbody>
            </table>
        </div>
      </div>

      <div id="cart-total" class="width-90">
        <p>Total: $35.87</p>
      </div>

      <div id="checkout-button" class="width-90">
          <a href="checkout.jsp" class="default-button">Proceed to Checkout</a>
      </div>
    </section>

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

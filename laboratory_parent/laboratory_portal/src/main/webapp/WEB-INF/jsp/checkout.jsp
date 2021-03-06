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
  <link rel="stylesheet" href="css/footer.css" type="text/css" />
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,500,700,900" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
  <title>Checkout | Customo Coffee</title>
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

  <section class="section-checkout width-60"> <!-- Form goes here-->

    <h2 class="billing-title">Billing Information (2/3)</h2>
    <div class="container checkout-info-container">
            <h3 class="width-100">Billing Details</h3>
              <label class="subheader3">FIRST AND LAST NAME</label>
              <input type="text" name="first-and-last-name" class="contact-form"/>
              <label class="subheader3">EMAIL ADDRESS</label>
              <input type="text" name="email address" class="contact-form"/>
              <label class="subheader3">STREET ADDRESS</label>
              <input type="text" name="street" class="contact-form"/>
              <div class="container margin-none">
                  <div class="block checkout-input">
                      <label class="subheader3">CITY</label>
                      <input type="text" name="city" class="contact-form width-70"/>
                  </div>
                  <div class="block checkout-input">
                      <label class="subheader3">PROVINCE</label>
                      <input type="text" name="province" class="contact-form width-70"/>
                  </div>
                  <div class="block checkout-input">
                      <label class="subheader3">ZIP</label>
                      <input type="text" name="postalcode" class="contact-form width-70"/>
                  </div>
              </div>
            <h3 class="width-100">Shipping Address</h3>
            <label class="subheader3">FIRST AND LAST NAME</label>
            <input type="text" name="first-and-last-name" class="contact-form"/>
            <label class="subheader3">PHONE NUMBER</label>
            <input type="text" name="phone-name" class="contact-form"/>
            <label class="subheader3">STREET ADDRESS</label>
            <input type="text" name="street" class="contact-form"/>
            <div class="container margin-none">
                <div class="block checkout-input">
                    <label class="subheader3">CITY</label>
                    <input type="text" name="city" class="contact-form width-70"/>
                </div>
                <div class="block checkout-input">
                    <label class="subheader3">PROVINCE</label>
                    <input type="text" name="province" class="contact-form width-70"/>
                </div>
                <div class="block checkout-input">
                    <label class="subheader3">ZIP</label>
                    <input type="text" name="postalcode" class="contact-form width-70"/>
                </div>
            </div>

            <h3 class="width-100">Credit Card Details</h3>
            <label class="subheader3">NAME ON CARD</label>
            <input type="text" name="name-on-card" class="contact-form"/>
            <label class="subheader3">CREDIT CARD NUMBER</label>
            <input type="text" name="credit-card-number" class="contact-form"/>
            <div class="container margin-none form-container">
                <div class="block checkout-input">
                  <label class="subheader3">EXPIRY DATE</label>
                  <input type="text" name="expiry-date" class="contact-form width-70"/>
                </div>
                <div class="block checkout-input">
                  <label class="subheader3">CVV</label>
                  <input type="text" name="cvv" class="contact-form width-70"/>
                </div>
            </div>
      </div>
  </section>

  <div>
    <div id="cart-total" class="width-80">
      <p>Total: $43.97</p>
    </div>
  </div>

  <div class="width-80" id="checkout-button-container">
    <div class="container">
      <nav class="block" id="previous-button">
          <a href="my-cart.jsp" class="default-button">Back to My Cart</a>
      </nav>
      <nav class="block" id="finish-button">
          <a href="receipt.jsp" class="default-button">Finish Purchase</a>
      </nav>
    </div>
  </div>


  <!-- FOOTER ////////////////////////////////////////////////////////////////////// -->
  <footer class="section-footer">
      <div class="container width-70 footer-container">
        <div class="block">
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

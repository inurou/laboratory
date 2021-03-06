<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="css/normalize.css" type="text/css" />
  <link rel="stylesheet" href="css/flexbox.css" type="text/css" />
  <link rel="stylesheet" href="css/header.css" type="text/css" />
  <link rel="stylesheet" href="css/footer.css" type="text/css" />
  <link rel="stylesheet" href="css/main.css" type="text/css" />
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,500,700,900" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
  <title>Contact Us | Customo Coffee</title>
</head>

<body>
  <!-- HEADER // -->
  <header class="section-header">
    <div class="container width-100 header-container">
      <div class="block">
        <nav class="nav-main container">

              <a href="javascript:void(0)" class="hidden hamburger-menu-container" aria-hidden="true"  id="nav-center-toggle">
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

  <section id="receipt-container">
    <h2 class="receipt-title">Receipt (3/3)</h2>
      <div class="container">
          <div class="block receipt-block">
              <h3>Thank you!</h3>
              <p>Your order number is: 3284728</p>

              <p>Thank you for shopping with us! We have received your order and we will  prepare it for shipment
                soon. Your estimated delivery date will be <strong>6-8 business days</strong>. If you have any
                questions, please <a href="contact.jsp" class="in-text-link">contact us</a>.
              </p>
          </div>
      </div>
      <a href="products.jsp" class="default-button">Browse more products!</a>
  </section>

  <!-- FOOTER ////////////////////////////////////////////////////////////////////// -->
  <footer class="section-footer sticky-footer">
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

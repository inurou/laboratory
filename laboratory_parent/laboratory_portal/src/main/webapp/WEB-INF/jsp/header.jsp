<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/5/16
  Time: 19:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <script type="text/javascript" src="js/jquery.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,500,700,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
    <script src="js/token.js"></script>
    <title>数字媒体技术实验室</title>
</head>
<header class="section-header">
    <div class="container width-100 header-container">
        <div class="block">
            <nav class="nav-main container">

                <a href="javascript:void(0)" class="hidden hamburger-menu-container" aria-hidden="true"  id="nav-center-toggle" aria-controls="main-nav-items">
                    <img src="img/hamburger.png" alt="icon for hamburger menu">
                </a>

                <div class="nav-left block" role="menu">
                    <a href="http://localhost:8084/index.html"><img src="img/logo.png" class="nav-home" alt="Customo Coffee Home"/></a>
                </div>
                <div class="nav-center block-2" role="menu">
                    <nav id="main-nav-items" class="side-nav">
                        <a href="javascript:void(0)" id="side-nav-close-button" class="hidden" aria-hidden="true">&times;</a>
                        <a href="/about-coffee" >关于实验室</a>
                        <a href="/products" >数媒大家庭</a>
                        <a href="/updates" >预约&登记</a>
                        <a href="/contact" >我要加入</a>
                    </nav>
                </div>

                <div class="nav-center block-2" role="menu">
                    <nav id="main-nav-items1" class="side-nav">
                        <a href="javascript:void(0)" id="side-nav-close-button1" class="hidden" aria-hidden="true">&times;</a>

                        <a onclick = "loginInfo()" id = "userInfo" >登录</a>

                    </nav>
                </div>
            </nav>
        </div>
    </div>

    <script src="js/header-hamburger.js"></script>
</header>
</body>
</html>

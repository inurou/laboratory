<%@ page import="com.lab.pojo.Search" %>
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
  <title>数字媒体技术实验室</title>
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
                <a href="http://localhost:8084/index.html"><img src="img/logo.png" class="nav-home" alt="Customo Coffee Home"/></a>
            </div>
            <div class="nav-center block-2" role="menu">
              <nav id="main-nav-items" class="side-nav">
                <a href="javascript:void(0)" id="side-nav-close-button" class="hidden" aria-hidden="true">&times;</a>
                  <a href="http://localhost:8084/about-coffee.html" >关于实验室</a>
                  <a href="http://localhost:8084/products.html" >数媒大家庭</a>
                  <a href="http://localhost:8084/updates.html" >预约&登记</a>
                  <a href="http://localhost:8084/contact.html" >我要加入</a>
              </nav>
            </div>
            <div class="nav-center block-2" role="menu">
                <nav id="main-nav-items1" class="side-nav">
                    <a href="javascript:void(0)" id="side-nav-close-button1" class="hidden" aria-hidden="true">&times;</a>

                    <a href="http://localhost:8084/login.html" alt="a cart icon">登录</a>

                </nav>
            </div>
          </nav>
        </div>
      </div>

      <script src="js/header-hamburger.js"></script>
    </header>

<%--<div class="container product-detail-all-container">

  <section class="container container-product-detail">

      <div class="block product-detail-img-container">
        <div class="img-product-detail">
            <img src="img/lab/teacher1.bmp" alt="">
        </div>
      </div>

      <div class="product-coffee-caption block">
        <h2>胡敏</h2>
        <h3>重庆邮电大学通信与信息工程学员数字媒体技术专业教导主任</h3>
          <br><strong>专业职称： </strong>2005~至今:副教授,在重庆邮电大学通信与信息工程学院任职,通信与网络技术教学部副主任</br>

            1999~2004:讲师,在重庆邮电大学通信与信息工程学院任职</br>

            1993~1999:助教,重庆邮电学院电信系任职</p>
        <p><strong>研究领域: </strong>作为一名通信与网络技术教学部的一名教师,承担了以下课程:通信网与计算机网、通信信息网络、微机原理、光缆工程、光纤通信系统等等。
            长期关注通信网络的发展,主持并参加了多个关于网络测试与性能评价相关项目,主要研究方向为网络管理与网络测试。</p>
          <p><strong>项目: </strong>1、网络测试与性能评价系统平台研究及应用,(2004~2006),主持人</br>

              2、基于教师专长教学方式研究与实践,(2001~2002),主持人</br>

              3、网格资源管理技术研究,(2003~2004),主持人</br>

              4、网络测试及性能评价模型研究,(2001~2002),第二完成人</br>

              5、开放式网络管理平台研究及开发,(2001~2003),第二完成人</br>

              6、基于IP网络的开放式网络管理体系结构研究,(2003~2004),第二完成人</br>

              7、网络计算环境中动态资源调度技术研究及应用,(2004~2006),参与</br>

              8、信息系统工程监理技术研究及应用,(2003~2006),参与</p>

      </div>
  </section>
</div>--%>
  <%

      Search search = (Search) request.getAttribute("searchDesc");
      if(search != null){
          out.write("<div class=\"container product-detail-all-container\">");
          out.write("<section class=\"container container-product-detail\">");
          out.write("<div class=\"block product-detail-img-container\">");
          out.write("<div class=\"img-product-detail\">");
          out.write("<img src=" + search.getImage() + " alt=\"\">");
          out.write("</div>");
          out.write("</div>");
          out.write("<div class=\"product-coffee-caption block\">");
          out.write("<h2>" + search.getOwner() + "</h2>");
          out.write("<h3>" + search.getTitle() + "</h3>");
          out.write("<p><strong>内容: </strong>" + search.getContent() + "</p>");
          out.write("</div>");
          out.write("</section>");
          out.write("</div>");
      }
  %>


<!-- FOOTER ////////////////////////////////////////////////////////////////////// -->
  <footer class="section-footer">
      <div class="container width-70 footer-container">
          <div class="block">
              <nav class="nav-footer">
                  <a href="styleguide/styleguideIndex.html" >重庆邮电大学通信与信息工程学院-数字媒体技术实验室</a>
              </nav>
          </div>
      </div>
  </footer>
</body>


</html>

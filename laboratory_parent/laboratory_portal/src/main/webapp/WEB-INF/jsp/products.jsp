<%@ page import="com.lab.pojo.Member" %>
<%@ page import="java.util.List" %>
<%@ page import="sun.misc.Request" %>
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
    <script type="text/javascript" src="js/jquery.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,500,700,900" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
  <title>数媒大家庭</title>
</head>
<script type="text/javascript">
    var token;
    window.onload = function () {
        token = localStorage.getItem("token");
        loginInfo()
    };
    function loginInfo(){
        if(token == null){
            alert("系统检测到您未登录，请前去登录！");
            window.location.href = '/login';
        }else {
            $.ajax({
                type: 'GET',
                url: "/userInfo",
                data: {
                    token: token
                },
                success: function (e) {
                    if (e.status == 200) {
                        document.getElementById("userInfo5").innerHTML = "欢迎您，" + e.data.name;
                    }
                    if (e.status == 400) {
                        alert("登陆信息已过期，请前去登录");
                        window.location.href = '/login';
                    }
                },
                error: function (x) {
                    alert("出错了" + x.status);
                }
            })
        }
    }
</script>
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
                <a href="http://localhost:8084/about-coffee.html">关于实验室</a>
                <a href="http://localhost:8084/products.html" class="nav-active">数媒大家庭</a>
                <a href="http://localhost:8084/updates.html">设备租借</a>
                <a href="http://localhost:8084/contact.html">我要加入</a>
              </nav>
            </div>
            <div class="nav-center block-2" role="menu">
				<nav id="main-nav-items5" class="side-nav">
					<a href="javascript:void(0)" id="side-nav-close-button5" class="hidden" aria-hidden="true">&times;</a>
                    <a onclick = "loginInfo()" id = "userInfo5" >登录</a>
					
				 </nav>
			</div>
          </nav>
        </div>
      </div>

      <script src="js/header-hamburger.js"></script>
    </header>

  <section class="section-product-featured container">

        <div class="block feature-heading">
            <h2>指导老师</h2>
      
        </div>


      <div class="container container-feature-coffee"> <!-- holds images -->
          <div class="feature-coffee-block"> <!-- feature coffee 1 -->
            <div class="feature-product-img-container">
              <img src="img/lab/1.jpg" alt="feature coffee: Cultura Coffee">
            </div>
              <figure>
                <figcaption class="feature-coffee-caption">
                  <p>胡敏老师</p>

                </figcaption>
              </figure>
            <%--<div class="feature-coffee-button">
              <a href="http://localhost:8084/featured-product-1.html" class="default-button">查看</a>
            </div>--%>
          </div>

          <div class="feature-coffee-block"> <!-- feature coffee 1 -->
            <div class="feature-product-img-container">
              <img src="img/lab/1.jpg" alt="feature coffee: Cultura Coffee">
            </div>
              <figure>
                <figcaption class="feature-coffee-caption">
                  <p>刘占军老师</p>
                </figcaption>
              </figure>
            <%--<div class="feature-coffee-button">
              <a href="http://localhost:8084/featured-product-1.html" class="default-button">查看</a>
            </div>--%>
          </div>

       <div class="feature-coffee-block"> <!-- feature coffee 1 -->
            <div class="feature-product-img-container">
              <img src="img/lab/1.jpg" alt="feature coffee: Cultura Coffee">
            </div>
              <figure>
                <figcaption class="feature-coffee-caption">
                  <p>高陈强老师</p>
                </figcaption>
              </figure>
            <%--<div class="feature-coffee-button">
              <a href="http://localhost:8084/featured-product-1.html" class="default-button">查看</a>
            </div>--%>
          </div>

        <div class="feature-coffee-block"> <!-- feature coffee 1 -->
            <div class="feature-product-img-container">
              <img src="img/lab/1.jpg" alt="feature coffee: Cultura Coffee">
            </div>
              <figure>
                <figcaption class="feature-coffee-caption">
                  <p>周翊老师</p>
                </figcaption>
              </figure>
            <%--<div class="feature-coffee-button">
              <a href="http://localhost:8084/featured-product-1.html" class="default-button">查看</a>
            </div>--%>
          </div>
        </div>
      </div>
  </section>


  <!-- Product Catalogue ////////////////////////////////////////////////////// -->
  <section class="section-product-catalogue container width-70">
      <h2 id="header-product-catalogue">数媒学员</h2>

        <%--<div class="block catalogue-coffee-block">
          <div class="block product-image-container">
            <img src="img/lab/inu.png" alt="Quills Coffee">
          </div>
          <figure>
          <figcaption class="product-coffee-title">
            <p>2015级</p>
            <p>罗阳</p>
          </figcaption>
          </figure>
        </div>--%>
    <%

      List<Member> members = (List<Member>) request.getAttribute("memberAllList");

      for(int i = 0;i < members.size();i++){
          if(members.get(i).getImage() == null || members.get(i).getImage() == "") {
              members.get(i).setImage("img/lab/inu.png");
          }
              out.write("<div class=\"block catalogue-coffee-block\">");
              out.write("<div class=\"block product-image-container\">");
              out.write("<img src=" + members.get(i).getImage() + " alt=\"\">");
              out.write("</div>");
              out.write("<figure>");
              out.write("<figcaption class=\"product-coffee-title\">");
              out.write("<p>" + members.get(i).getGrade() + "</p>");
              out.write("<p>" + members.get(i).getName() + "</p>");
              out.write("</figcaption>");
              out.write("</figure>");
              out.write("</div>");
          }

    %>

  </section>

  <!-- FOOTER ////////////////////////////////////////////////////////////////////// -->
  <footer class="section-footer">
      <div class="container width-70 footer-container">
        <div class="block" role="menu">
          <nav class="nav-footer">
                <a href="/index" >重庆邮电大学通信与信息工程学院-数字媒体技术实验室</a>
          </nav>
        </div>
      </div>
  </footer>

</body>


</html>

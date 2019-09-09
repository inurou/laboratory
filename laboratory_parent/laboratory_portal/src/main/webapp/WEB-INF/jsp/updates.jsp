<%@ page import="com.lab.pojo.EquipmentList" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  <title>设备租借</title>
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
                        document.getElementById("userInfo3").innerHTML = "欢迎您，" + e.data.name;
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
    function showWindow(){
        window.location.href='/equipment';
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
                  <a href="http://localhost:8084/products.html">数媒大家庭</a>
                  <a href="http://localhost:8084/updates.html" class="nav-active">设备租借</a>
                  <a href="http://localhost:8084/contact.html">我要加入</a>
              </nav>
            </div>
            <div class="nav-center block-2" role="menu">
				<nav id="main-nav-items3" class="side-nav">
					<a href="javascript:void(0)" id="side-nav-close-button3" class="hidden" aria-hidden="true">&times;</a>
                    <a onclick = "loginInfo()" id = "userInfo3" >登录</a>
					
				 </nav>
			</div>
          </nav>
        </div>
      </div>

      <script src="js/header-hamburger.js"></script>
    </header>
  <section class="section-product-catalogue container width-70">
      <h2 id="header-product-catalogue">实验室设备</h2>
      <%

          List<EquipmentList> list = (List<EquipmentList>) request.getAttribute("equipment");

          if(list != null){

              for(int i = 0;i < list.size();i++){

                  out.write("<div class=\"block catalogue-coffee-block\">");
                  out.write("<figure><div class=\"block product-image-container\">");
                  out.write("<img src=" + list.get(i).getImage() + " alt=\"\">");
                  out.write("<div class=\"text-overlay-product\">");
                  /*out.write("<a onclick=searchFunc(" + list.get(i).getId() + ")>查看</a>");*/
                  out.write("</div>");
                  out.write("</div>");
                  out.write("<figcaption class=\"product-coffee-title\">");
                  out.write("<p>设备名称：" + list.get(i).getEquipmentname() + "</p>");
                  out.write("<p>设备用途：" + list.get(i).getEquipmentcontent() + "</p>");
                  out.write("<P id=\"name\">设备数量：" + list.get(i).getNumber() + "</P>");
                  out.write("</figcaption>");
                  out.write("</figure>");
                  out.write("</div>");
              }

          }
      %>



  </section>

  <div class="container">
      <div class="block">
          <nav class="products-hyperlink">
              <button onclick="showWindow()" class="default-button">我要借用</button>
          </nav>
      </div>
  </div>






  

  <!-- FOOTER ////////////////////////////////////////////////////////////////////// -->
  <footer class="section-footer">
      <div class="container width-70 footer-container">
        <div class="block">
          <nav class="nav-footer">
                <a href="/index" >重庆邮电大学通信与信息工程学院-数字媒体技术实验室</a>
          </nav>
        </div>
      </div>
  </footer>


</body>

</html>

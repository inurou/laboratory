<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
  <script type="text/javascript" src="js/jquery.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,500,700,900" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
  <title>我要加入</title>


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
              document.getElementById("userInfo4").innerHTML = "欢迎您，" + e.data.name;
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

    var regex_email = /^\w+@\w+(\.[a-zA-Z]{2,3}){1,3}$/;
    var regex_tel = /^1[345789]\d{9}$/;
    var flag = false;
    var flag1 = false;
    var flag2 = false;
    var flag3 = false;
    var flag4 = false;
    var flag5 = false;
    var flag6 = false;

    $(document).ready(function() {
      $("#name").blur(function () {
        var _member = new Object();
        _member.name = document.getElementById("name").value;
        if (_member.name == "") {
          document.getElementById("_name").innerHTML = "<span style='font-size:12px; color:red;'>姓名不能为空！</span>";
          flag1 = false;
        }else{
          flag1 = true;
        }
      });

      $("#number").blur(function () {
        var _member = new Object();
        _member.number = document.getElementById("number").value;
        if (_member.number == "") {
          document.getElementById("_number").innerHTML = "<span style='font-size:12px; color:red;'>学号不能为空！</span>";
          flag2 = false;
        }else{
          flag2 = true;
        }
      });

      $("#email").blur(function () {
        var _member = new Object();
        _member.email = document.getElementById("email").value;
        if (_member.email == "") {
          document.getElementById("_email").innerHTML = "<span style='font-size:12px; color:red;'>邮箱地址不能为空！</span>";
        }else{
          if(!regex_email.test(_member.email)){
            document.getElementById("_email").innerHTML = "<span style='font-size:12px; color:red;'>邮箱地址不正确！</span>";
            flag3 = false;
          }else{
            flag3 = true;
          }
        }
      });

      $("#phone").blur(function () {
        var _member = new Object();
        _member.phone = document.getElementById("phone").value;
        if (_member.phone == "") {
          document.getElementById("_phone").innerHTML = "<span style='font-size:12px; color:red;'>手机号码不能为空！</span>";

        } else {
          if (!regex_tel.test(_member.phone)) {
            document.getElementById("_phone").innerHTML = "<span style='font-size:12px; color:red;'>手机号码不正确！</span>";
            flag4 = false;
          }else{
            flag4 = true;
          }
        }
      });

      $(document).ready(function() {
        $("#QQ").blur(function () {
          var _member = new Object();
          _member.QQ = document.getElementById("QQ").value;
          if (_member.QQ == "") {
            document.getElementById("_QQ").innerHTML = "<span style='font-size:12px; color:red;'>QQ号码不能为空！</span>";
            flag5 = false;
          }else{
            flag5 = true;
          }
        });
      });

      $(document).ready(function() {
        $("#major").blur(function () {
          var _member = new Object();
          _member.major = document.getElementById("major").value;
          if (_member.major == "") {
            document.getElementById("_major").innerHTML = "<span style='font-size:12px; color:red;'>专业不能为空！</span>";
            flag6 = false;
          }else{
            flag6 = true;
          }
        });
      });
    });
    function formSubmit(){

      var _member = new Object();
      _member.name = document.getElementById("name").value;
      _member.number = document.getElementById("number").value;
      _member.email = document.getElementById("email").value;
      _member.phone = document.getElementById("phone").value;
      _member.QQ = document.getElementById("QQ").value;
      _member.college = document.getElementById("subject-options").value;
      _member.major = document.getElementById("major").value;
      _member.honer = document.getElementById("honer").value;

      if(flag1 && flag2 && flag3 && flag4 && flag5 && flag6){
        flag = true;
      }

      if(!flag) {
        alert("您还未填写完毕!");
      }else{
        $.ajax({
          type: 'GET',
          url: "/join",
          data: {
            name: _member.name,
            number: _member.number,
            email: _member.email,
            phone: _member.phone,
            QQ: _member.QQ,
            college: _member.college,
            major: _member.major,
            honer: _member.honer
          },
          success: function (e) {
            if (e.status == 200) {
              alert("提交成功！");
              window.location.reload();
            }
          },
          error: function (x) {
            alert("出错了" + x.status);
          }
        })
      }
    }
  </script>
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
                <a href="http://localhost:8084/about-coffee.html">关于实验室</a>
                <a href="http://localhost:8084/products.html">数媒大家庭</a>
                <a href="http://localhost:8084/updates.html">设备租借</a>
                <a href="http://localhost:8084/contact.html" class="nav-active">我要加入</a>
              </nav>
            </div>
            <div class="nav-center block-2" role="menu">
				<nav id="main-nav-items4" class="side-nav">
					<a href="javascript:void(0)" id="side-nav-close-button4" class="hidden" aria-hidden="true">&times;</a>
                  <a onclick = "loginInfo()" id = "userInfo4" >登录</a>
					
				 </nav>
			</div>
          </nav>
        </div>
      </div>

      <script src="js/header-hamburger.js"></script>
    </header>

<div id="contact-us-img"></div>
  <section class="section-contact-us"> <!-- Form goes here-->

    <h2 class="contact-title">加入我们！</h2>

    <div class="container">
      <div class="block paragraph-block">
        <p class="contactus-paragraph">
          如果你喜欢编程，喜欢软件开发、大数据分析、游戏脚本开发，请加入我们！
        </p>
		<p class="contactus-paragraph">
          如果你喜欢设计，喜欢平面设计、PS绘图技术、3D模型设计，请加入我们！
        </p>
		<p class="contactus-paragraph">
          如果你什么都不会，不会编程也不会设计，没有关系，只要你对自己有信心，对新鲜事物有浓厚的兴趣，希望通过学习来获得一技之长，那么，这里将是你最好的平台。
        </p>

      </div>
    </div>



    <div class="container contact-container">
        <div class="block">
          <div class="form-box">
            <label class="subheader3" id = "_name">姓名</label>
            <input type="text" id = "name" class="contact-form"/>
            <label class="subheader3" id = "_number">学号</label>
            <input type="text" id="number" class="contact-form"/>
            <label class="subheader3" id = "_email">邮箱</label>
            <input type="text" id="email" class="contact-form"/>
            <label class="subheader3" id = "_phone">电话</label>
            <input type="text" id="phone" class="contact-form"/>
			<label class="subheader3" id = "_QQ">QQ</label>
            <input type="text" id="QQ" class="contact-form"/>
          </div>
        </div>
        <div class="block-2 form-box" id="contact-form-right">
          <div>
            <label class="subheader3" id="_college">学院</label>
            <select id="subject-options" class="contact-form">
              <option selected disabled>选择学院：</option>
              <option class="subject-options-style" value="通信与信息工程学院">通信与信息工程学院</option>
              <option class="subject-options-style" value="计算机学院">计算机学院</option>
              <option class="subject-options-style" value="软件工程学院">软件工程学院</option>
              <option class="subject-options-style" value="传媒学院">传媒学院</option>
              <option class="subject-options-style" value="外国语学院">外国语学院</option>
			  <option class="subject-options-style" value="光电学院">光电学院</option>
			  <option class="subject-options-style" value="法学院">法学院</option>
			  <option class="subject-options-style" value="理学院">理学院</option>
			  <option class="subject-options-style" value="生物学院">生物学院</option>
			  <option class="subject-options-style" value="体育学院">体育学院</option>
			  <option class="subject-options-style" value="其他">其他</option>
            </select>
			<label class="subheader3" id = "_major">专业</label>
            <input type="text" id="major" class="contact-form"/>
			<label class="subheader3" id = "_honer">你的过人之处</label>
            <textarea class="message-box" id = "honer" placeholder="请务必让我们知道你具有哪些过人之处，荣誉、奖项、证书、兴趣爱好都可以哟"></textarea>
          </div>
          <div id="contact-form-buttons">
              <button id="submitInput" class="default-button" onclick="formSubmit()">提交</button>
          </div>
        </div>
    </div>
  </section>




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

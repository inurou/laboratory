<%@ taglib prefix="hh" uri="http://www.springframework.org/tags/form" %>
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
  <link rel="stylesheet" href="css/st.css" type="text/css" />
  <script type="text/javascript" src="js/jquery.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,500,700,900" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
  <title>设备租借</title>

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
                <a href="http://localhost:8084/updates.html" class="nav-active">设备租借</a>
                <a href="http://localhost:8084/contact.html">我要加入</a>
              </nav>
            </div>
            <div class="nav-center block-2" role="menu">
                <nav id="main-nav-items3" class="side-nav">
                    <a href="javascript:void(0)" id="side-nav-close-button4" class="hidden" aria-hidden="true">&times;</a>
                    <a onclick = "loginInfo()" id = "loginInfo6" >登录</a>
                </nav>
            </div>
          </nav>
        </div>
      </div>

      <script src="js/header-hamburger.js"></script>
    </header>

<div ></div>
  <section class="section-contact-us"> <!-- Form goes here-->

    <h2 class="contact-title">设备预约租借</h2>
    </br>
    </br>
    <div class="container contact-container">
        <div class="block">
          <div class="form-box">
          <table class="tablelist" id = "tab">
                <thead>
                <tr>
                  <%--<th><input name="" type="checkbox" value="" checked=""/></th>--%>
                  <th>编号<i class="sort"><img src="images/px.gif" /></i></th>
                  <th>设备名称</th>
                  <th>设备数量</th>
                  <th >借用数量</th>
                  <th>操作</th>
                  <%--<th>是否审核</th>
                  <th>操作</th>--%>
                </tr>
                </thead>
                <tbody id="tbody">
                </tbody>
              </table>
              <div>
                <br>
                <br>
                <br>
                <br>
                <label class="subheader3" id = "lent_name" style="text-align: center">姓名</label>
                <input type="text" id = "lentname" class="contact-form" style="width: 300px;margin-left: 363px;"/>
                <br>
                <br>
                <br>
                <br>
                <label class="subheader3" id = "lent_number" style="text-align: center">学号</label>
                <input type="text" id="lentnumber" class="contact-form" style="width: 300px;margin-left: 363px;"/>
                <br>
                <br>
                <br>
                <br>
                <label class="subheader3" id = "lent_phone" style="text-align: center">电话</label>
                <input type="text" id="lentphone" class="contact-form" style="width: 300px;margin-left: 363px;"/>
                <br>
                <br>
                <br>
                <br>
                <h1 style="font-size: large" align="center" >租借日期：<input id = "date1" type="date" style="font-size: large" min="${date}" value=""/></h1>
                <br>
                <br>
                <h1 style="font-size: large" align="center" >归还日期：<input  id = "date2" type="date" style="font-size: large" min='${date}' value=""/></h1>
                <br>
                <br>
                <br>
                <br>
                <button id="submitInput" class="default-button" style = "display:block;margin:0 auto;margin-top: 10px" onclick="Submit()">提交</button>
              </div>
          </div>
        </div>

    </div>
  </section>

  <script>
      var token;
      window.onload = function () {
          show();
          token = localStorage.getItem("token");
          loginInfo()
      };
      var num =[];
      function show() {
          $.ajax({
              type: "GET",
              url: "/lent",
              dataType: "json",
              success: function (data) {
                  var count = 0;
                  var content = "";
                  for(var e in data) {
                    num[e] = 0;
                      if (data[e].status == 1) {
                          content += "<tr>\n" +
                              "<td>" + ++count + "</td>\n" +
                              "<td>" + data[e].equipmentname + "</td>\n" +
                              "<td>" + data[e].number + "</td>\n" +
                                  "<td>" + " <input   id="+ e + " value=\"0\" style='font-size: medium' disabled=\"disabled\"/>" + "</td>\n" +
                              "<td>" + "<input class=\\\"enter\\\" value='添加' type='button' onclick='addfuc("+ e +")'/>" +
                              "<input class=\\\"enter\\\" value='删除' type='button' onclick='deletefuc(" + e + ")'/>" + "</td>\n" +
                              "</tr>";
                      }
                  }

                  $("#tbody").html(content);
              },
              error:function(x){
                  alert("错误：" + x.status)
              }
          })
      }
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
                          document.getElementById("loginInfo6").innerHTML = "欢迎您，" + e.data.name;
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
      function addfuc(e) {
        document.getElementById(e).value = ++num[e];
        $.ajax({
          type:'POST',
          url:"AddCount",
          /*dataType:'json',*/
          data:{
            id:e,
            num:num[e],
          },
          success:function(msg) {
          }

        })
      }
      function deletefuc(e) {
        if(num[e] > 0){
          document.getElementById(e).value = --num[e];

          $.ajax({
            type:'POST',
            url:"SubCount",
            /*dataType:'json',*/
            data:{
              id:e,
              num:num[e],
            },
            success:function(msg) {

            }

          })
        }
      }
      var regex_tel1 = /^1[345789]\d{9}$/;

          function Submit(){
            var name = document.getElementById("lentname").value;
            if (name == "") {
              document.getElementById("lent_name").innerHTML = "<span style='font-size:12px; color:red;'>姓名不能为空！</span>";

            }else {
              var number = document.getElementById("lentnumber").value;
              if (number == "") {
                document.getElementById("lent_number").innerHTML = "<span style='font-size:12px; color:red;'>学号不能为空！</span>";

              }else{
                var phone = document.getElementById("lentphone").value;
                if (phone == "") {
                  document.getElementById("lent_phone").innerHTML = "<span style='font-size:12px; color:red;'>手机号码不能为空！</span>";

                } else {
                  if (!regex_tel1.test(phone)) {
                    document.getElementById("lent_phone").innerHTML = "<span style='font-size:12px; color:red;'>手机号码不正确！</span>";
                  }else{
                    $.ajax({
                      type:'POST',
                      url:"lentsubmit",
                      data:{
                        name:document.getElementById("lentname").value,
                        number:document.getElementById("lentnumber").value,
                        phone:document.getElementById("lentphone").value,
                        lenttime:document.getElementById("date1").value,
                        backtime:document.getElementById("date2").value
                      },
                      success: function (e) {
                        if (e.status == 200) {
                          alert("申请成功，请等待管理员审批")
                          window.location.reload()
                        }
                        if(e.status == 400){
                          alert("无效输入，请重试")
                          window.location.reload()
                        }
                      },
                      error: function (x) {
                        alert("出错了" + x.status);
                      }

                    })
                  }
                }
              }
            }
      }
  </script>




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

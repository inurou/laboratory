<%@ page import="com.lab.pojo.Search" %>
<%@ page import="java.util.List" %>
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
    <script src="js/token.js"></script>
  <title>数字媒体技术实验室</title>
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
                        document.getElementById("userInfo1").innerHTML = "欢迎您，" + e.data.name;
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
    function searchFunc(e){
        $.ajax({
            type: 'GET',
            url: "/memberDesc",
            data: {
                id:e
            },
            success: function (e) {
                if (e.status == 200) {
                    alert("提交成功！");

                }
            },
            error: function (x) {
                alert("出错了" + x.status);
            }
        })


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
                <a href="/about-coffee" >关于实验室</a>
                <a href="/products" >数媒大家庭</a>
                <a href="/updates" >设备租借</a>
                <a href="/contact" >我要加入</a>
              </nav>
            </div>

			<div class="nav-center block-2" role="menu">
				<nav id="main-nav-items1" class="side-nav">
					<a href="javascript:void(0)" id="side-nav-close-button1" class="hidden" aria-hidden="true">&times;</a>

					<a onclick = "loginInfo()" id = "userInfo1" >登录</a>
					
				 </nav>
			</div>
          </nav>
        </div>
      </div>

      <script src="js/header-hamburger.js"></script>
    </header>

<section id="section-index">
  <!-- HEADER // -->


  <div class="block"> <!--Company Title & Subtitle        1 -->
    <h1>数字媒体技术</h1>
    <h2>用技术改变生活，用艺术领悟生活</h2>
  </div>

</section>



  <!-- ABOUT US SECTION /////////////////////////////////////////////////////////////// -->
<section class="section-aboutus">

    <h2 class="section-aboutustitle">数字.媒体.技术</h2>

      <div class="block paragraph-block">
        <p class="aboutus-paragraph">
          数字媒体技术是主要包含场景设计、角色形象设计、游戏程序设计、多媒体后期处理、人机交互技术，主要针对游戏开发和网站美工还有创意设计这类工作设计的专业。</p>
	
        </div>

    <%--<div class="block roast-text-block">
        <h3 class="roasts_titles">指导思想</h3>
        <p>依托我校在信息与通信工程、计算机科学与技术领域的学科优势和在信号与信息处理的学科特色，以社会对数字媒体领域高素质人才的需求为导向，以学科建设为龙头，以高水平的师资队伍和良好的教学条件为保障，以课程体系改革和课程建设为核心，积极推进教育教学改革，创新人才培养模式，培养高素质数字媒体技术专业人才，更好地为国民经济和社会发展服务。</p>
    </div>--%>




    <div class="block paragraph-block">
        <h3 class="roasts_titles">指导思想</h3>
      <%--<p class="aboutus-paragraph">虚拟现实技术是仿真技术的一个重要方向，是仿真技术与计算机图形学、人机接口技术、多媒体技术、传感技术、网络技术、等多种技术的集合。是一门富有挑战性的交叉技术前沿学科和研究领域。虚拟现实技术(VR)主要包括模拟环境、感知、自然技能和传感设备等方面。模拟环境是由计算机生成的、实时动态的三维立体逼真图像。</p>
     --%>
        <p class="aboutus-paragraph">依托我校在信息与通信工程、计算机科学与技术领域的学科优势和在信号与信息处理的学科特色，以社会对数字媒体领域高素质人才的需求为导向，以学科建设为龙头，以高水平的师资队伍和良好的教学条件为保障，以课程体系改革和课程建设为核心，积极推进教育教学改革，创新人才培养模式，培养高素质数字媒体技术专业人才，更好地为国民经济和社会发展服务。</p>
    </div>


    <div class="block paragraph-block">
        <h3 class="roasts_titles">人才培养目标</h3>
        <p class="aboutus-paragraph">培养学生具有独立人格、良好社会责任感，具备数字信息处理技术、计算机技术、智能交互技术、艺术设计等方面的专业知识和技能，具有创新意识、协作精神和持续学习能力，成为行业发展所需的以技术为主、艺术为辅的创新型、复合型工程技术人才。学生毕业后能在传媒、互联网、软件和文化创意等新媒体领域和相关交叉领域从事数字媒体的采集、处理、设计、制作、开发和研究等相关工作，或者在本专业相关领域继续深造。</p>
    </div>

    <img src="img/lab/lab6.jpg" class="block aboutUs-imgs" alt="our company atmosphere in an image" />

    <div class="container">
        <div class="block">
            <nav class="products-hyperlink">
                <a href="http://localhost:8084/contact.html" class="default-button">加入我们</a>
            </nav>
        </div>
    </div>


    <div class="block paragraph-block">
        <h3 class="roasts_titles">专业定位</h3>
        <p class="aboutus-paragraph">坚持科学发展，突出办学特色，推进改革创新，扩大开放合作，加强内涵提升，注重数字媒体信息采集与处理技术、新媒体技术、新软硬件开发技术、智能技术和设计学相融合，努力将本专业建设成为学科优势明显，专业特色鲜明，综合实力雄厚，适应社会经济发展需求，在数字媒体领域和中西部地区乃至全国具有重要影响的本科特色专业。</p>
    </div>
    <div class="block paragraph-block">
        <h3 class="roasts_titles">专业特色</h3>
        <p class="aboutus-paragraph">数字媒体技术专业是信息与通信工程、计算机科学与技术和设计学三个一级学科交叉专业，是信息处理技术、计算机技术和设计学相融合的专业，涵盖面非常广，依托我校学科优势和特色，结合在信号与信息处理领域20多年学科积累，专业建设聚焦两大特色方向：一是以数字图像及音视频处理的智能媒体信息处理方向，二是以新媒体、新技术行业应用设计与开发为主的交互媒体设计与开发方向，体现出数字媒体技术专业跨学科交叉特点，与时俱进、适应行业技术发展的人才需求。</p>
    </div>





</section>

<section class="section-product-catalogue container width-70">
      <h2 id="header-product-catalogue">研究方向</h2>

        <%--<div class="block catalogue-coffee-block">

          <figure><div class="block product-image-container">
            <img src="img/lab/lab8.jpg" alt="Quills Coffee">
            <div class="text-overlay-product">
              <a href="http://localhost:8084/search_desc.html?id=">查看</a>
            </div>
          </div>
          <figcaption class="product-coffee-title">
            <p>VR表达下视觉主体的可变性和可控性</p>
			<P id="name">王小明</P>
          </figcaption>
          </figure>
          
        </div>--%>

        <%

          List<Search> list = (List<Search>) request.getAttribute("searchAllList");

          if(list != null){

              for(int i = 0;i < list.size();i++){

                  if(list.get(i).getImage() == null || list.get(i).getImage() == "") {
                      list.get(i).setImage("img/lab/lab8.jpg");
                  }
                out.write("<div class=\"block catalogue-coffee-block\">");
                out.write("<figure><div class=\"block product-image-container\">");
                out.write("<img src=" + list.get(i).getImage() + " alt=\"\">");
                out.write("<div class=\"text-overlay-product\">");
                out.write("<a href=\"contact.html\">我要加入</a>");
                out.write("</div>");
                out.write("</div>");
                out.write("<figcaption class=\"product-coffee-title\">");
                out.write("<p>" + list.get(i).getTitle() + "</p>");
                out.write("<P id=\"name\">" + list.get(i).getOwner() + "</P>");
                out.write("</figcaption>");
                out.write("</figure>");
                out.write("</div>");
              }

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

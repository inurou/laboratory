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
    <script type="text/javascript" src="js/jquery.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,500,700,900" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
  <title>关于实验室</title>
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
                        document.getElementById("userInfo2").innerHTML = "欢迎您，" + e.data.name;
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
                  <a href="/about-coffee" class="nav-active">关于实验室</a>
                  <a href="/products">数媒大家庭</a>
                  <a href="/updates">设备租借</a>
                  <a href="/contact">我要加入</a>
              </nav>
            </div>
            <div class="nav-center block-2" role="menu">
				<nav id="main-nav-items2" class="side-nav">
					<a href="javascript:void(0)" id="side-nav-close-button2" class="hidden" aria-hidden="true">&times;</a>
                    <a onclick = "loginInfo()" id = "userInfo2" >登录</a>
					
				 </nav>
			</div>
          </nav>
        </div>
      </div>

      <script src="js/header-hamburger.js"></script>
    </header>

  <section id="our-coffee">

    <h2 class="coffee_roast">实验室方向简介</h2>
	
	 <p class="introduction_to_coffee">数字媒体技术专业隶属于重庆邮电大学通信与信息工程学院， 于2015年成立，现如今已招收600余名学生。数字媒体技术是一个科技与艺术相结合的专业。从身临其境的虚拟现实，到亦幻亦真的增强现实，再到眼花缭乱的3D电影特效，乃至极致惊艳的游戏画面，
		无不依赖着数字媒体技术的支撑、渗透着数字媒体技术的贡献。</p>
        

        <p class="introduction_to_coffee">数字媒体技术专业适应国家网络强国战略和“互联网+”行动计划的需要，旨在培养面向数字网络时代兼具信息传播理论、数字媒体技术和设计管理能力、能够将创意媒体与信息技术相结合，
		具有计算机应用能力，兼具动画设计与制作、影视拍摄和后期制作能力的高素质应用型人才。</p>

       
		
		<p class="introduction_to_coffee">数字媒体技术实验室是为数媒同学提供学习和研究的平台，
		主要研究场景设计、角色形象设计、游戏程序设计、多媒体后期处理、人机交互技术、宽带媒体技术、视音频编辑技术等内容，是主要针对游戏开发、网站美工、创意设计而设置的。</p>

        <h2 class="coffee_roast">研究领域</h2>
          <img src="img/lab/lab7.jpg" alt="Light, Medium, Dark Roasted Coffee Bean" style="width:100%" />



      <div class="container roast-text-container">
        <div class="block roast-text-block">
        <h3 class="roasts_titles">数字传媒</h3>
            <p>主要学习数字媒体技术导论、速写与手绘、艺术设计基础、媒体制作软件、摄影与摄像技术、动画设计、数字视音频处理、三维造型与动画技术、
			影视制作与合成、网页设计与网站建设、影视特效制作等课程。</p>
        </div>

        <div class="block roast-text-block">
        <h3 class="roasts_titles">游戏开发</h3>
            <p>主要学习程序设计基础、面向对象程序设计、数字媒体技术导论、算法与数据结构、数据库原理与应用、游戏程序设计、游戏架构设计、游戏开发、
			游戏引擎设计、HTML5游戏开发、3D图形程序设计等课程。 </p>
        </div>

        <div class="block roast-text-block">
        <h3 class="roasts_titles">虚拟现实技术</h3>
            <p>主要学习程序设计基础、面向对象程序设计、数字媒体技术导论、算法与数据结构、数据库原理与应用，实时虚拟现实技术、unity技术开发与应用、
			虚拟现实与系统仿真、计算机图形学、人机交互技术、数字图像处理等课程。 </p>
          </div>
        </div>
		
		

       
  </section>
  
  
  
		<section>
    <h2 id="events-title">实验室环境</h2>

<div class="container events-container">
        <div class="block calendar-block" id="event-image2">
          
        </div>
	  
	  <div class="block event-description-block">
        <h3>设备区</h3>
        
        <p>
          这里是学校配置最高端的电脑，全新的应用系统可以让你更高效的完成项目，快速上手工作。
        </p>
       
      </div>
    </div>
    

    <div class="container events-container">
        <div class="block calendar-block" id="event-image3">
         
        </div>

      <div class="block event-description-block">
        <h3>讨论区</h3>
        
        <p>
          作为平时小组做项目、学习的地方，我们采用了企业中常用的圆拼桌面。便于团队交流、项目合作。
    
        </p>
      </div>
    </div>

    <div class="container events-container">
      <div class="block calendar-block" id="event-image1">
          
        </div>

      <div class="block event-description-block">
        <h3>办公区</h3>
      
        <p>
          老师有着个人固定的办公区域，办公环境整洁。如果在学习上存在疑惑，方便随时向老师咨询。每周五晚指导老师会对实验室成员进行项目和技术上的指导和研究。
        </p>
        
      </div>
    </div>
	
	

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

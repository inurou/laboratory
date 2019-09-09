<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>数字媒体技术实验室</title>
<link rel="stylesheet" href="css1/normalize.css">
<link rel="stylesheet" href="css1/login.css">
<link rel="stylesheet" href="css1/sign-up-login.css">
<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
<link rel="stylesheet" href="css1/inputEffect.css" />
<link rel="stylesheet" href="css1/verifyCode.css" />
<link rel="stylesheet" href="css1/tooltips.css" />
<link rel="stylesheet" href="css1/spop.min.css" />

<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="js/snow.js"></script>
<script src="js/jquery.pure.tooltips.js"></script>
<script src="js/verifyCode.js"></script>
<script src="js/spop.min.js"></script>
	<script src="js/token.js"></script>
<script>	
	(function() {
		// trim polyfill : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/Trim
		if (!String.prototype.trim) {
			(function() {
				// Make sure we trim BOM and NBSP
				var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
				String.prototype.trim = function() {
					return this.replace(rtrim, '');
				};
			})();
		}

		[].slice.call( document.querySelectorAll( 'input.input__field' ) ).forEach( function( inputEl ) {
			// in case the input is already filled..
			if( inputEl.value.trim() !== '' ) {
				classie.add( inputEl.parentNode, 'input--filled' );
			}

			// events:
			inputEl.addEventListener( 'focus', onInputFocus );
			inputEl.addEventListener( 'blur', onInputBlur );
		} );

		function onInputFocus( ev ) {
			classie.add( ev.target.parentNode, 'input--filled' );
		}

		function onInputBlur( ev ) {
			if( ev.target.value.trim() === '' ) {
				classie.remove( ev.target.parentNode, 'input--filled' );
			}
		}
	})();
	
	$(function() {	
		$('#login #login-password').focus(function() {
			$('.login-owl').addClass('password');
		}).blur(function() {
			$('.login-owl').removeClass('password');
		});
		$('#login #register-password').focus(function() {
			$('.register-owl').addClass('password');
		}).blur(function() {
			$('.register-owl').removeClass('password');
		});
		$('#login #register-repassword').focus(function() {
			$('.register-owl').addClass('password');
		}).blur(function() {
			$('.register-owl').removeClass('password');
		});
		$('#login #forget-password').focus(function() {
			$('.forget-owl').addClass('password');
		}).blur(function() {
			$('.forget-owl').removeClass('password');
		});
	});
	
	function goto_register(){
		$("#register-username").val("");
		$("#register-password").val("");
		$("#register-repassword").val("");
		$("#register-code").val("");
		$("#tab-2").prop("checked",true);
	}
	
	function goto_login(){
		$("#login-username").val("");
		$("#login-password").val("");
		$("#tab-1").prop("checked",true);
	}
	
	function goto_forget(){
		$("#forget-username").val("");
		$("#forget-password").val("");
		$("#forget-code").val("");
		$("#tab-3").prop("checked",true);
	}


	var flag = false;
	var flag1 = false;
	var flag2 = false;
	var flag3 = false;
	var flag4 = false;
	var flag5 = false;
	function login(){//登录
		var username = $("#login-username").val(),
			password = $("#login-password").val(),
			verifycode = $("#login-verify-code").val();

		//判断用户名密码是否为空
		if(username == ""){
			$.pt({
        		target: $("#login-username"),
        		position: 'r',
        		align: 't',
        		width: 'auto',
        		height: 'auto',
        		content:"学号不能为空"
        	});
			flag1 = false;
		}else{
			flag1 = true;
		}
		if(password == ""){
			$.pt({
        		target: $("#login-password"),
        		position: 'r',
        		align: 't',
        		width: 'auto',
        		height: 'auto',
        		content:"密码不能为空"
        	});
			flag2 = false;
		}else{
			flag2 = true;
		}
		if(verifycode == ""){
			$.pt({
        		target: $("#login-verify-code-canvas"),
        		position: 'r',
        		align: 't',
        		width: 'auto',
        		height: 'auto',
        		content:"验证码不能为空"
        	});
			flag3 = false;
		}else{
			flag3 = true;
		}
		if(timeout_flag){
			$.pt({
        		target: $("#login-verify-code-canvas"),
        		position: 'r',
        		align: 't',
        		width: 'auto',
        		height: 'auto',
        		content:"验证码已经失效"
        	});
			flag5 = false;
		}else{
			flag5 = true;
		}
		//判断验证码是否正确
		if(verifycode != show_num.join("")){
			$.pt({
        		target: $("#login-verify-code-canvas"),
        		position: 'r',
        		align: 't',
        		width: 'auto',
        		height: 'auto',
        		content:"验证码不正确"
        	});
			flag4 = false;
		}else{
			flag4 = true;
		}

		if(flag1 && flag2 && flag3 && flag4 && flag5){
			flag = true;
		}

		if(flag) {
			$.ajax({
				type: 'GET',
				url: "/userlogin",
				data: {
					number: username,
					password:password
				},
				success: function (e) {
					if (e.status == 200) {
						spop({
							template: '<h4 class="spop-title">登录成功</h4>即将跳转',
							position: 'top-center',
							style: 'success',
							autoclose: 3000,
							onOpen : function(){
								var second = 2;
								var showPop = setInterval(function(){
									if(second == 0){
										clearInterval(showPop);
									}
									$('.spop-body').html('<h4 class="spop-title">登录成功</h4>即将于'+second+'秒后跳转');
									second--;
								},1000);
							},
							onClose : function(){
								user_token = e.data;
								localStorage.setItem("token",user_token);
								window.location.href='/index?token='+ user_token;
							}
						});
					}
					if(e.status == 400){
						$.pt({
							target: $("#login-username"),
							position: 'r',
							align: 't',
							width: 'auto',
							height: 'auto',
							content:"用户名或密码不正确！"
						});
					}
				},
				error: function (x) {
					alert("出错了" + x.status);
				}
			})
		}else{
			return false;
		}
		return false;
	}
	
	//注册
	function register(){
		var username = $("#register-username").val(),
				number = $("#register-number").val(),
			password = $("#register-password").val(),
			email = $("#register-email").val(),
			phone = $("#register-phone").val(),
			flag = false,
			validatecode = null;
		//判断用户名密码是否为空
		if(username == ""){
			$.pt({
        		target: $("#register-username"),
        		position: 'r',
        		align: 't',
        		width: 'auto',
        		height: 'auto',
        		content:"姓名不能为空"
        	});
			flag = true;
		}
		if(number == ""){
			$.pt({
				target: $("#register-number"),
				position: 'r',
				align: 't',
				width: 'auto',
				height: 'auto',
				content:"学号不能为空"
			});
			flag = true;
		}
		if(password == ""){
			$.pt({
        		target: $("#register-password"),
        		position: 'r',
        		align: 't',
        		width: 'auto',
        		height: 'auto',
        		content:"密码不能为空"
        	});
			flag = true;
		}
		if(email == ""){
			$.pt({
				target: $("#register-email"),
				position: 'r',
				align: 't',
				width: 'auto',
				height: 'auto',
				content:"邮箱不能为空"
			});
			flag = true;
		}else{
			var regex_email = /^\w+@\w+(\.[a-zA-Z]{2,3}){1,3}$/;
			if(!regex_email.test(email)){
				$.pt({
					target: $("#register-email"),
					position: 'r',
					align: 't',
					width: 'auto',
					height: 'auto',
					content:"邮箱地址不正确！"
				});
				flag = true;
			}
		}
		if(phone == ""){
			$.pt({
				target: $("#register-phone"),
				position: 'r',
				align: 't',
				width: 'auto',
				height: 'auto',
				content:"手机号码不能为空"
			});
			flag = true;
		}else{
			var regex_tel = /^1[345789]\d{9}$/;
			if(!regex_tel.test(phone)){
				$.pt({
					target: $("#register-phone"),
					position: 'r',
					align: 't',
					width: 'auto',
					height: 'auto',
					content:"手机号码不正确！"
				});
				flag = true;
			}
		}
		if(flag){
			return false;
		}else{//注册
			$.ajax({
				type: 'GET',
				url: "/register",
				data: {
					username:username,
					number:number,
					password:password,
					email:email,
					phone:phone
				},
				success: function (e) {
					if (e.status == 200) {
						spop({
							template: '<h4 class="spop-title">注册成功</h4>即将于3秒后返回登录',
							position: 'top-center',
							style: 'success',
							autoclose: 3000,
							onOpen : function(){
								var second = 2;
								var showPop = setInterval(function(){
									if(second == 0){
										clearInterval(showPop);
									}
									$('.spop-body').html('<h4 class="spop-title">注册成功</h4>即将于'+second+'秒后返回登录');
									second--;
								},1000);
							},
							onClose : function(){
								goto_login();
							}
						});

					}
				},
				error: function (x) {
					alert("出错了" + x.status);
				}
			});
			return false;
		}
	}
	//重置密码
	function forget(){
		var username = $("#forget-username").val(),
			password = $("#forget-password").val(),
			code = $("#forget-code").val(),
			flag = false,
			validatecode = null;
		//判断用户名密码是否为空
		if(username == ""){
			$.pt({
        		target: $("#forget-username"),
        		position: 'r',
        		align: 't',
        		width: 'auto',
        		height: 'auto',
        		content:"学号不能为空"
        	});
			flag = true;
		}
		if(password == ""){
			$.pt({
        		target: $("#forget-password"),
        		position: 'r',
        		align: 't',
        		width: 'auto',
        		height: 'auto',
        		content:"密码不能为空"
        	});
			flag = true;
		}
		if(flag){
			return false;
		}else{//重置密码

			$.ajax({
				type: 'GET',
				url: "/resetpass",
				data: {
					number:username,
					password:password
				},
				success: function (e) {
					if (e.status == 200) {
						spop({
							template: '<h4 class="spop-title">重置密码成功</h4>即将于3秒后返回登录',
							position: 'top-center',
							style: 'success',
							autoclose: 3000,
							onOpen : function(){
								var second = 2;
								var showPop = setInterval(function(){
									if(second == 0){
										clearInterval(showPop);
									}
									$('.spop-body').html('<h4 class="spop-title">重置密码成功</h4>即将于'+second+'秒后返回登录');
									second--;
								},1000);
							},
							onClose : function(){
								goto_login();
							}
						});

						return false;

					};
					if (e.status == 400) {
						$.pt({
							target: $("#forget-username"),
							position: 'r',
							align: 't',
							width: 'auto',
							height: 'auto',
							content:"学号输入错误！"
						});

					}
				},
				error: function (x) {
					alert("出错了" + x.status);
				}
			});

		}
	}
</script>
<style type="text/css">
html{width: 100%; height: 100%;}

body{

	background-repeat: no-repeat;

	background-position: center center #2D0F0F;

	background-color: #00BDDC;

	background-image: url(images/bg1.jpg);

	background-size: 100% 100%;

}

.snow-container { position: fixed; top: 0; left: 0; width: 100%; height: 100%; pointer-events: none; z-index: 100001; }

</style>
</head>
<body>
	<!-- 雪花背景 -->
	<div class="snow-container"></div>
	<!-- 登录控件 -->
	<div id="login">
		<input id="tab-1" type="radio" name="tab" class="sign-in hidden" checked />
		<input id="tab-2" type="radio" name="tab" class="sign-up hidden" />
		<input id="tab-3" type="radio" name="tab" class="sign-out hidden" />
		<div class="wrapper">
			<!-- 登录页面 -->
			<div class="login sign-in-htm">
				<form class="container offset1 loginform">
					<!-- 猫头鹰控件 -->
					<!--<div id="owl-login" class="login-owl">
						<div class="hand"></div>
						<div class="hand hand-r"></div>
						<div class="arms">
							<div class="arm"></div>
							<div class="arm arm-r"></div>
						</div>
					</div>
					-->
					<div class="pad input-container">
						<section class="content">
							<span class="input input--hideo">
								<input class="input__field input__field--hideo" type="text" id="login-username" 
									autocomplete="off" placeholder="学号" tabindex="1" maxlength="15" />
								<label class="input__label input__label--hideo" for="login-username">
									<i class="fa fa-fw fa-user icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
							<span class="input input--hideo">
								<input class="input__field input__field--hideo" type="password" id="login-password" placeholder="密码" tabindex="2" maxlength="15"/>
								<label class="input__label input__label--hideo" for="login-password">
									<i class="fa fa-fw fa-lock icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
							<span class="input input--hideo input--verify_code">
								<input class="input__field input__field--hideo" type="text" id="login-verify-code" 
									autocomplete="off" placeholder="验证码" tabindex="3" maxlength="4" />								
								<label class="input__label input__label--hideo" for="login-verify-code">
									<i class="fa fa-fw fa-bell-o icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>								
							</span>
							<canvas class="verify-code-canvas" id="login-verify-code-canvas"></canvas>
						</section>
					</div>
					<div class="form-actions">
						<a tabindex="4" class="btn pull-left btn-link text-muted" onclick="goto_forget()">忘记密码?</a>
						<a tabindex="5" class="btn btn-link text-muted" onclick="goto_register()">注册</a>
						<input class="btn btn-primary" type="button" tabindex="3" onclick="login()" value="登录" 
							style="color:white;"/>
					</div>
				</form>
			</div>
			<!-- 忘记密码页面 -->
			<div class="login sign-out-htm">
				<form action="#" method="post" class="container offset1 loginform">
					<!-- 猫头鹰控件 -->
					<!--<div id="owl-login" class="forget-owl">
						<div class="hand"></div>
						<div class="hand hand-r"></div>
						<div class="arms">
							<div class="arm"></div>
							<div class="arm arm-r"></div>
						</div>
					</div>
					-->
					<div class="pad input-container">
						<section class="content">
							<span class="input input--hideo">
								<input class="input__field input__field--hideo" type="text" id="forget-username" autocomplete="off" placeholder="学号"/>
								<label class="input__label input__label--hideo" for="forget-username">
									<i class="fa fa-fw fa-user icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
							<span class="input input--hideo">
								<input class="input__field input__field--hideo" type="password" id="forget-password" placeholder="密码" />
								<label class="input__label input__label--hideo" for="forget-password">
									<i class="fa fa-fw fa-lock icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
					
							<span class="input input--hideo">
								<input class="input__field input__field--hideo" type="password" id="forget-repassword" placeholder="重置密码" />
								<label class="input__label input__label--hideo" for="forget-repassword">
									<i class="fa fa-fw fa-lock icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
						</section>
					</div>
					<div class="form-actions">
						<a class="btn pull-left btn-link text-muted" onclick="goto_login()">返回登录</a>
						<input class="btn btn-primary" type="button" onclick="forget()" value="重置密码" 
							style="color:white;"/>
					</div>
				</form>
			</div>
			<!-- 注册页面 -->
			<div class="login sign-up-htm">
				<form action="#" method="post" class="container offset1 loginform">
					<!-- 猫头鹰控件 -->
					<!--<div id="owl-login" class="register-owl">
						<div class="hand"></div>
						<div class="hand hand-r"></div>
						<div class="arms">
							<div class="arm"></div>
							<div class="arm arm-r"></div>
						</div>
					</div>
					-->
					<div class="pad input-container">
						<section class="content">
							<span class="input input--hideo">
								<input class="input__field input__field--hideo" type="text" id="register-username" 
									autocomplete="off" placeholder="姓名" maxlength="15"/>
								<label class="input__label input__label--hideo" for="register-username">
									<i class="fa fa-fw fa-user icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
							<span class="input input--hideo">
								<input class="input__field input__field--hideo" type="text" id="register-number"
									   autocomplete="off" placeholder="学号" maxlength="15"/>
								<label class="input__label input__label--hideo" for="register-username">
									<i class="fa fa-fw fa-user icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
							<span class="input input--hideo">
								<input class="input__field input__field--hideo" type="password" id="register-password" placeholder="密码" maxlength="15"/>
								<label class="input__label input__label--hideo" for="register-password">
									<i class="fa fa-fw fa-lock icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
						
							<span class="input input--hideo">
								<input class="input__field input__field--hideo" type="text" id="register-email" autocomplete="off" placeholder="邮箱"/>
								<label class="input__label input__label--hideo" for="register-email">
									
									<i class="fa fa-fw fa-envelope icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
							
							<span class="input input--hideo">
								<input class="input__field input__field--hideo" type="text" id="register-phone" autocomplete="off" placeholder="手机"/>
								<label class="input__label input__label--hideo" for="register-phone">
									<i class="fa fa-fw fa-mobile icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
						
						</section>
					</div>
					<div class="form-actions">
						<a class="btn pull-left btn-link text-muted" onclick="goto_login()">返回登录</a>
						<input class="btn btn-primary" type="button" onclick="register()" value="注册" 
							style="color:white;"/>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
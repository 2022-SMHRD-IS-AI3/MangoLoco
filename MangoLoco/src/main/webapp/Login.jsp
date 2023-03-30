<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<ul>
	<li onclick="kakaoLogin();">
      <a href="javascript:void(0)">
          <img src="https://www.gb.go.kr/Main/Images/ko/member/certi_kakao_login.png" style="height:60px;width:auto;">
      </a>
	</li>
	<li onclick="kakaoLogout();">
      <a href="javascript:void(0)">
          <span>카카오 로그아웃</span>
      </a>
	</li>
</ul>
<!-- 카카오 스크립트 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
Kakao.init('77e513b9e4d304b586eb2ce6372a7296'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단
//카카오로그인
function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
        	  console.log(response)
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }
//카카오로그아웃  
function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    }
  }  
</script>
=======
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!-- Coding By CodingNepal - youtube.com/codingnepal -->
<html lang="en">
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Form validation in HTML & CSS | CodingNepal</title>
<link rel="stylesheet" href="assets/css/login.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
</head>
<body>
	<div class="wrapper">
		<header>�α���</header>
		<form action="" method="post">
			<div class="field email">
				<div class="input-area">
					<input type="text" placeholder="Email Address" name="id"> <i
						class="icon fas fa-envelope"></i> <i
						class="error error-icon fas fa-exclamation-circle"></i>
				</div>
				<div class="error error-txt">�̸����� �Է����ּ���</div>
			</div>
			<div class="field password">
				<div class="input-area">
					<input type="password" placeholder="Password" name="pw"> <i
						class="icon fas fa-lock"></i> <i
						class="error error-icon fas fa-exclamation-circle"></i>
				</div>
				<div class="error error-txt">�н����带 �Է����ּ���</div>
			</div>
			<div class="pass-txt">
				<a></a>
			</div>
			<input type="submit" value="Login">
		</form>
		<div class="sign-txt">
			ȸ���� �ƴ϶��?&nbsp;&nbsp;&nbsp;&nbsp;<a href="Join.jsp">ȸ������</a>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script src="assets/js/login.js"></script>
	<script type="text/javascript">
	$('input[type=submit]').on({
		'click':function(e) {
		e.preventDefault();
	$.ajax({
		url: 'MemberLoginCon',
		type: 'get',
		data: 'id=' + $('input[name=id]').val() +
			'&pw=' + $('input[name=pw]').val(),
		dataType: 'json',
		success: function(data) {
			alert('�α��� ����');
			window.location.href = 'Main.jsp';
		},
		error: function() {
		}
	})
		}
})
	</script>
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-IS-AI3/MangoLoco.git
</body>
</html>
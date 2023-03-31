<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Coding By CodingNepal - youtube.com/codingnepal -->
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Form validation in HTML & CSS | CodingNepal</title>
<link rel="stylesheet" href="assets/css/login.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
</head>
<body>




<body>

	<li onclick="kakaoLogout();">
      <a href="javascript:void(0)">
          <span>카카오 로그아웃</span>
      </a>
	</li>

	<div class="wrapper">
		<header>로그인</header>
		<form action="" method="post">
			<div class="field email">
				<div class="input-area">
					<input type="text" placeholder="Email Address" name="id"> <i
						class="icon fas fa-envelope"></i> <i
						class="error error-icon fas fa-exclamation-circle"></i>
				</div>
				<div class="error error-txt">로그인</div>
			</div>
			<div class="field password">
				<div class="input-area">
					<input type="password" placeholder="Password" name="pw"> <i
						class="icon fas fa-lock"></i> <i
						class="error error-icon fas fa-exclamation-circle"></i>
				</div>
				<div class="error error-txt"></div>
			</div>
			<div class="pass-txt">
				<a></a>
			</div>
			<input type="submit" value="Login">
		</form>
		<li onclick="kakaoLogin();" style="list-style: none;">
      	<a href="javascript:void(0)">
          <img src="https://www.gb.go.kr/Main/Images/ko/member/certi_kakao_login.png" style="height:70px;width:100%;">
     	 </a>
		</li>
			<div class="sign-txt">
			회원이 아니라면?&nbsp;&nbsp;&nbsp;&nbsp;<a href="Join.jsp">회원가입</a>
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
        	  var user = {
        		  id: response.kakao_account.email,
        		    name: response.properties.nickname,
        		    accessToken: Kakao.Auth.getAccessToken(),
        		  };
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
    
    $.ajax({
    	type:'post',
    	url:'KakaoSessionSave',
    	data:JSON.stringify(user),
    	success:function(){
    		window.location.href="Main.jsp";
    	}
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

</body>
</html>
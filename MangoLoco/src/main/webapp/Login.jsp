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
		<header>로그인</header>
		<form action="" method="post">
			<div class="field email">
				<div class="input-area">
					<input type="text" placeholder="Email Address" name="id"> <i
						class="icon fas fa-envelope"></i> <i
						class="error error-icon fas fa-exclamation-circle"></i>
				</div>
				<div class="error error-txt">이메일을 입력해주세요</div>
			</div>
			<div class="field password">
				<div class="input-area">
					<input type="password" placeholder="Password" name="pw"> <i
						class="icon fas fa-lock"></i> <i
						class="error error-icon fas fa-exclamation-circle"></i>
				</div>
				<div class="error error-txt">패스워드를 입력해주세요</div>
			</div>
			<div class="pass-txt">
				<a></a>
			</div>
			<input type="submit" value="Login">
		</form>
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
			alert('로그인 성공');
			window.location.href = 'Main.jsp';
		},
		error: function() {
		}
	})
		}
})
	</script>
</body>
</html>
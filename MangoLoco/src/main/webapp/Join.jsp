<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>Form Validator</title>
<link rel="stylesheet" href="assets/css/join.css" />
<script src="https://kit.fontawesome.com/527ad8f39b.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="module"
	src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule
	src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

</head>

<body>

	<div class="container">
		<form id="form" class="form">
			<h2>회원 가입</h2>
			<div class="form-control">
				<label for="username">Username</label>
				<div class="field username">
					<div class="input-area">
						<input type="text" id="username" placeholder="enter Username" />
						<i class="icon fa-solid fa-user"></i> <i
							class="error error-icon fas fa-exclamation-circle"></i>
					</div>
					<div class="error error-txt">이름을 입력해주세요</div>
				</div>
			</div>
			<div class="form-control">
				<label for="email">Email</label>
				<div class="field email">
					<div class="input-area">
						<input type="text" id="email" placeholder="Enter email" /> <i
							class="icon fas fa-envelope"></i> <i
							class="error error-icon fas fa-exclamation-circle"></i>
					</div>
					<div class="error error-txt">이메일을 입력해주세요</div>
				</div>
				<div id="emailCheck">중복 확인</div>
			</div>
			<div class="form-control">
				<label for="password">Password</label>
				<div class="field password">
					<div class="input-area">
						<input type="password" id="password" placeholder="Enter password" />
						<i class="icon fas fa-lock"></i> <i
							class="error error-icon fas fa-exclamation-circle"></i>
					</div>
					<div class="error error-txt">패스워드를 입력해주세요</div>
				</div>
			</div>
			<div class="form-control">
				<label for="password2">Confirm Password</label>
				<div class="field password2">
					<div class="input-area">
						<input type="password" id="password2"
							placeholder="Enter password again" /> <i
							class="icon fas fa-lock"></i> <i
							class="error error-icon fas fa-exclamation-circle"></i>
					</div>
					<div class="error error-txt">패스워드를 다시 입력해주세요</div>
				</div>
			</div>
			<a><button id="btn">회 원 가 입</button></a>
		</form>
	</div>
	<script src="assets/js/join.js"></script>

	<script>
	var data1 = {
		'username' : $('#username').val(),
		'email' : $('#email').val(),
		'pw' : $('password').val(),
		'pw2' : $('password2').val()
	}
 	$('#btn').on('click',function(){
 		$.ajax({
			type : 'post',
			dataType : 'text',
			data : JSON.stringify(data1),
			contentType: 'application/json; charset=utf-8',
			url : 'JoinCon.do',
			seccess : function(data) {
				
			}

		})
 	})
		
	</script>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="assets/css/css.css">
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<!-- <link rel="stylesheet" href="./assets/css/boardwrite.css"/> -->
		<!-- <link rel="stylesheet" href="./assets/css/board/board.css"/> -->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
</head>
<body>
	<%String id = (String)session.getAttribute("id"); %> 
	<%if(id != null){%>
	<div class="container" style="align:center;">
		<div class="row">
			<form method="post" action="./BoardWriteCon">
				<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd; position: relative; left: 50%; transform: translateX(-50%);">
					<thead>
						<tr>
							<th colspan="2" style="background-color: #2e8b57; text-align:center;">게시판 글쓰기 양식</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" name="title" id="title" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50" style="width:600px; height: 40px; font-size: 20px"></td>
						</tr>
						<tr>
							<td align="right"><input type="file" class="form-control" name="filename" maxlength="50"></td>
						</tr>
						<tr>
							<td><textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" rows="45" cols="100" style="font-size: 17px;"></textarea></td>
						</tr>
					</tbody>
				</table>
				<input type="submit" class="btn btn-success pull-right" style="position:relative; left : 50%; transgorm: translateX(-50%); width: 100px; height: 30px;" value="글쓰기">
		</form>
		</div>
	</div>
	<%}else{%>
	<script type="text/javascript">
	alert('회원만 작성하실 수 있습니다');
	window.location.href = "BoardMain.jsp";
	</script>
	<%}%>
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>
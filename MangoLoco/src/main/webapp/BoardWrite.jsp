<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="./assets/css/boardwrite.css"/>
		<!-- <link rel="stylesheet" href="./assets/css/board/board.css"/> -->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
</head>
<body>
		<form action="BoardWriteCon" method="post" enctype="multipart/form-data">
		<div class="container" style="margin-top:30px">
		<div class="row">
		<div class="col-sm-12">
	      <h2>글쓰기</h2>
	        <form action="writeAction" method = "POST" enctype="multipart/form-data">
				<div class="form-group">
				  <label for="usr">제목:</label>
				  <input type="text" class="form-control" id="title" name = "title">
				</div>
			    <div class="form-group">
			      <input type="file" class="form-control-file border" name="file">
			    </div>
			    <div class="form-group">
				  <label for="comment">내용:</label>
				  <textarea class="form-control" rows="5" id="contents" name = "contents"></textarea>
				</div>
			    <button type="submit" class="btn btn-primary">글쓰기</button>
			  </form>
		</div>
	</div>
</div>
		</form>
</body>
</html>
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
	<div class="board_wrap">
        <div class="board_title">
            <strong>자유게시판</strong>
        </div>
        <form action="BoardWriteCon" method="post">
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                    <dl>
                        <dt>제목</dt>
                        <dd><input type="text" name="bbsTitle" placeholder="제목 입력"></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt>카테고리</dt>
                        <dd>
                            <select name="category" id="">
                                <option value="1">공지</option>
                                <option value="0">일반</option>
                            </select>
                        </dd>
                    </dl>
                    <dl>
                        <dt></dt>
                        <dd><input type="file" name="filename"></dd>
                    </dl>
                </div>
                <div class="cont">
                    <textarea placeholder="내용 입력" name="bbsContent"></textarea>
                </div>
            </div>
            <div class="bt_wrap">
                <a href="view.html" class="on">등록</a>
                <a href="BoardMain.jsp">취소</a>
            </div>
        </div>
    </div>
    </form>
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
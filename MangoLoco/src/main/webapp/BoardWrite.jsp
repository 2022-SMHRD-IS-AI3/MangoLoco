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
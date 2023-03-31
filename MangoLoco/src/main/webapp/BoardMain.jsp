<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.BoardDTO" %>
<%@page import="com.smhrd.model.BoardDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" type="text/css" href="./assets/css/boardmain.css" />
		<!-- <link rel="stylesheet" href="./assets/css/board/board.css" /> -->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
</head>
<body>		
	<%
		BoardDAO dao = new BoardDAO();
		List<BoardDTO> board_list = dao.BoardAll();
	%>
			<div id="board_area">
			<h1>자유게시판</h1>
			<h4>자유롭게 글을 쓸 수 있는 게시판입니다.</h4>
				<table class = "list-table">
					<thead>
					<tr>
						<th width="70">번호</td>
						<th width="500">제목</td>
						<th width="120">작성자</td>
						<th width="100">시간</td>
						<th width="70"></th>
					</tr>
					</thead>
					<tbody>
					<%if(board_list != null){%>
						<%for(int i=0; i<board_list.size(); i++){ %>
							<%if(board_list.get(i).getCategory().equals("1")){ %>
					<tr>
						<td width="70">공지</td>
						<td width="500"><a href="BoardDetail.jsp?num=<%=board_list.get(i).getSeq()%>"><%=board_list.get(i).getTitle() %></a></td>
						<td width="120"><%=board_list.get(i).getNick() %></td>
						<td width="100"><%=board_list.get(i).getB_date() %></td>
								<%if(board_list.get(i).getId().equals("admin")){ %>
							<td><a href="BoardDelCon.do">삭제하기</a></td>
								<%} %>
					</tr>
					<%}else{ %>
					<tr>
						<td width="70"><%=i+1 %></td>
						<td width="500"><a href="BoardDetail.jsp?num=<%=board_list.get(i).getSeq()%>"><%=board_list.get(i).getTitle() %></a></td>
						<td width="120"><%=board_list.get(i).getNick() %></td>
						<td width="100"><%=board_list.get(i).getB_date() %></td>
						<%if(board_list.get(i).getId().equals("admin")){ %>
							<td><a href="BoardDelCon.do">삭제하기</a></td>
						<%} %>
					</tr>
					<%} %>
					<%} %>
					<%} %>
				</tbody>
				</table id="write_btn">
				<div>
					<a href="Main.jsp"><button id="writer">홈으로가기</button></a>
					<a href="BoardWrite.jsp"><button id="writer">작성하러가기</button></a>
				</div>
			</div>


			<!-- <!-- Scripts -->
			<!-- <script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]
			<script src="assets/js/main.js"></script> -->
</body>
</html>
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
		<!-- <link rel="stylesheet" href="assetsBoard/css/main.css" /> -->
		<link rel="stylesheet" href="assetsBoard/css/boardmain.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		

</head>

<body>
	<%
		int num = Integer.parseInt(request.getParameter("num"));
		BoardDAO dao = new BoardDAO();
		BoardDTO board_detail = dao.BoardDetail(num);
		String nick = (String)session.getAttribute("nick");
	%>
			<!-- Q19. 게시글 세부내용 조회 기능 -->	
			<div id = "board"  align="center">
				<table id="list" style="width:1000px; height:500px;">
				<thead>
					<tr>
					 <td><h5 align="left"><a href="BoardMain.jsp">자유게시판></a></h5></td>
					</tr>
					<tr>
						<td style="width:200px; height:50px; border-right:1px solid black; border-top: 1px solid lightblue; border-bottom: 1px solid black; text-align: center;">제목</td>
						<td style="width:800px; height:50px; border-top: 1px solid lightblue; border-bottom: 1px solid black;"><%=board_detail.getTitle() %></td>
					</tr>
					<tr>
						<td style="width:200px; height:50px; border-right:1px solid black; border-bottom: 1px solid black; text-align: center;">작성자</td>
						<td style="width:800px; height:50px; border-bottom: 1px solid black;"><%=board_detail.getNick() %></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width:200px; height:300px; border-right:1px solid black; border-bottom: 1px solid lightblue; text-align: center;">내용</td>
						<td style="width:800px; height:300px; border-bottom: 1px solid lightblue;">
							<%=board_detail.getContent() %>
							<img alt="이미지" src="./file/<%=board_detail.getImg()%>">
						</td>
					</tr>
						<%if(board_detail.getNick().equals(nick)||board_detail.getNick().equals("admin")){ %>
						<tr>
							<td><a href="BoardDelCon.do"><button>삭제</button></a></td>
							<td><a href="BoardUpdate.jsp"><button>수정</button></a></td>
						</tr>
						<%} %>
				</tbody>
				</table>
			</div>
			<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
</body>
</html>
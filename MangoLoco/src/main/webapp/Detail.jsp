<%@page import="com.smhrd.model.ReviewDAO"%>
<%@page import="com.smhrd.model.ReviewDTO"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="com.smhrd.model.ProductDTO"%>
<%@page import="com.smhrd.model.ProductDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.BoardDTO" %>
<%@page import="com.smhrd.model.BoardDAO" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<title>Details</title>
		<meta charset="utf-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="./assets/css/main.css" />
		<link rel="stylesheet" href="./assets/css/boardmain.css" />
		<link rel="stylesheet" href="./assets/sass/main.scss" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
</head>
<body>		
	<%
		String model = request.getParameter("model");
		ProductDAO dao = new ProductDAO();
		ProductDTO productList = dao.allProd(model);
		System.out.println(model);
		ReviewDAO reviewDAO = new ReviewDAO();
		List<ReviewDTO> list = reviewDAO.allReviews(model);
	%>
	
	<h3><%=productList.getModel()%></h3>
	
	<div style="position: relative; width: 1500px; ">
	<img src="img/<%=productList.getModel()%>.jpg" alt="" style="width: 300px; height: 300px; position: relative; left: 100px;">
	<span id = "detail" style="float: right; left:100px; position: absolute;"><%=productList.getDetail() %></span>
	</div>
	<br>
	<br>
	
	<%
	System.out.println(list.size());
	if (list.size() != 0) {
		out.print("<table>");
		out.print("<tr>");
		out.print("<th width='100px'>순번</th>");
		out.print("<th>제목</th>");
		out.print("<th>내용</th>");
		out.print("</tr>");
			for (int i = 0 ; i < list.size(); i++) {
				out.print("<tr>");
				out.print("<td width='100px' style='text-align:center;'>" + (list.get(i).getINDSEQ()+1) + "</td>");
				out.print("<td>" + list.get(i).getTITLE() + "</td>");
				out.print("<td>" + list.get(i).getCONTENT() + "</td>");
				out.print("<tr>");
			}		
		out.print("</table>");
	}
	%>
	
				
				<a href="Main.jsp"><button id="writer">홈으로가기</button></a>
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
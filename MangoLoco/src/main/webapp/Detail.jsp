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
		System.out.println(model);
		ProductDAO dao = new ProductDAO();
		ProductDTO productList = dao.selectAll(model);
	%>
	
	<h3><%=productList.getModel()%></h3>
	<span id = "detail"><%=productList.getDetail() %></span>
	<br>
	<img src="img/<%=productList.getModel()%>.jpg" alt="">
				
				<a href="Main.jsp"><button id="writer">Ȩ���ΰ���</button></a>
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
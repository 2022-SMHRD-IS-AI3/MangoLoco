<%@page import="com.smhrd.model.ReviewDAO"%>
<%@page import="com.smhrd.model.ReviewDTO"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="com.smhrd.model.ProductDTO"%>
<%@page import="com.smhrd.model.ProductDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.BoardDTO"%>
<%@page import="com.smhrd.model.BoardDAO"%>
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
<style type="text/css">
img{
	width:300px;
	height:300px;
	float:left;
}
</style>
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
	<div>
	<div style="width: 1000px; margin:auto;"><h3><%=productList.getModel()%></h3>
		 <br> <img src="img/<%=productList.getModel()%>.jpg" alt=""> 
		 <br> <div  style="margin-left:320px"><span id="detail"><%=productList.getDetail()%></span></div>

		<%
		System.out.println(list.size());
		if (list.size() != 0) {
			out.print("<table>");
			out.print("<thead style='text-align:center; background-color:#f1eec6; font-weight:600;'>");
			out.print("<tr>");
			out.print("<th style='width: 50px;'>순번</th>");
			out.print("<th style='width: 250px;'>제목</th>");
			out.print("<th style='width: 700px;'>내용</th>");
			out.print("</tr>");
			out.print("</thead>");
			out.print("<tbody>");
			for (int i = 0; i < list.size(); i++) {
				out.print("<tr>");
				out.print("<td style='width: 50px; text-align:center';>" + (list.get(i).getINDSEQ() + 1) + "</td>");
				out.print("<td style='width: 300px;'>" + list.get(i).getTITLE() + "</td>");
				out.print("<td style='width: 650px;'><div style='width: 650px; height:200px; overflow: auto;'>" + list.get(i).getCONTENT() + "</div></td>");
				out.print("</tr>");
			}
			out.print("</tbody>");
			out.print("</table>");
		}
		%>
		<a href="Main.jsp"><button id="writer">홈으로가기</button></a>
	</div>
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
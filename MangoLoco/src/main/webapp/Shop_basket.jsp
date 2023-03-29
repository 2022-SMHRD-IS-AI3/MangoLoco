<%@page import="com.smhrd.model.ProductDTO"%>
<%@page import="com.smhrd.model.ProductDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.Shop_BasketDAO"%>
<%@page import="com.smhrd.model.Shop_BasketDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Shop_BasketDAO dao = new Shop_BasketDAO();
	List<Shop_BasketDTO> basket_list = dao.BasketAll();
	ProductDAO pdao = new ProductDAO();
	List<ProductDTO> Product_list = pdao.User_ProductAll();
	%>
	<div id="basket">
		<table id="Basket_list">
			<tr>
				<th></th>
				<th></th>
				<th>상품명</th>
				<th>개수</th>
				<th></th>
				<th></th>
			</tr>
			<%
			for (int i = 0; i < basket_list.size(); i++) {
			%>
			<tr>
				<td><input type="checkbox" value=""></td>
				<td><%=i + 1%></td>
				<td><a href="#상품명주소"><%=basket_list.get(i).getModel()%></a></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</table>
		<%}%>
		<input type="submit" value="목록에서 제거">
		<input type="submit" value="구매하기">
	</div>

</body>
</html>
<%@page import="org.codehaus.jackson.map.JsonMappingException"%>
<%@page import="com.smhrd.model.CouponsDTO"%>
<%@page import="com.smhrd.model.CouponsDAO"%>
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
	CouponsDAO cdao = new CouponsDAO();
	List<CouponsDTO> user_coupons_List = cdao.user_coupons();
	%>
	<div id="basket">
		<table id="Basket_list">
			<tr>
				<th></th>
				<th>상품명</th>
				<th>쿠폰</th>
				<th>할인가</th>
				<th>적용가</th>
			</tr>
			<%
			for (int i = 0; i < basket_list.size(); i++) {
			%>
			<tr>
				<td><%=i + 1%></td>
				<td><a href="#상품명주소"><%=basket_list.get(i).getModel()%></a></td>
				<td><select id="coupons" onchange="changeFunc()">
						<option>선택</option>
						<%
						for (int j = 0; j < user_coupons_List.size(); j++) {
						%>
						<option value="<%=user_coupons_List.get(j).getSeq()%>"><%=user_coupons_List.get(j).getName()%></option>
						<%}%>
				</select></td>
				<td><script>
					var ceil = sale(coupons_seq);
					document.write(ceil)
				</script>
				</td>
				<td></td>
			</tr>
		</table>
		<%}%>
	</div>

	<script>
		var ceiling = []
		var coupons_seq_arr = []
		var user_coupons_List_size = '<%= user_coupons_List.size()%>';
		console.log(user_coupons_List);
		<%for (int i = 0; i <user_coupons_List.size(); i++) {%>
			ceiling.push('<%=user_coupons_List.get(i).getCeiling() %>');
			coupons_seq.push('<%=user_coupons_List.get(i).getSeq() %>');
		    <%}%>
		let coupons_seq = 0;
		const changeFunc=()=>{
			coupons_seq = document.getElementById('coupons').value;
			console.log(coupons_seq)
			return coupons_seq;
		}
		coupons_seq = changeFunc();
		// console.log(coupons_seq);
									        
									        
		const sale=(coupons_seq)=>{
			var ceiling = 0;
			switch(coupons_seq){
				for(let k = 0; k<user_coupons_List_size; k++){
					case coupons_seq_arr[i]:
						console.log(coupons_seq);
						ceiling=user_coupons_List.get(k).getCeiling();
						[break;]
					}
				}
			console.log(ceiling);
			return ceiling
		}
	</script>
</body>
</html>
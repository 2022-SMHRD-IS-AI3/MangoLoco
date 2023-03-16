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
   String nick = (String)session.getAttribute("nick");
%>
<table>
   <caption align="top"><%=nick %>님 환영합니다.</caption>
   <%if(nick.equals("admin")) {%>
      <tr>
      <td><a href=""><input type="button" width="100px" height="100px">회원관리</a></td>
      <td><a href=""><input type="button" width="100px" height="100px">도서관리</a></td>
      <td><a href=""><input type="button" width="100px" height="100px">대여관리</a></td>
      <td><a href=""><input type="button" width="100px" height="100px">재고관리</a></td>
   </tr>
   <%}else{ %>
   <tr>
      <td><a href=""><input type="button" width="100px" height="100px">도서검색</a></td>
      <td><a href=""><input type="button" width="100px" height="100px">나의책방</a></td>
      <td><a href=""><input type="button" width="100px" height="100px">즐겨찾기</a></td>
      <td><a href=""><input type="button" width="100px" height="100px">회원정보</a></td>
   </tr>
   <%} %>
</table>

</body>
</html>
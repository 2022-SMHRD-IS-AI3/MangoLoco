<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
<style>
   fieldset {
      width : 300px
   }
</style>
</head>
<body>
   <form action = "JoinCon.do" method = "post" >
      <fieldset>
         <legend align="center">회원가입</legend>
         <table>
            <tr>
               <td>ID</td>
               <td><input type = "text" name = "id"></td>
               <td rowspan = 5><input type = "submit" value = "전송"></td>
            </tr>
            <tr>
               <td>PW</td>
               <td><input type = "password" name = "pw"></td>
            </tr>
            <tr>
               <td>NICKNAME</td>
               <td><input type = "text" name = "nick"></td>
            </tr>
            <tr>
               <td>EMAIL</td>
               <td><input type = "text" name = "email"></td>
            </tr>
            <tr>
               <td>TEL</td>
               <td><input type = "text" name = "tel"></td>
            </tr>
         </table>
      </fieldset>
   </form>
</body>
</html>
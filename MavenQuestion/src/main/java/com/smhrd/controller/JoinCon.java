package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.BookDAO;
import com.smhrd.model.BookDTO;


public class JoinCon extends HttpServlet {
   private static final long serialVersionUID = 1L;
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      System.out.println("[JoinCon]");
      request.setCharacterEncoding("EUC-KR");
      String id = request.getParameter("id");
      String pw = request.getParameter("pw");
      String nick = request.getParameter("nick");
      String email = request.getParameter("email");
      String tel = request.getParameter("tel");
      
      BookDTO dto = new BookDTO(id, pw, nick, email, tel);

      BookDAO dao = new BookDAO();
      System.out.println("11111111");
      int cnt = dao.join(dto);
      String moveURL = null;
      if (cnt > 0) {
         System.out.println("회원가입 성공!");
         moveURL = "Q4_Login.jsp";
      } else {
         System.out.println("회원가입 실패..");
         moveURL = "Q4_Join.jsp";
      }
      response.sendRedirect(moveURL);
   }

}
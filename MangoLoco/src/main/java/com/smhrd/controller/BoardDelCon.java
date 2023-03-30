package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.BoardDAO;


public class BoardDelCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nick = request.getParameter("nick");
		
		BoardDAO dao = new BoardDAO();
		int cnt = dao.delete(nick);
		
		if(cnt>0){
			System.out.println("삭제완료");
		}else{
			System.out.println("실패");
		}
	
	}

}

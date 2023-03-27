package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.Commend.Commend;
import com.smhrd.model.BoardDAO;

public class BoardDelCon implements Commend {
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String nick = request.getParameter("nick");
		
		BoardDAO dao = new BoardDAO();
		int cnt = dao.delete(nick);
		
		if(cnt>0){
			System.out.println("삭제성공");
		}else{
			System.out.println("삭제실패");
		}
		return "ShowMember.jsp";
	}

}

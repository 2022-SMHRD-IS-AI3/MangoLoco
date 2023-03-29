package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.Commend.Command;
import com.smhrd.model.BoardDAO;

public class BoardDelCon implements Command {
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String nick = request.getParameter("nick");
		
		BoardDAO dao = new BoardDAO();
		int cnt = dao.delete(nick);
		
		if(cnt>0){
			System.out.println("�����깃났");
		}else{
			System.out.println("�����ㅽ��");
		}
		return "ShowMember.jsp";
	}

}

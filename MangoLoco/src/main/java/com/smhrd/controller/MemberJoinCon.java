package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.smhrd.model.MembersDAO;
import com.smhrd.model.MembersDTO;

import net.sf.json.JSONObject;

/**
 * Servlet implementation class MemberJoinCon
 */
public class MemberJoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/x-json; charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("email");
		String nick = request.getParameter("username");
		String pw = request.getParameter("pw");
		String pw2 = request.getParameter("pw2");
		JSONObject jobj = new JSONObject();
		
		MembersDTO dto = new MembersDTO(id, pw, nick, 0);
		MembersDAO dao = new MembersDAO();
		int cnt = dao.join(dto);
		String result;
		if(cnt > 0) {
			System.out.println("성공");
			result = "성공";
		}else {
			System.out.println("실패");
			result = "실패";
		}
		String gson = new Gson().toJson(result);
		try {
			response.getWriter().write(gson);			
		}catch (JsonIOException e) {
			e.printStackTrace();
		}
	}

}

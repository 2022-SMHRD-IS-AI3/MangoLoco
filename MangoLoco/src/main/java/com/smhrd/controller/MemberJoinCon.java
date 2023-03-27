package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		String id = request.getParameter("email");
		String nick = request.getParameter("username");
		String pw = request.getParameter("pw");
		String pw2 = request.getParameter("pw2");
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
		JSONObject jobj = new JSONObject();
		jobj.put("result", result);
		response.getWriter().print(jobj);
	}

}

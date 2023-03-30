package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.smhrd.model.MembersDAO;
import com.smhrd.model.MembersDTO;

import net.sf.json.JSONObject;


public class MemberLoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		MembersDTO dto = new MembersDTO(id, pw);
		MembersDAO dao = new MembersDAO();
		MembersDTO info = dao.login(dto);
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/x-json; charset=utf-8");
		
		JSONObject json = new JSONObject();
		json.put("id", info.getId());
		json.put("pw", info.getPw());
		json.put("nick", info.getNick());

		session.setAttribute("id", info.getId());
		session.setAttribute("nick", info.getNick());
		
		String gson = new Gson().toJson(info);
		response.getWriter().write(gson);
	}

}

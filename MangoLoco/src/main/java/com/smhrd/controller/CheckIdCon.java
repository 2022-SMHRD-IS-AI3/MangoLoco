package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MembersDAO;

/**
 * Servlet implementation class CheckIdCon
 */
public class CheckIdCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/x-json; charset=utf-8");
		String id = request.getParameter("email");

		MembersDAO dao = new MembersDAO();
		String idcheck = dao.idCheck(id);
		String isIdCheck = "false";
		if(idcheck != null) {
			isIdCheck ="true";
			
		}else {
			isIdCheck = "false";
		}
		
		response.getWriter().write(isIdCheck);
	}

}

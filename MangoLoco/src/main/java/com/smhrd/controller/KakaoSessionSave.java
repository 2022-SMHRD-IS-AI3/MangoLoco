package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.User;

import com.google.gson.Gson;
import com.smhrd.model.MembersDTO;

public class KakaoSessionSave extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userDataJson = request.getReader().readLine();
		Gson gson = new Gson();
		MembersDTO user = gson.fromJson(userDataJson, MembersDTO.class);
		HttpSession session = request.getSession();
		session.setAttribute("user", user);
		
	}

}

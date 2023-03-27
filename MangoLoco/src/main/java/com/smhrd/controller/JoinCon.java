package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.Commend.Commend;

import net.sf.json.JSONObject;

public class JoinCon implements Commend{
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("UTF-8");
		JSONObject json = new JSONObject();
		json.put("username", "username");
		String email = request.getParameter("email");
		System.out.println(json.toString());
		System.out.println(email);
		System.out.println("adfsdfsdf");
		
		return null;
	}
	
}

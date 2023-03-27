package com.smhrd.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.codehaus.jackson.map.ObjectMapper;
import org.apache.tomcat.jni.Buffer;
import org.apache.tomcat.util.json.JSONParser;

import com.smhrd.Commend.Commend;

import net.sf.json.JSONObject;

public class LoginCon implements Commend{
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("UTF-8");
		String email = request.getParameter("email");
		return  null;
	}
	
}
	

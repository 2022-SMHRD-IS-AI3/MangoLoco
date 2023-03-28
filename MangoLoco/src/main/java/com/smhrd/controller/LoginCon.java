package com.smhrd.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.codehaus.jackson.map.ObjectMapper;
import org.apache.tomcat.jni.Buffer;
import org.apache.tomcat.util.json.JSONParser;

import com.google.gson.Gson;
import com.smhrd.Commend.Commend;
import com.smhrd.model.MembersDAO;
import com.smhrd.model.MembersDTO;

import net.sf.json.JSONObject;

public class LoginCon implements Commend{
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		return  null;
	}
	
}
	

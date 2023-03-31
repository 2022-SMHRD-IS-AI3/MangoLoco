package com.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.ProductDAO;
import com.smhrd.model.ProductDTO;

import net.sf.json.JSONObject;

public class ReadProductCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/x-json; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		int count = Integer.parseInt(request.getParameter("count"));
		String[] soft = request.getParameterValues("soft");
		if(soft != null) {
			for(int i=0; i<soft.length; i++) {
				System.out.println(soft[i]);
			}
		}
		ProductDAO dao = new ProductDAO();
		List<ProductDTO> productDTO = dao.allRead(count);
		
		JSONObject json = new JSONObject();
		json.put("productDTO", productDTO);

		response.getWriter().print(json);
		
	}

}

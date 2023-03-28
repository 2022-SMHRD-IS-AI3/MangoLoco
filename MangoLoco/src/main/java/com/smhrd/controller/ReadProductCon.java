package com.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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
		ProductDAO dao = new ProductDAO();
		List<ProductDTO> productDTO = dao.allProd();
	
		JSONObject json = new JSONObject();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("productDTO", productDTO);
		json.put("map", map);
		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().print(json);
		
	}

}

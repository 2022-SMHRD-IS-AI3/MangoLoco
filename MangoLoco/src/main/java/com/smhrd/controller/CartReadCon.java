package com.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.ProductDAO;
import com.smhrd.model.ProductDTO;
import com.smhrd.model.Shop_BasketDAO;
import com.smhrd.model.Shop_BasketDTO;

import net.sf.json.JSONObject;


public class CartReadCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("aplication/x-json; charset=UTF-8");
		
		String id = request.getParameter("id");
		
		Shop_BasketDAO dao = new Shop_BasketDAO();
		List<String> mylist = dao.idBasket(id);
		for(int i=0; i<mylist.size(); i++) {
			System.out.println(mylist.get(i));
		}
		ProductDAO prodDAO = new ProductDAO();
		List<ProductDTO> mybasket = new ArrayList();
		for(int i=0; i<mylist.size(); i++) {
			mybasket.add(prodDAO.basketProd(mylist.get(i)));
		}
		JSONObject json = new JSONObject();
		json.put("mybasket", mybasket);

		response.getWriter().print(json);
		
	}

}

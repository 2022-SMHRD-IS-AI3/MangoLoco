package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Shop_BasketDAO;
import com.smhrd.model.Shop_BasketDTO;

/**
 * Servlet implementation class cartInCon
 */
public class CartInCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("aplication/x-json; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		Shop_BasketDTO basketDTO = new Shop_BasketDTO(title, id);
		Shop_BasketDAO basketDAO = new Shop_BasketDAO();
		int cnt = basketDAO.cartIn(basketDTO);
		if(cnt > 0) {
			System.out.println("성공");
		}else {
			System.out.println("실패");
		}
	}	

}

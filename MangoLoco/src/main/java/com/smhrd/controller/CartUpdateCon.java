package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Shop_BasketDAO;
import com.smhrd.model.Shop_BasketDTO;

/**
 * Servlet implementation class CartUpdateCon
 */
public class CartUpdateCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		String model = request.getParameter("model");
		String id = (String)session.getAttribute("id"); 
		int val = Integer.parseInt(request.getParameter("val"));
		
		Shop_BasketDAO dao = new Shop_BasketDAO();
		Shop_BasketDTO dto = new Shop_BasketDTO(model, id,val);
		dao.samemodel(dto);
	}

}

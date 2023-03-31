package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MovePaymentPageCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mList = request.getParameter("tList");
		String pList = request.getParameter("pList");
		String val = request.getParameter("val");
		
		String[] modelList = mList.split(",");
		String[] price = pList.split(",");
		String[] vall = val.split(",");
		
		int[] priceList = new int[modelList.length];
		int[] inputval = new int[modelList.length];
		
		for(int i=0; i<modelList.length; i++) {
			priceList[i] = Integer.parseInt(price[i]);
			inputval[i] = Integer.parseInt(vall[i]);
		}
	
		
		
		RequestDispatcher rd = request.getRequestDispatcher("kakaoPay.jsp");
		request.setAttribute("modelList", modelList);
		request.setAttribute("priceList", priceList);
		request.setAttribute("valList", inputval);
		rd.forward(request, response);
		
	}

}

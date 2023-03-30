package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MovePaymentPageCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] modelList = request.getParameterValues("tList");
		String[] pList = request.getParameterValues("pList");
		String[] val = request.getParameterValues("val");
		int[] priceList = new int[pList.length];
		int[] inputval = new int[val.length];
		
		System.out.println(pList[0]);
		
		for(int i=0; i<pList.length; i++) {
			priceList[i] = Integer.parseInt(pList[i]);
			inputval[i] = Integer.parseInt(val[i]);

			System.out.println(priceList[i]);
			System.out.println(inputval[i]);
		}
		response.sendRedirect("Login.jsp");
		
	}

}

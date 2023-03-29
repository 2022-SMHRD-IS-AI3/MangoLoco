package com.smhrd.frontcontroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.Commend.Commend;
import com.smhrd.controller.BoardWriteCon;
import com.smhrd.controller.BoardDelCon;
//import com.smhrd.controller.DeleteCon;
//import com.smhrd.controller.JoinCon;
//import com.smhrd.controller.LoginCon;
//import com.smhrd.controller.UpdataCon;
//import com.smhrd.controller.logoutCon;

@WebServlet("*.do")
public class Frontcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[Frontcontroller]");
		
		request.setCharacterEncoding("UTF-8");
		
		String reqURI = request.getRequestURI();
		System.out.println("요청 위치 : "+reqURI);
		
		String contextPath = request.getContextPath();
		System.out.println("Context Path : "+contextPath);
		
		String result = reqURI.substring(contextPath.length()+1);
		System.out.println("최종요청값 : "+result);
		Commend con = null;
		
//		}else if(result.equals("JoinCon.do")) {
//			// 1. 입력받은 데이터 가져오기
//			con = new JoinCon();
//			//RequestDispatcher rd = request.getRequestDispatcher(moveURL);
//			//rd.forward(request, response);
//		}else if(result.equals("logoutCon.do")) {
//			con = new logoutCon();
//			
//		}else if(result.equals("UpdateCon.do")) {
//			con = new UpdataCon();
//			
//		}else if(result.equals("DeleteCon.do")) {
//			con = new DeleteCon();
//			
//		}else if(result.equals("BoardWriteCon.do")) {
//			con = new BoardWriteCon();
		
//		}else if(result.equals("BoardDelCon.do")) {
//			con = new BoardWriteCon();
//		}
		
		String moveRUL = con.execute(request, response);
		response.sendRedirect(moveRUL);
	}

}

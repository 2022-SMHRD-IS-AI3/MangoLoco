package com.smhrd.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Blob;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.BoardDAO;
import com.smhrd.model.BoardDTO;
import com.smhrd.model.ImageSaveVO;
import com.smhrd.model.MembersDTO;

import oracle.sql.BLOB;

public class BoardWriteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletRequest session;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		
		System.out.println("[WriteBoradCon]");
		MembersDTO user = (MembersDTO) session.getAttribute("user");
		//MultipartRequest 매개변수 정리
		//1. request 객체
		//2. 업로드된 저장경로
		String path = request.getServletContext().getRealPath("file");
		System.out.println(path);
		
		String category = request.getParameter("Writetype");
		String id = (String)session.getAttribute("id");
		String title = request.getParameter("title");
		String nick = (String)session.getAttribute("nick");
		String filename = request.getParameter("filename");
		String filename_en = URLEncoder.encode("UTF-8");
		String content = request.getParameter("bbsContent");
		
		if(id.equals("admin")) {
			
		}else {
			category = "0";
		}
		
		
		System.out.println("title : "+title);
		System.out.println("writer : "+nick);
		System.out.println("filename : "+filename);
		System.out.println("content : "+content);
		
		ImageSaveVO imgvo = new ImageSaveVO();
		imgvo.setBlob(filename_en);
		String imgs = imgvo.getBlob();
		// DTO로 묶기
		BoardDTO dto = new BoardDTO(0, id, nick, title, content, null, category, imgs);
		int cnt = new BoardDAO().upload(dto);
		
		if(cnt>0) {
			System.out.println("업로드 성공");
		}else {
			System.out.println("업로드 실패");
		}
		response.sendRedirect("BoardMain.jsp");
	}

}
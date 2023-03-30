package com.smhrd.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.BoardDAO;
import com.smhrd.model.BoardDTO;

public class BoardWriteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[WriteBoradCon]");

		//MultipartRequest 매개변수 정리
		//1. request 객체
		//2. 업로드된 저장경로
		String path = request.getServletContext().getRealPath("file");
		System.out.println(path);
		
		// 3.Max사이즈
		int maxSize = 10*1024*1024;
		
		// 4.인코딩 방식
		String encoding = "UTF-8";
		
		// 5.중복제거
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		
		MultipartRequest multi = new MultipartRequest(request, path, maxSize, encoding, rename);
		String Writetype = multi.getParameter("Writetype");
		String id = multi.getParameter("id");
		String title = multi.getParameter("title");
		String nick = multi.getParameter("nick");
		String filename = multi.getFilesystemName("filename");
		String filename_en = URLEncoder.encode(filename,"UTF-8");
		String content = multi.getParameter("content");
		
		System.out.println("title : "+title);
		System.out.println("writer : "+nick);
		System.out.println("filename : "+filename);
		System.out.println("content : "+content);
		
		// DTO로 묶기
		BoardDTO dto = new BoardDTO(0, id, nick, title, content, null, Writetype, );
		int cnt = new BoardDAO().upload(dto);
		
		if(cnt>0) {
			System.out.println("업로드 성공");
		}else {
			System.out.println("업로드 실패");
		}
	}

}

package com.smhrd.Commend;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Commend {
	// 추상메소드 execute 메소드 만들기
		public abstract String execute(HttpServletRequest request, HttpServletResponse response) throws IOException;
}

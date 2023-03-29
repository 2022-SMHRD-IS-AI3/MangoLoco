package com.smhrd.Commend;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Commend {
		public abstract String execute(HttpServletRequest request, HttpServletResponse response) throws IOException;
}

package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor

public class BoardDTO {
	private int seq;
	private String id;
	private String nick;
	private String title;
	private String content;
	private String b_date;
	private String category;
}

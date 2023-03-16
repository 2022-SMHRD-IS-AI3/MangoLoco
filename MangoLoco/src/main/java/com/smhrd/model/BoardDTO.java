package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor

public class BoardDTO {
	private int 게시판순번;
	private String id;
	private String 제목;
	private String 내용;
	private String 작성일;
}

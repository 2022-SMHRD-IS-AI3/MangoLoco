package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class ReviewDTO {
	private int 리뷰순번;
	private int 제품순번;
	private String 작성일자;
	private String 제목;
	private String 내용;
}

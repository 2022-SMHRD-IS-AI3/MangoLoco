package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class ReviewDTO {
	private int seq;
	private int pro_seq;
	private String r_date;
	private String title;
	private String content;
}

package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class ReviewDTO {
	private int SEQ;
	private int INDSEQ;
	private String MODEL;
	private String R_DATE;
	private String TITLE;
	private String CONTENT;
	private int RATING;
}

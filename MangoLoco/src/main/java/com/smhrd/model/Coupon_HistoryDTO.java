package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor

public class Coupon_HistoryDTO {
	private int seq;
	private int c_seq;
	private String id;
	private int classification;
	private String get_date;
	private String use_date;
	
}

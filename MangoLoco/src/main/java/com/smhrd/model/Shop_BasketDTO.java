package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor

public class Shop_BasketDTO {
	private int seq;
	private String model;
	private int classification;
	private String id;
	private String p_seq;
	private String s_date;
}

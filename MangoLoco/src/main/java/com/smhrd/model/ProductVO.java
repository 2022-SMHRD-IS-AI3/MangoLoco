package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class ProductVO {
	private int seq;
	private String model;
	private String company;
	private String cpu;
	private String graphic;
	private int price;
	private int count;
	private String img;
}

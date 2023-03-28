package com.smhrd.model;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class ProductDTO {
	private int seq;
	private String model;
	private String cpu;
	private String graphic;
	private String price;
	private String detail; 
	private int score;
}

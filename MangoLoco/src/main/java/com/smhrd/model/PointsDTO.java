package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor

public class PointsDTO {
	private int seq;
	private int classification;
	private String id;
	private String p_date;
	private int price;
}

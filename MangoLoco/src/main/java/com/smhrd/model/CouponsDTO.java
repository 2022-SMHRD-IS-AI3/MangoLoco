package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor

public class CouponsDTO {
	private int seq;
	private int g_seq;
	private String name;
	private String use_from;
	private String use_to;
	private int sale_pct;
	private int ceiling;
}

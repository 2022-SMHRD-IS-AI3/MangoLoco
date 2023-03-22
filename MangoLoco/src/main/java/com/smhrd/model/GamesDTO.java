package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor

public class GamesDTO {
	private int seq;
	private String id;
	private String g_date;
	private int sale_pct;
	private int ceiling;
	
}

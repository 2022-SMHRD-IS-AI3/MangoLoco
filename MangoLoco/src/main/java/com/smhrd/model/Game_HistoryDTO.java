package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor

public class Game_HistoryDTO {
	private int seq;
	private int g_seq;
	private String id;
	private int pass;
	private String g_date;
}

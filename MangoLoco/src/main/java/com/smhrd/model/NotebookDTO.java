package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class NotebookDTO {
	private int num;
	private String modelname;
	private String 제조사;
	private String 사용처;
	private String cpu;
	private int price;
	private int cnt;
}

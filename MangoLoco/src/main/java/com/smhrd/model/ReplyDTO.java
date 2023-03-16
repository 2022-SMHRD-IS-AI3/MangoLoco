package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor

public class ReplyDTO {
	private int seq;
	private int b_seq;
	private String id;
	private String nick;
	private String content;
	private String r_date;

}

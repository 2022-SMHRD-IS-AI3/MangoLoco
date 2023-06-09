package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
@NoArgsConstructor
public class Shop_BasketDTO {
	private int seq;
	@NonNull
	private String model;
	@NonNull
	private String id;
	private int val;
	
	public Shop_BasketDTO(String model, String id, int val) {
		this.model = model;
		this.id = id;
		this.val = val;
	}
}

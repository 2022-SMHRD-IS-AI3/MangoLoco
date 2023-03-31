package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class ImageSaveVO{
	    private byte blob;
	 
	    public byte getBlob() {
	        return blob;
	    }
	    public void setBlob(byte blob) {
	        this.blob = blob;
	    }
	

 }



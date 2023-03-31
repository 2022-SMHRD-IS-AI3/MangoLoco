package com.smhrd.model;

import java.io.FileOutputStream;

import java.io.File;

public class ImageSaveDAO {

	public ImageSaveDAO(String fileN, byte[] imgvo) {
		// TODO Auto-generated constructor stub

	    if(imgvo == null){

	        return;

	    }



	    int lByteArraySize = imgvo.length;

	    System.out.println(fileN);



	    try{

	        File lOutFile = new File(fileN);

	        FileOutputStream lFileOutputStream = new FileOutputStream(lOutFile);

	        lFileOutputStream.write(imgvo);

	        lFileOutputStream.close();

	    }catch(Throwable e){

	        e.printStackTrace(System.out);

	    }

	}
}

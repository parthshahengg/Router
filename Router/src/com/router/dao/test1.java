package com.router.dao;

import java.text.SimpleDateFormat;
import java.util.Date;

public class test1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Date d1 = new Date();
		//YYYY-MM-DD HH:MI:SS
		SimpleDateFormat df = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss");
		String dateTime = df.format(d1);
		
		System.out.println(dateTime);

	}

}

package com.edu.util;

import com.ndktools.javamd5.Mademd5;

public class MD5Utils {
	public static String getPwd(String pwd) {
		Mademd5 made =  new Mademd5()  ;
		
		return made.toMd5(pwd);
	}
}

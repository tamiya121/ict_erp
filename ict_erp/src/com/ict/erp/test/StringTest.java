package com.ict.erp.test;

public class StringTest {

	public static void main(String[] args) {
		String str = "a,b,c,d,e";
		String s = str.substring(0,1);
		System.out.println(s);
		str = str.substring(2);
		System.out.println(str);
	}
}

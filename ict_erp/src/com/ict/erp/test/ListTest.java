package com.ict.erp.test;

public class ListTest {

	public static String[] split(String str,String seperator) {
		int size = ArrayTest.count(str, seperator)+1;
		String[] strs = new String[size];
		for(int i=0;i<size;i++) {
			int idx = str.indexOf(seperator);
			if(idx==-1) {
				strs[i] = str;
				return strs;
			}
			String s = str.substring(0, idx);
			strs[i] = s;
			str = str.substring(idx+1);
		}
		return strs;
	}
	public static void main(String[] args) {
		String str = "aa-bb-cc-dd-ee";
		String[] strs = split(str,"-");
		for(int i=0;i<strs.length;i++) {
			System.out.println("strs[" + i + "] : " + strs[i]);
		}
	}
}

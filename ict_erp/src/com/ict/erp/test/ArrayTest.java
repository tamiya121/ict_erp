package com.ict.erp.test;

public class ArrayTest {

	public static int indexOf(String str,String searchStr) {
		for(int i=0;i<str.length();i++) {
			Character c = str.charAt(i);
			if(c.toString().equals(searchStr)) {
				return i;
			}
		}
		return -1;
	}

	public static int lastIndexOf(String str,String searchStr) {
		for(int i=str.length()-1;i>=0;i--) {
			Character c = str.charAt(i);
			if(c.toString().equals(searchStr)) {
				return i;
			}
		}
		return -1;
	}
	public static int count(String str, String searchStr) {
		int cnt = 0;
		for(int i=0;i<str.length();i++) {
			Character c = str.charAt(i);
			if(c.toString().equals(searchStr)) {
				cnt++;
			}
		}
		return cnt;
	}
	public static void main(String[] args) {
		String str = "a,b,c";
		int idx = indexOf(str,",");
		System.out.println(",의 첫번째 위치 : " + idx);
		idx = indexOf(str,"d");
		System.out.println("d의 첫번째 위치 : " + idx);
		idx = lastIndexOf(str,",");
		System.out.println(",의 마지막 위치 : " + idx);
		int cnt = count(str,",");
		System.out.println(",의 갯수 " + cnt);
	}
}

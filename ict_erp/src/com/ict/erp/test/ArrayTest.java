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
		int[] arr = new int[]{1,2,3};
		
		for(int i=0;i<arr.length;i++) {
			int a = arr[0];
			System.out.println(a);
		}
		
		for(int a:arr) {
			System.out.println(a);
		}
	}
}

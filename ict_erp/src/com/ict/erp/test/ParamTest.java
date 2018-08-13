package com.ict.erp.test;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class ParamTest {

	public static void makeData(Map<String,String> data) {
		data.put("이름", "홍길동");
		data.put("나이", "33");
		data.put("주소", "서울시 강남구");
	}
	
	public static void printData(Map<String,String> data) {
		Iterator<String> it = data.keySet().iterator();
		while(it.hasNext()) {
			String key = it.next();
			String value = data.get(key);
			System.out.println(key + ":" + value);
		}
	}
	public String[] test() {
		String[] str = {"a","b"};
		return str;
	}
	public static void main(String[] args) {
		Map<String,String> map
		 = new HashMap<String,String>();
		makeData(map);
		printData(map);
	}
}

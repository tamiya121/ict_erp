package com.erp.ict;

import java.util.HashMap;
import java.util.Map;

public class Test {

	public static void service(Map<String,Object> map) {
		String value = (String)map.get("value");
		System.out.println(value);
	}
	public static void main(String[]args) {
		Map<String,Object> map = 
				new HashMap<String,Object>();
		map.put("value", "넘기는 값");
		
		service(map);
	}
}

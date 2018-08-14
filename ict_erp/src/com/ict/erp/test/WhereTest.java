package com.ict.erp.test;

import java.util.HashMap;
import java.util.Map;

public class WhereTest {

	
	public static void main(String[] args) {
		String name = "abc";
		Map<String,String> map = new HashMap<String,String>();
		map.put("name", name);
		System.out.println(map.get("name"));
		
	}
}

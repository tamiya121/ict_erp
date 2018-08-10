package com.ict.erp.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MapTest {
	public static void main(String[] args) {
		Map<String,String> map
		= new HashMap<String,String>();
		map.put("이름", "박경훈");
		map.put("나이", "33");
		map.put("주소", "서울");
		map.put("아이디", "redfila");
		map.put("비번", "1111");
		
		System.out.println(map.get("이름"));
		List<Map<String,String>> mapList;
		mapList = new ArrayList<Map<String,String>>();
		mapList.add(map);
		
		System.out.println("\"abc\"");
	}
}

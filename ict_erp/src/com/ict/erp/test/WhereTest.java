package com.ict.erp.test;

public class WhereTest {

	public static void main(String[] args) {
		String sql = "select * from member_info ";
		String id = "test";
		sql += " where miId=?"; 
	}
}

package com.ict.erp.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ict.erp.common.DBCon;
import com.ict.erp.dao.DepartDAO;
import com.ict.erp.vo.DepartInfo;

public class DepartDAOImpl implements DepartDAO{
	private Connection con;
	
	public DepartDAOImpl(Connection con) {
		this.con = con;
	}
	@Override
	public List<DepartInfo> selectDepartList() throws SQLException {
		List<DepartInfo> departList = new ArrayList<DepartInfo>();
		String sql = "select diNo, diName, diDesc, diCnt from depart_info";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			DepartInfo di = new DepartInfo();
			di.setDiNo(rs.getInt("diNo"));
			di.setDiName(rs.getString("diName"));
			di.setDiDesc(rs.getString("diDesc"));
			di.setDiCnt(rs.getInt("diCnt"));
			departList.add(di);
		}
		rs.close();
		ps.close();
		return departList;
	}
	
	@Override
	public DepartInfo selectDepart() {
		return null;
	}
	
	public static void main(String[] args) {
		DepartDAO ddao = new DepartDAOImpl(DBCon.getCon());
		try {
			List<DepartInfo> diList = ddao.selectDepartList();
			for(int i=0;i<diList.size();i++) {
				DepartInfo di = diList.get(i);
				System.out.println(di);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBCon.close();
		}
	}
}

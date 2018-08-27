package com.ict.erp.dao.impl;

import java.lang.reflect.Field;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.ict.erp.dao.DepartDAO;
import com.ict.erp.vo.DepartInfo;

public class DepartDAOImpl extends CommonDAOImpl implements DepartDAO {

	@Override
	public List<DepartInfo> selectDepartInfoList(DepartInfo di) throws SQLException {
		List<DepartInfo> diList = new ArrayList<DepartInfo>();
		String sql = "select * from (";
		sql += "select di.*, rownum as rNum from (";
		sql += "select * from depart_info order by diNum desc) di";
		sql += " where rownum<=?)";
		sql += " where rNum>=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, di.getPi().getlNum());
			ps.setInt(2, di.getPi().getsNum());
			rs = ps.executeQuery();
			while(rs.next()) {
				di = new DepartInfo(rs.getInt("diNum"),
						rs.getString("diCode"),
						rs.getString("diName"),
						rs.getString("diDesc"));
				diList.add(di);
			}
		}catch(SQLException e) {
			throw e;
		}finally {
			close();
		}
		return diList;
	}

	@Override
	public DepartInfo selectDepartInfo(int diNum) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, Object> insertDepartInfo(DepartInfo di) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, Object> updateDepartInfo(DepartInfo di) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, Object> deleteDepartInfo(DepartInfo di) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}

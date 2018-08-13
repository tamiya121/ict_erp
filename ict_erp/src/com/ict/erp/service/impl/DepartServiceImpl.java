package com.ict.erp.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.ict.erp.common.DBCon;
import com.ict.erp.dao.DepartDAO;
import com.ict.erp.dao.impl.DepartDAOImpl;
import com.ict.erp.service.DepartService;
import com.ict.erp.vo.DepartInfo;

public class DepartServiceImpl implements DepartService{

	@Override
	public List<DepartInfo> getDepartList() throws SQLException {
		DepartDAO ddao = new DepartDAOImpl(DBCon.getCon());
		List<DepartInfo> diList = null;
		try {
			diList = ddao.selectDepartList();
		} catch (SQLException e) {
			throw e;
		}finally {
			DBCon.close();
		}
		return diList;
	}

	@Override
	public DepartInfo getDepart() {
		// TODO Auto-generated method stub
		return null;
	}

}

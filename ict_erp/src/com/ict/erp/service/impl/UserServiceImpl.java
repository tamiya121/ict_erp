package com.ict.erp.service.impl;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.ict.erp.service.UserService;

public class UserServiceImpl implements UserService {

	@Override
	public void login(HttpServletRequest req) {
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");
		
		Map<String,String> rMap = new HashMap<String,String>();
		rMap.put("msg", "성공~");
		rMap.put("url", "/views/index");
		req.setAttribute("rMap",rMap);
		if(id.equals("redfila")) {
			if(pwd.equals("r1r2r3")) {
				HttpSession hs = req.getSession();
				hs.setAttribute("id",id);
				hs.setAttribute("name","홍길동");
				hs.setAttribute("age", "33");
				return;
			}
		}
		rMap.put("msg", "실패");
		rMap.put("url", "views/user/login");
	}

}

<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	String miId = request.getParameter("miId");
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "ictu";
	String pwd = "12345678";
	String driver = "oracle.jdbc.driver.OracleDriver";
	
	Connection con = null;
	String msg = "아이디 중복됬어요~";
	try{
		Class.forName(driver);
		con = DriverManager.getConnection(url, id, pwd);
		String sql = "select count(1) from member_info ";
		sql += " where miId=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1,miId);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			int cnt = rs.getInt(1);
			if(cnt==1){
				request.setAttribute("msg", msg);
				RequestDispatcher rd = request.getRequestDispatcher("/views/user/signup.jsp");
				rd.forward(request, response);
				return;
			}
		}

		String miPwd = request.getParameter("miPwd");
		String miName = request.getParameter("miName");
		String miEmail = request.getParameter("miEmail");
		String miEtc = request.getParameter("miEtc");
		String lvl = request.getParameter("lvl");
		sql = "insert into member_info(";
		sql += "mino,miid,mipwd, dino,miemail, mietc,"; 
		sql += "credat, cretim, creusr,"; 
		sql += "moddat, modtim, modusr,"; 
		sql += "lvl,miname)";
		sql += "values(seq_mino.nextval,?,?,";
		sql += "1,?,?,";
		sql += "to_char(sysdate,'YYYYMMDD'),to_char(sysdate,'HH24miss'),?,";
		sql += "to_char(sysdate,'YYYYMMDD'),to_char(sysdate,'HH24miss'),?,";
		sql += "?,?)";
		String miNo = user.get("mino");
		System.out.println(miNo);
		ps = con.prepareStatement(sql);
		ps.setString(1,miId);
		ps.setString(2,miPwd);
		ps.setString(3,miEmail);
		ps.setString(4,miEtc);
		ps.setString(5,miNo);
		ps.setString(6,miNo);
		ps.setString(7,lvl);
		ps.setString(8,miName);
		int rCnt = ps.executeUpdate();
		if(rCnt==1){
			out.write("사원등록이 성공하였습니다.");
		}else{
			msg = "뭔가 잘못됬음!! 안들어감!!";
			request.setAttribute("msg", msg);
			RequestDispatcher rd = request.getRequestDispatcher("/views/user/signup.jsp");
			rd.forward(request, response);
			return;
		}
	}catch(Exception e){
		msg = "뭔가 잘못됬음!! 안들어감!!";
		request.setAttribute("msg", msg);
		RequestDispatcher rd = request.getRequestDispatcher("/views/user/signup.jsp");
		rd.forward(request, response);
	}
	

%>

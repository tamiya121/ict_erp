<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	Connection con = null;
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String cId = "ictu";
	String cPwd = "12345678";
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(url,cId,cPwd);
		String sql = "select * from member_info";
		sql += " where miId=? and miPwd=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1,id);
		ps.setString(2,pwd);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			Map<String,String> user = 
					new HashMap<String,String>();
			user.put("name",rs.getString("miName"));
			user.put("email",rs.getString("miEmail"));
			user.put("id",rs.getString("miId"));
			user.put("dino",rs.getString("diNo"));
			user.put("mino",rs.getString("miNo"));
			user.put("lvl",rs.getString("lvl"));
			session.setAttribute("user",user);
			response.sendRedirect(rPath + "views/index.jsp");
			return;
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	request.setAttribute("login",false);
	RequestDispatcher rd = request.getRequestDispatcher("/views/user/login.jsp");
	rd.forward(request,response);
%>
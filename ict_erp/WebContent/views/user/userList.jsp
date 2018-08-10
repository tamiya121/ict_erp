<%@page import="com.ict.erp.common.DBCon"%>
<%@page import="com.ict.erp.common.DBUtils"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp" %>
<%!
public List<Map<String,String>> getMemberList(){
	List<Map<String,String>> memberList = null;
	DBUtils dbu = new DBUtils(DBCon.getCon());
	try{
		memberList = dbu.selectList("select * from member_info ");
	}catch(SQLException e){
		System.out.println(e);
	}
	return memberList;
}
%>
<body>
<%=getMemberList()%>
</body>
</html>
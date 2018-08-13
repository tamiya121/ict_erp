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
		String sql = "select MINO, MINAME, MIID, MIEMAIL,"; 
		sql += " (SELECT MI2.MIID FROM MEMBER_INFO MI2 WHERE MI2.MINO= MI.CREUSR) CREUSR,"; 
		sql += " (SELECT DI.DINAME FROM DEPART_INFO DI WHERE DI.DINO = MI.DINO) DINAME"; 
		sql += " FROM MEMBER_INFO MI";
		memberList = dbu.selectList(sql);
	}catch(SQLException e){
		System.out.println(e);
	}
	DBCon.close();
	return memberList;
}
%>
<body>
<div class="container">
	<table class="table table-hover">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>아이디</th>
				<th>이메일주소</th>
				<th>생성자</th>
				<th>부서이름</th>
			</tr>
		</thead>
		<tbody>
<%
List<Map<String,String>> memberList = getMemberList();
for(Map<String,String> member : memberList){
%>
			<tr>
				<td><%=member.get("MINO")%></td>
				<td><%=member.get("MINAME")%></td>
				<td><%=member.get("MIID")%></td>
				<td><%=member.get("MIEMAIL")%></td>
				<td><%=member.get("CREUSR")%></td>
				<td><%=member.get("DINAME")%></td>
			</tr>
<%
}
%>
		</tbody>
	</table>
</div>
</body>
</html>
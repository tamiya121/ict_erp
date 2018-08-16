<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.ict.erp.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp" %>
<%
String itNo = request.getParameter("itNO");
String itText = request.getParameter("itText");
String itPwd = request.getParameter("itPwd");


Connection con = DBCon.getCon();
String sql = "insert into ict_test values(?,?,?)";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,itNo);
ps.setString(2,itText);
ps.setString(3,itPwd);

int cnt = ps.executeUpdate();
if(cnt==1){
%>
	<script>
		alert("정상 저장!!");
		location.href="<%=rPath%>test/testList.jsp";
	</script>
<%
}%>
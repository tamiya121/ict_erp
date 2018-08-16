<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.ict.erp.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp" %>

<%
String[] chks = request.getParameterValues("chk");
Connection con = DBCon.getCon();
String sql = "delete from ict_test where itNo=?";
PreparedStatement ps = con.prepareStatement(sql);
try{
for(int i=0;i<chks.length;i++){
	ps.setString(1,chks[i]);
	ps.executeUpdate();
}
con.commit();
ps.close();
DBCon.close();
}catch(Exception e){
	e.printStackTrace();
} 
%>
<script>
	alert("정상 삭제 완료!");
	location.href="<%=rPath%>test/testList.jsp";
</script>
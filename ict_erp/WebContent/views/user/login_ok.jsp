<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp" %>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	out.println("아이디 : " + id);
	out.println("비번 : " + pwd);
	if(id.equals("redfila")){
		if(id.equals("r1r2r3")){
			
		}
	}
%>
아이디 : <%=id%><br>
비번 : <%=pwd%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	String miId = request.getParameter("miId");
	String miPwd = request.getParameter("miPwd");
	String miName = request.getParameter("miName");
	String miEmail = request.getParameter("miEmail");
	String miEtc = request.getParameter("miEtc");
	String lvl = request.getParameter("lvl");
%>
니가 입력한 아이디 : <%=miId%><br>
니가 입력한 비번 : <%=miPwd%><br>
니가 입력한 이름 : <%=miName%><br>
니가 입력한 이메일 : <%=miEmail%><br>
니가 입력한 비고 : <%=miEtc%><br>
니가 입력한 레벨 : <%=lvl%><br>

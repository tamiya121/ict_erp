<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
session.invalidate();
String rPath = request.getContextPath();
%>
<script>
	alert("로그아웃 완료!!");
	location.href="<%=rPath%>/views/index.jsp";
</script>
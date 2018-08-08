<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp" %>
<%
response.sendRedirect("/erp/views/test/test.jsp");
String test = null;
out.println(test.equals("1"));
%>
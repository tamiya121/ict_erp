<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp" %>
<%
String name = (String)session.getAttribute("name");
%>
<body>
	<div class="container">
		<%=name%>님 ERP System에 오신것을 환영 합니다.
	</div>
</body>
</html>
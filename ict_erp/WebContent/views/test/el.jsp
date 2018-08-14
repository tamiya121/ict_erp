<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp" %>
<%
String name = "박경훈";
application.setAttribute("name","박경훈1");
Map<String,String>
map = new HashMap<String,String>();
map.put("name","박경훈2");
session.setAttribute("name",map);
request.setAttribute("name","박경훈3");
pageContext.setAttribute("name","박경훈4");
%>
<body>
${name}<br>
${sessionScope.name.name}
</body>
</html>
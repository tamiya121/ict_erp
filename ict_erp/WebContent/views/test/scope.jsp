<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp" %>
<c:set var="title" value="abc" scope="request"/>
<%
//scope.jsp
application.setAttribute("app", "내가 짱이여");
session.setAttribute("sess","난 넘버2");
request.setAttribute("req","내가 넘버쓰리!");
pageContext.setAttribute("page", "난 시다바리");
RequestDispatcher rd = request.getRequestDispatcher("print.jsp");
rd.forward(request,response);
%>
${title}
<body>
</body>
</html>
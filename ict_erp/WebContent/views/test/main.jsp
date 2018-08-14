<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp" %>
<%
request.setAttribute("rPath",rPath);
%>
<body>
<jsp:include page="/views/test/include.jsp" flush="false">
	<jsp:param name="id" value="redfila" />
</jsp:include>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp" %>
<body>
<form action="<%=rPath%>test/testInsertOK.jsp">
	번호 : <input type="text" name="itNo"><br>
	텍스트 : <input type="text" name="itText"><br>
	비번 : <input type="password" name="itPwd"><br>
	<button>생성</button>
</form>
</body>
</html>
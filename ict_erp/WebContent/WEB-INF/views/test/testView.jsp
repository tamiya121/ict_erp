<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/common.jsp" %>
<body>
나는 테스트뷰 제이에스피 파일입니다.<br>
<%=request.getAttribute("testInfo") %>
</body>
</html>
<%@page import="com.ict.erp.vo.DepartInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp" %>
<body>

<div class="container">

	<table class="table table-bordered table-hover">
		<thead>
			<tr>
				<th>부서번호</th>
				<th>부서이름</th>
				<th>부서설명</th>
				<th>부서인원</th>
			</tr>
		</thead>
		<tbody>
<%
List<DepartInfo> diList = 
	(List<DepartInfo>)request.getAttribute("diList");
for(DepartInfo di : diList){
%>

			<tr>
				<td><%=di.getDiNo()%></td>
				<td><%=di.getDiName()%></td>
				<td><%=di.getDiDesc()%></td>
				<td><%=di.getDiCnt()%></td>
			</tr>
<%
}
%>
		</tbody>
	</table>
	<table class="table table-bordered table-hover">
		<thead>
			<tr>
				<th>부서번호</th>
				<th>부서이름</th>
				<th>부서설명</th>
				<th>부서인원</th>
			</tr>
		</thead>
		<tbody>
<%
String str = "abc";
%>
		<c:forEach	var="di" items="${diList}">
			<tr>
				<td>${di.diNo}</td>
				<td>${di.diName}</td>
				<td>${di.diDesc}</td>
				<td>${di.diCnt}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>
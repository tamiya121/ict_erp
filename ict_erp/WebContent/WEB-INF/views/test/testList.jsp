<%@page import="java.util.List"%>
<%@page import="com.ict.erp.vo.TestInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/common.jsp" %>
<body>
<div class="container">
	<div class="container">
		<select id="shType">
			<option value="tiNum">번호</option>
			<option value="tiId">아이디</option>
			<option value="tiName">이름</option>
			<option value="tiText">내용</option>
		</select>
		:
		<input type="text" id="shText">
		<button type="button" onclick="searchTest()">검색</button>
	</div>
	<table class="table table-bordered table-hover">
		<thead>
			<tr>
				<th>번호</th>
				<th>아이디</th>
				<th>이름</th>
				<th>내용</th>
			</tr>
		</thead>
		<tbody>
<%
List<TestInfo> tiList = (List<TestInfo>)request.getAttribute("tiList");
for(TestInfo ti : tiList){
%>
			<tr>
				<td><%=ti.getTiNum()%></td>
				<td><%=ti.getTiId()%></td>
				<td><%=ti.getTiName()%></td>
				<td><%=ti.getTiText()%></td>
			</tr>
<%
}
%>
		</tbody>
	</table>
	
</div>
<script>
	function searchTest(){
		var shType = document.querySelector('#shType').value;
		var shText = document.querySelector('#shText').value;
		if(shText.trim()==''){
			alert("검색어는 1글자 이상입니다.");
			return;
		}
		
		location.href="<%=rPath%>/test/testList?shType=" + shType + "&shText=" + shText;
		
	}
</script>
</body>
</html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.ict.erp.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp" %>
<body>
<div class="container">
	<table class="table table-bordered table-hover">
		<thead>
			<tr>
				<th><input type="checkbox" id="allCheck" onclick="allChk(this)"></th>
				<th>번호</th>
				<th>텍스트</th>
				<th>비번</th>
			</tr>
		</thead>
		<tbody>
<%
Connection con = DBCon.getCon();
String sql = "select * from ict_test ";
PreparedStatement ps = con.prepareStatement(sql);
ResultSet rs = ps.executeQuery();
while(rs.next()){
%>
			<tr>
				<td><input type="checkbox" name="chk" value="<%=rs.getInt("itNo")%>"></td>
				<td><%=rs.getInt("itNo")%></td>
				<td><%=rs.getString("itText")%></td>
				<td><%=rs.getString("itPwd")%></td>
			</tr>			
<%
}
%>
		</tbody>
	</table>
	<div>
		<button onclick="move()">데이터 생성</button>
		<button onclick="deleteTest()">삭제</button>
	</div>
</div>
<script>
	function move(){
		location.href="<%=rPath%>test/testInsert.jsp";
	}
	function deleteTest(){
		var chkObjs = document.querySelectorAll('input[name=chk]:checked');
		var params = "?";
		for(var i=0;i<chkObjs.length;i++){
			params += "chk=" + chkObjs[i].value + "&";
		}
		params = params.substring(0,params.length-1);
		location.href="<%=rPath%>test/testDeleteOK.jsp" + params;
	}
</script>
</body>
</html>
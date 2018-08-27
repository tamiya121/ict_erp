<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/common.jsp" %>
<body>
<div id="wrapper">
<!-- 
	private String diCode;
	private String diName;
	private String diDesc;
	private PageInfo pi; -->
<jsp:include page="/WEB-INF/views/menu/left.jsp" />
	<div id="page-content-wrapper">
		<form action="" method="post">
		<table class="table table-bordered">
			<tr>
				<th>부서코드</th>
				<td><input type="text" name="diCode"></td>
			</tr>
			<tr>
				<th>부서이름</th>
				<td><input type="text" name="diName"></td>
			</tr>
			<tr>
				<th>부서설명</th>
				<td><input type="text" name="diDesc"></td>
			</tr>
			<tr>
				<td colspan="2"><button>부서등록</button></td>
			</tr>
		</table>
		</form>
	</div>
</div>
<jsp:include page="/WEB-INF/views/menu/bottom.jsp" />
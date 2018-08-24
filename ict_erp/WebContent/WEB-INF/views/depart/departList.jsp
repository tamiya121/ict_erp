<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/common.jsp" %>
<body>
<div id="wrapper">
<jsp:include page="/WEB-INF/views/menu/left.jsp" />
	<div id="page-content-wrapper">
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>번호</th>
					<th>부서코드</th>
					<th>부서명</th>
					<th>부서설명</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${diList}" var="di">
				<tr>
					<td>${di.diNum}</td>
					<td>${di.diCode}</td>
					<td>${di.diName}</td>
					<td>${di.diDesc}</td>
				</tr>
			</c:forEach>			
			</tbody>
		</table>
		<div class="page" style="text-align:center">
			<c:if test="${page.sBlock!=1}">
				[<a href="<%=rPath%>/depart/departList?page=${page.sBlock-page.blockSize}">pre</a>]
			</c:if>
			<c:forEach	begin="${page.sBlock}" end="${page.lBlock}" var="p">
				[<a href="<%=rPath%>/depart/departList?page=${p}">${p}</a>]
			</c:forEach>
			<c:if test="${page.lBlock!=page.totalPage}">
				[<a href="<%=rPath%>/depart/departList?page=${page.sBlock+page.blockSize}">next</a>]
			</c:if>
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/views/menu/bottom.jsp" />
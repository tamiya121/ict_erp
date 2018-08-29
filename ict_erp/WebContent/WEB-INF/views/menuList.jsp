<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/common.jsp" %>
<script>
var AjaxUtil = function(p){
	var method = p.method?p.method:'GET';
	var url = p.url?p.url:'/';
	var conType = p.conType?p.conType:'application/x-www-form-urlencoded';
	var data = p.data;
	var dataType = p.dataType?p.dataType:'text/html';
	var suc = p.suc?p.suc:sucF;
	var err = p.err?p.err:errF;
	
	function errF(res){
		alert(res);
	}
	function sucF(res){
		alert(res);
	}
	function callback(){
		if(req.readyState===req.DONE){
			if(req.status===200){
				suc(req.responseText);
			}else{
				err(req.responseText);
			}
		}
	}
	var req = new XMLHttpRequest();
	if(!req){
		alert('해당 브라우져는 XmlHttpRequest를 지원하지 않습니다.!');
		return;
	}

	req.onreadystatechange = callback.bind(this);
	req.open(method,url);
	this.send = function(){
		req.send();
	}
}
function callback(res){
	document.querySelector('#menuTbody').insertAdjacentHTML('afterBegin',res);
}
var obj = {url:'/menu/menuList',method:'get',suc:callback};
var au = new AjaxUtil(obj);
au.send();
</script>
<body>
<div id="wrapper">
<jsp:include page="/WEB-INF/views/menu/left.jsp" />
	<div id="page-content-wrapper">
		<div class="container">
			<table class="table table-border">
				<thead>
					<tr>
						<th>번호</th>
						<th>메뉴명</th>
						<th>메뉴가격</th>
						<th>설명</th>
					</tr>
				</thead>
				<tbody id='menuTbody'>
				</tbody>				
			</table>
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/views/menu/bottom.jsp" />
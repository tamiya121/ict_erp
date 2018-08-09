<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp"%>
<%
request.setCharacterEncoding("utf-8");
String miId = request.getParameter("miId");
String miPwd = request.getParameter("miPwd");
String miName = request.getParameter("miName");
String miEmail = request.getParameter("miEmail");
String miEtc = request.getParameter("miEtc");
String lvl = request.getParameter("lvl");
String msg = (String)request.getAttribute("msg");
if(msg!=null){
%>
<script>
	alert("<%=msg%>");
</script>
<%
}
%>
<style>
.login-form {
	width: 300px;
	margin: 0 auto;
}

select#lvl {
    width: 250px !important;
    float:right;
}
</style>
<body>
	<div class="container">
		<div class="row centered-form">
			<div
				class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							Please sign up
						</h3>
					</div>
					<div class="panel-body">
						<form role="form" action="<%=rPath%>views/user/signup_ok.jsp" method="post" onsubmit="return checkValue(this)">
							<div class="form-group">
								<input type="text" name="miId" id="miId"
									class="form-control input-sm" placeholder="Member ID">
							</div>
							<div class="row">
								<div class="col-xs-6 col-sm-6 col-md-6">
									<div class="form-group">
										<input type="password" name="miPwd" id="miPwd"
											class="form-control input-sm" placeholder="Password">
									</div>
								</div>
								<div class="col-xs-6 col-sm-6 col-md-6">
									<div class="form-group">
										<input type="password" name="password_confirmation"
											id="password_confirmation" class="form-control input-sm"
											placeholder="Confirm Password">
									</div>
								</div>
							</div>
							<div class="form-group">
								<input type="text" name="miName" id="miName"
									class="form-control input-sm" placeholder="Member Name">
							</div>
							<div class="form-group">
								<input type="email" name="miEmail" id="miEmail"
									class="form-control input-sm" placeholder="Email Address">
							</div>
							<div class="form-group">
								<input type="text" name="miEtc" id="miEtc"
									class="form-control input-sm" placeholder="비고란">
							</div>
							<div class="form-group">
								<label for="lvl">멤버 레벨 : </label>
								<select class="form-control" name="lvl" id="lvl">
									<option value="0">기본</option>
									<option value="1">게시관리자</option>
									<option value="2">중간관리자</option>
									<option value="3">관리자</option>
								</select>
							</div>
							<input type="submit" value="Register"
								class="btn btn-info btn-block">

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
<script>
function checkValue(fObj){
	var miName = fObj.miName.value.trim();
	var miId = fObj.miId.value.trim();
	var miPwd = fObj.miPwd.value.trim();
	var password_confirmation = fObj.password_confirmation.value.trim();
	
	if(miName.length<2){
		alert("이름은 2글자 이상입니다.");
		return false;
	}
	
	if(miId.length<4){
		alert("아이디는 4글자 이상입니다.");
		return false;
	}
	
	if(miPwd.length<4){
		alert("비밀번호는 4글자 이상입니다.")
		return false;
	}
	
	if(miPwd!=password_confirmation){
		alert("비밀번호와 비밀번호체크가 일치하지 않습니다.");
		return false;
	}
	return true;
}
</script>
</body>
</html>
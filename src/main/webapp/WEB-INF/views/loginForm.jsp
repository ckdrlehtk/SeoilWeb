<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/header.jsp"%>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>로그인페이지</title>
<script>
	$(document)
			.ready(
					function() {
						$("#btnLogin")
								.click(
										function() {
											var userId = $("#uid").val();
											var userPw = $("#pwd").val();
											if (userId == "") {
												alert("아이디를 입력하세요.");
												$("#uid").focus(); // 입력포커스 이동
												return; // 함수 종료
											}
											if (userPw == "") {
												alert("비밀번호를 입력하세요.");
												$("#pwd").focus();
												return;
											}
											document.form1.action = "${pageContext.request.contextPath}/user/loginCheck.do"
											document.form1.submit();
										});
					});
</script>
<style type="text/css">
.form-control {
	height: 50px;
}

.btn-sm {
	height: 50px;
}

.label2 {
	padding-top: 1%
}

body {
	background-image: url('/resources/images/SignWalls.jpg');
	background-repeat: no-repeat;
	background-size: cover;
}
</style>

</head>
<body>




	<div class="container">
		<div class="container" role="main" style="margin-top: 200px;">
			<div class="card">
				<div class="card-body">

					<form:form name="form1" id="form1" class="form-signup" role="form1"
						modelAttribute="userVO" method="post">

						<div class="form-group row">
							<div class="col-md-4"></div>
							<div class="col-md-4">
								<form:input path="uid" id="uid" class="form-control" name="uid"
									placeholder="아이디" />
							</div>
							<div class="col-md-4"></div>
						</div>

						<div class="form-group row">
							<div class="col-md-4"></div>
							<div class="col-md-4">
								<form:password path="pwd" id="pwd" class="form-control"
									placeholder="비밀번호" />
							</div>
							<div class="col-md-4"></div>
						</div>
						<div class="col-md-4"></div>
						<div class="col-md-6">
							<c:if test="${msg == 'failure'}">
								<div style="color: red">아이디 또는 비밀번호가 일치하지 않습니다.</div>
							</c:if>
						</div>


						<div class="col-md-5"></div>
						<button type="button" class="col-md-2 btn btn-sm btn-primary"
							id="btnLogin">로그인</button>
						<div class="col-md-5"></div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

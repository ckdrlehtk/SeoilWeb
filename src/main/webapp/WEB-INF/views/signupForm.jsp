<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/header.jsp"%>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(document).on('click', '#btnSignup', function(e) {
		
		var userId = $("#uid").val();
		var userPw = $("#pwd").val();
		var username = $("#name").val();
		var userphone = $("#phone").val();
		var useremail = $("#email").val();
		if (userId == "") {
			alert("아이디를 입력하세요.");
			$("#uid").focus();
			return; // 함수 종료
		}
		if (userPw == "") {
			alert("비밀번호를 입력하세요.");
			$("#pwd").focus();
			return;
		}
		if (username == "") {
			alert("이름을 입력하세요.");
			$("#name").focus();
			return;
		}
		if (userphone == "") {
			alert("핸드폰번호를 입력하세요.");
			$("#phone").focus();
			return;
		}
		if (useremail == "") {
			alert("이메일을 입력하세요.");
			$("#email").focus();
			return;
		}
		e.preventDefault();
		$("#form").submit();
	});
	$(document).on('click', '#btnIdcheck', function(e) {
		var userId = $("#uid").val();
		if (userId == "") {
			alert("아이디를 입력하세요.");
			$("#uid").focus(); // 입력포커스 이동
			return; // 함수 종료
		}
		document.form.action = "${pageContext.request.contextPath}/user/idCheck.do";
		document.form.method = "post";
		document.form.submit();

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
body{
background-image:url('/resources/images/SignWalls.jpg');
background-repeat:no-repeat;
background-size:cover;
}
</style>
<body>
	<div class="container">
		<div class="container" role="main" style="margin-top: 200px;">
			<div class="card">
				<div class="card-body">
					<form:form name="form" id="form" class="form-signup" role="form"
						modelAttribute="userVO" method="post"
						action="${pageContext.request.contextPath}/user/insertUser">
						<div class="form-group row">
							<label for="uid" class="col-md-3 label2"
								style="text-align: left; padding-left: 200px">아이디</label>
							<div class="col-md-5">
								<form:input path="uid" id="uid" class="form-control" name="uid"
									 placeholder="아이디을 입력해 주세요" />
								<c:if test="${msg2 == 'same'}">
									<div style="color: red">같은 아이디가 존재합니다.</div>
								</c:if>

								<c:if test="${msg2 == 'notsame'}">
									<script>
										var inputId = document
												.getElementById('uid');
										inputId.setAttribute('readonly','readonly');
									</script>
									<div style="color: blue">사용 가능한 아이디입니다.</div>
								</c:if>
							</div>


							<input onclick="checkid(this.form.uid.value)" type="button"
								class="btn btn-sm btn-primary" id="btnIdcheck" value="중복확인" style="width:100px" />
							<c:if test="${msg2 == 'notsame'}">
								<script>
									var button_idCheck = document
											.getElementById('btnIdcheck');
									button_idCheck.setAttribute('disabled',
											'disabled');
								</script>
							</c:if>

						</div>
						<div class="form-group row">
							<label for="name" class="col-md-3 label2"
								style="text-align: left; padding-left: 200px">이름</label>
							<div class="col-md-5">
								<form:input path="name" id="name" class="form-control"
									placeholder="이름을 입력해 주세요" />
							</div>
						</div>
						<div class="form-group row">
							<label for="pwd" class="col-md-3 label2"
								style="text-align: left; padding-left: 200px">비밀번호</label>
							<div class="col-md-5">
								<form:password path="pwd" id="pwd" class="form-control"
									placeholder="비밀번호를 입력해 주세요" />
							</div>
						</div>

						<div class="form-group row">
							<label for="area" class="col-md-3 label2"
								style="text-align: left; padding-left: 200px">사는지역</label>
							<div class="col-md-5">
								<form:select path="area" style="height:30px;margin-top:1%;color:black">
									<form:option value="경기" />
									<form:option value="경남" />
									<form:option value="광주" />
									<form:option value="대구" />
									<form:option value="대전" />
									<form:option value="부산" />
									<form:option value="서울" />
									<form:option value="인천" />
								</form:select>
							</div>
						</div>

						<div class="form-group row">
							<label for="email" class="col-md-3 label2"
								style="text-align: left; padding-left: 200px">이메일</label>
							<div class="col-md-5">
								<form:input path="email" id="email" class="form-control"
									placeholder="이메일을 입력해 주세요" />
							</div>
						</div>

						<div class="form-group row">
							<label for="phone" class="col-md-3 label2"
								style="text-align: left; padding-left: 200px">휴대폰번호</label>
							<div class="col-md-5">
								<form:input path="phone" id="phone" class="form-control"
									placeholder="휴대폰 번호를 입력해 주세요" />
							</div>
						</div>

						<div class="form-group row">
							<label for="phone" class="col-md-4 label2"
								style="text-align: left; padding-left: 200px">좋아하는 장르</label>
							<div class="input-group col-md-7" style="margin-top: 1%;">
								<form:checkbox path="real1" value="국악" label="국악" />
								<form:checkbox path="real2" value="무용" label="무용" />
								<form:checkbox path="real3" value="미술" label="미술" />
								<form:checkbox path="real4" value="연극" label="연극" />
								<form:checkbox path="real5" value="음악" label="음악" />
								<form:checkbox path="real6" value="기타" label="기타" />

							</div>
						</div>
						<div style="margin-top: 10px">
							<div class="col-md-2">
							<p></p>
							</div>
							
							<button type="button" class="col-md-7 btn btn-sm btn-primary"
								id="btnSignup" disabled>회원가입</button>
							<c:if test="${msg2 == 'notsame'}">
								<script>
									var button_join = document
											.getElementById('btnSignup');
									button_join.removeAttribute('disabled');
								</script>
							</c:if>
						</div>

					</form:form>

				</div>
			</div>

		</div>

	</div>
</body>

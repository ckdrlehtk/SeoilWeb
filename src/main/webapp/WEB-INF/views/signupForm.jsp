<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(document).on('click', '#btnSignup', function(e) {
		e.preventDefault();
		$("#form").submit();
	});
</script>
<article>
	<div class="container col-md-6" role="main">
		<div class="card">
			<div class="card-header">Register</div>
			<div class="card-body">
				<form:form name="form" id="form" class="form-signup" role="form"
					modelAttribute="userVO" method="post"
					action="${pageContext.request.contextPath}/user/insertUser">
					<div class="form-group row">
						<label for="uid" class="col-md-3 col-form-label text-md-right">아이디</label>
						<div class="col-md-5">
							<form:input path="uid" id="uid" class="form-control"
								placeholder="아이디을 입력해 주세요" />
						</div>
					</div>
					<div class="form-group row">
						<label for="name" class="col-md-3 col-form-label text-md-right">이름</label>
						<div class="col-md-5">
							<form:input path="name" id="name" class="form-control"
								placeholder="이름을 입력해 주세요" />
						</div>
					</div>
					<div class="form-group row">
						<label for="pwd" class="col-md-3 col-form-label text-md-right">비밀번호</label>
						<div class="col-md-5">
							<form:password path="pwd" id="pwd" class="form-control"
								placeholder="비밀번호를 입력해 주세요" />
						</div>
					</div>

					<div class="form-group row">
						<label for="area" class="col-md-3 col-form-label text-md-right">사는지역</label>
						<div class="col-md-5">
							<form:select path="area">
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
						<label for="email" class="col-md-3 col-form-label text-md-right">이메일</label>
						<div class="input-group col-md-7">
							<form:input path="email" id="email" class="form-control"
								placeholder="이메일을 입력해 주세요" />
						</div>
					</div>

					<div class="form-group row">
						<label for="phone" class="col-md-3 col-form-label text-md-right">핸드폰번호</label>
						<div class="input-group col-md-7">
							<form:input path="phone" id="phone" class="form-control"
								placeholder="핸드폰 입력해 주세요" />
						</div>
					</div>
					
						<div class="form-group row">
						<label for="phone" class="col-md-3 col-form-label text-md-right">좋아하는 장르</label>
						<div class="input-group col-md-7">
							 <form:checkbox path="real1" value="국악" label="국악"/>                    
     					     <form:checkbox path="real2" value="무용" label="무용"/>
     						 <form:checkbox path="real3" value="미술" label="미술"/>
							<form:checkbox path="real4" value="연극" label="연극"/>
							<form:checkbox path="real5" value="음악" label="음악"/>
							<form:checkbox path="real6" value="기타" label="기타"/>

						</div>
					</div>
					
					
				</form:form>
			</div>
		</div>
		<div style="margin-top: 10px">
			<button type="button" class="btn btn-sm btn-primary" id="btnSignup">회원가입</button>
			<button type="button" class="btn btn-sm btn-primary" id="btnCancel">취소</button>
		</div>
	</div>
</article>


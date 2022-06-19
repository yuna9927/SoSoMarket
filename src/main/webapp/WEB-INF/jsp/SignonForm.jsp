<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ include file="IncludeMypageHeader.jsp"%>
<div class="content">
	<div class="container-fluid pb-5">
		<div class="row justify-content-md-center">
			<div class="card-wrapper col-12 col-md-4 mt-5">
				<div class="brand text-center mb-3">
					<a href="<c:url value="/user/index.do"/>"><img src="../img/logo.png"></a>
				</div>
				<div class="card">
					<div class="card-body">
						<h4 class="card-title">로그인</h4>
						 <form action='<c:url value="/main/signon.do"/>' method="POST">
							<div class="form-group">
								<label for="accountId">아이디</label>
								<input type="text" class="form-control" name="accountId" required=""
									autofocus="">
							</div>

							<div class="form-group">
								<label for="password">비밀번호 </label> <input id="password"
									type="password" class="form-control" name="password"
									required="">
							</div>

							<div class="form-group no-margin">
								<button type="submit" class="btn btn-primary btn-block">로그인</button>
							</div>
							<div class="text-center mt-3 small">
								계정이 없으신가요? <a href="<c:url value="/main/signonForm.do"/>">회원가입</a>
							</div>
						</form>
					</div>
				</div>

	</div>

</div>
<%@ include file="IncludeMypageFooter.jsp"%>
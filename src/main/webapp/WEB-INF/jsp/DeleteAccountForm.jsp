<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ include file="IncludeMypageHeader.jsp"%>
<div class="content">
	<div class="py-4 px-3 px-md-4">
		<div class="card mb-3 mb-md-4">
			<div class="card-body">

				<!-- Breadcrumb -->
				<nav class="d-none d-md-block" aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">사용자</a></li>
						<li class="breadcrumb-item active" aria-current="page">회원 탈퇴</li>
					</ol>
				</nav>
				<!-- End Breadcrumb -->

				<div class="mb-3 mb-md-4 d-flex justify-content-between">
					<div class="h3 mb-0">회원 탈퇴</div>
				</div>

				<p style="font-size: small;">현재 비밀번호를 재입력하시면 정상적으로 탈퇴할 수 있습니다.</p>
				<p style="color: red;">회원 탈퇴 시 현재 계정의 정보가 사라지며, 작업을 되돌릴 수 없습니다.</p>



				<!-- form -->
				<div>
					<form:form modelAttribute="accountForm" method="post">
						<form:errors cssClass="error" />

						<div class="form-row">
							<div class="form-group col-12 col-md-6">
								<font size="4"><b>사용자 정보: <c:out
											value="${userSession.account.accountId}" /></b></font>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-12 col-md-6">
								<label for="password">비밀번호</label>
								<form:password path="account.password" class="form-control"
									placeholder="비밀번호 확인" />
								<B><form:errors path="account.password" cssClass="error" /></B>
							</div>
						</div>
						<button type="submit" class="btn btn-primary float-right">회원
							탈퇴</button>
					</form:form>
				</div>
				<!-- End Form -->
			</div>
		</div>
	</div>
	<%@ include file="IncludeMypageFooter.jsp"%>
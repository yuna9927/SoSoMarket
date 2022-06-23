<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ include file="IncludeMypageHeader.jsp"%>
<div class="content">
	<div class="py-4 px-3 px-md-4">
		<c:if test="${accountForm.newAccount}">
			<div class="brand text-center mb-3">
				<a href="<c:url value="/user/index.do"/>"><img src="../img/logo.png"></a>
			</div>
		</c:if>
		<div class="card mb-3 mb-md-4">
			<div class="card-body">
				<c:if test="${!accountForm.newAccount}">
					<!-- Breadcrumb -->
					<nav class="d-none d-md-block" aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#">사용자</a></li>
							<li class="breadcrumb-item active" aria-current="page">사용자 정보 수정</li>
						</ol>
					</nav>
					<!-- End Breadcrumb -->

					<div class="mb-3 mb-md-4 d-flex justify-content-between">
						<div class="h3 mb-0">사용자 정보 수정</div>
					</div>
				</c:if>
				<c:if test="${accountForm.newAccount}">
					<h4 class="card-title">소소마켓에 오신 걸 환영합니다!</h4>
				</c:if>

				<!-- form -->
				<div>
					<form:form modelAttribute="accountForm" method="post">
						<form:errors cssClass="error" />
						

						<div class="form-row">
							<div class="form-group col-12 col-md-6">
								<label for="id">아이디: </label>
								<c:if test="${!accountForm.newAccount}">
					              <b><c:out value="${accountForm.account.accountId}" /></b>
					            </c:if>
								<c:if test="${accountForm.newAccount}">
								<form:input type="text"
									class="form-control" value="" id="id" name="id"
									placeholder="아이디 입력" path="account.accountId" htmlEscape="false" />
			              			<B><form:errors path="account.accountId" cssClass="error" /></B>
			              		</c:if>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-12 col-md-6">
								<label for="password">비밀번호(*6글자 이상)</label>
								<form:password path="account.password" class="form-control" placeholder="최소 6글자 이상 입력해야 합니다." /> 
              						<B><form:errors path="account.password" cssClass="error" /></B>
							</div>
							<div class="form-group col-12 col-md-6">
								<label for="password_confirm">비밀번호 확인</label>
								<form:password path="repeatedPassword" class="form-control" placeholder="비밀번호 확인" /> 
              						<B><form:errors path="repeatedPassword" cssClass="error" /></B>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-12 col-md-6">
								<label for="nickName">닉네임</label>
								<form:input path="account.nickname" class="form-control" placeholder="사용자 닉네임" htmlEscape="false" /> 
              						<B><form:errors path="account.nickname" cssClass="error" /></B>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-12 col-md-6">
								<label for="email">이메일</label>
								<form:input path="account.email" class="form-control" placeholder="이메일 (ex. dongduk@gmail.com)" htmlEscape="false" /> 
              						<B><form:errors path="account.email" cssClass="error" /></B>
							</div>
							<div class="form-group col-12 col-md-6">
								<label for="phone">전화번호</label> 
								<form:input path="account.phoneNumber" class="form-control" placeholder="핸드폰 번호 (010-XXXX-XXXX)" htmlEscape="false" /> 
              						<B><form:errors path="account.phoneNumber" cssClass="error" /></B>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-12 col-md-6">
								<label for="address">주소</label>
								<form:input path="account.address" class="form-control" placeholder="주소 (배송지로 이용됩니다)" htmlEscape="false" /> 
              						<B><form:errors path="account.address" cssClass="error" /></B>
							</div>
							<div class="form-group col-12 col-md-6">
								<label for="zipcode">우편번호</label>
								<form:input path="account.zipcode" class="form-control" placeholder="5자리를 입력해야 합니다." htmlEscape="false" /> 
              						<B><form:errors path="account.zipcode" cssClass="error" /></B>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-12 col-md-6">
								<label for="bank_name">은행명</label>
								<form:input path="account.bankName" class="form-control" placeholder="은행명 (결제시 이용됩니다)" htmlEscape="false" /> 
              						<B><form:errors path="account.bankName" cssClass="error" /></B>
							</div>
							<div class="form-group col-12 col-md-6">
								<label for="bank_number">계좌번호</label>
								<form:input path="account.bankNumber" class="form-control" placeholder="계좌번호(결제시 이용됩니다)" htmlEscape="false" /> 
              						<B><form:errors path="account.bankNumber" cssClass="error" /></B>
							</div>
						</div>
						<c:if test="${!accountForm.newAccount}">
							<button type="submit" class="btn btn-primary float-right">Edit</button>
						</c:if>
						<c:if test="${accountForm.newAccount}">
							<div class="form-group no-margin">
							<button type="submit" class="btn btn-primary btn-block">회원가입</button>
							</div>
						</c:if>
					</form:form>
				</div>
				<!-- End Form -->
			</div>
		</div>
	</div>
	<%@ include file="IncludeMypageFooter.jsp"%>
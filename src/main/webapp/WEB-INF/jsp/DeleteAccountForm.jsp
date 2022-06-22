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
					<form action="<c:url value="/user/deleteUser.do"/>" method="post">
						<div class="input-group mb-2">
							<input type="password" class="form-control"
								name="password" placeholder="현재 비밀번호를 다시 입력해주세요.">
							<button type="submit" class="btn btn-primary float-right">회원탈퇴</button>
						</div>
					</form>

				</div>
				<!-- End Form -->
			</div>
		</div>
	</div>
	<%@ include file="IncludeMypageFooter.jsp"%>
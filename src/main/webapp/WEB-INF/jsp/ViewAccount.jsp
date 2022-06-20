<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ include file="IncludeMypageHeader.jsp"%>
<div class="content">
	<div class="py-4 px-3 px-md-4">
		<div class="card mb-3 mb-md-4">

			<div class="card-body">
				<!-- Breadcrumb -->
				<nav class="d-none d-md-block" aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">사용자</a></li>
						<li class="breadcrumb-item active" aria-current="page">프로필</li>
					</ol>
				</nav>
				<!-- End Breadcrumb -->

				<div class="mb-3 mb-md-4 d-flex justify-content-between">
					<div class="h3 mb-0">프로필</div>
				</div>
				
				<!-- Info -->
				<div>
					<table style="width:30%">
						<tr>
							<td colspan="2"><font size="4"><b>신용도</b></font></td>
						</tr>
						<tr>
							<td>철회 횟수:</td>
							<td><c:out value="${account.withdraw}" /></td>
						</tr>
						<tr><td> &nbsp;</td></tr>
						<tr>
							<td colspan="2"><font size="4"><b>사용자 정보</b></font></td>
						</tr>
						<tr>
							<td>사용자 ID:</td>
							<td><c:out value="${account.accountId}" /></td>
						</tr>
						<tr>
							<td>닉네임</td>
							<td><c:out value="${account.nickname}" /></td>
						</tr>
						<tr>
							<td>가입날짜:</td>
							<td><fmt:formatDate value="${account.joinDate}"
									pattern="yyyy/MM/dd hh:mm:ss" /></td>
						</tr>
						<tr>
							<td>전화번호:</td>
							<td><c:out value="${account.phoneNumber}" /></td>
						</tr>
						<tr>
							<td>이메일:</td>
							<td><c:out value="${account.email}" /></td>
						</tr>
						<tr><td> &nbsp;</td></tr>
						<tr>
							<td colspan="2"><font size="4"><b>계좌 정보</b></font></td>
						</tr>
						<tr>
							<td>은행:</td>
							<td><c:out value="${account.bankName}" /></td>
						</tr>
						<tr>
							<td>계좌번호:</td>
							<td><c:out value="${account.bankNumber}" /></td>
						</tr>
						<tr><td> &nbsp;</td></tr>
						<tr>
							<td colspan="2"><font size="4"><b>배송 정보</b></font></td>
						</tr>
						<tr>
							<td>배송지:</td>
							<td><c:out value="${account.address}" /></td>
						</tr>
						<tr>
							<td>우편번호:</td>
							<td><c:out value="${account.zipcode}" /></td>
						</tr>

					</table>
				</div>
				<!-- End Info -->
			</div>
		</div>

	</div>
	<%@ include file="IncludeMypageFooter.jsp"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>SoSo Market</title>
    <meta http-equiv="Content-Type" content="text/html; utf-8" />
    <meta http-equiv="Cache-Control" content="max-age=0">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="Pragma" content="no-cache">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <!-- Favicon -->
    <link rel="shortcut icon" href="../img/favicon.ico">

    <!-- Template -->
    <link rel="stylesheet" href="../css/graindashboard.css">
</head>
<main class="main">
	<div class="content">
		<div class="container-fluid pb-5">
			<div class="row justify-content-md-center">
				<div class="card-wrapper col-12 col-md-4 mt-5">
					<div class="brand text-center mb-3">
						<a href="<c:url value="/user/index.do"/>"><img
							src="../img/logo.png"></a>
					</div>
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">로그인</h4>
							<form action='<c:url value="/main/signon.do"/>' method="POST">
								<div class="form-group">
									<label for="accountId">아이디</label> <input type="text"
										class="form-control" name="accountId" required="" autofocus="">
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
									계정이 없으신가요? <a href='<c:url value="/user/newAccount.do"/>'>회원가입</a>
								</div>
							</form>
						</div>
					</div>

				</div>

			</div>
			</div>
		</div>
</main>

<script src="public/graindashboard/js/graindashboard.js"></script>
<script src="public/graindashboard/js/graindashboard.vendor.js"></script>
</body>
</html>
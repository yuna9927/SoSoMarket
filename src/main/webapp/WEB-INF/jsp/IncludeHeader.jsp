<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<title>SoSoMarket</title>
	<meta http-equiv="Content-Type" content="text/html; utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="shortcut icon" type="image/x-icon" href="../img/favicon.ico">
	
	<link rel="stylesheet" href="../css/bootstrap.min.css">
	<link rel="stylesheet" href="../css/templatemo.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="../css/font-awesome.min.css">
</head>

<body>
	<!-- Start Top Nav -->
	<nav
		class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block"
		id="templatemo_nav_top">
		<div class="container text-light">
			<div class="w-100 d-flex justify-content-between">
				<div>
					<i class="fa fa-envelope mx-2"></i> <a
						class="navbar-sm-brand text-light text-decoration-none">20190978@dongduk.ac.kr</a>
						<i class="fa fa-phone mx-2"></i> <a
						class="navbar-sm-brand text-light text-decoration-none">02-940-4000</a>
				</div>
				<div>
					<a class="text-light" href="https://www.dongduk.ac.kr/kor/main.do" target="_blank">
					<i class="fa fa-map-marker fa-sm fa-fw me-2"></i></a>
					<a class="text-light" href="https://github.com/20190942/SoSoMarket" target="_blank"><i class="fa fa-github fa-sm fa-fw me-2"></i></a>
				</div>
			</div>
		</div>
	</nav>
	<!-- Close Top Nav -->


	<!-- Header -->
	<nav class="navbar navbar-expand-lg navbar-light shadow">
		<div
			class="container d-flex justify-content-between align-items-center">

			<a class="navbar-brand text-success logo h1 align-self-center"
				href="<c:url value="/user/index.do"/>"> <img src="../img/logo.png">
			</a>

			<button class="navbar-toggler border-0" type="button"
				data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div
				class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
				<div class="flex-fill">
                    <ul class="nav navbar-nav d-flex">
                    	<c:if test="${empty userSession.account}">
                    		<li class="nav-item">
	                            <a class="nav-link" href="<c:url value="/main/signonForm.do"/>">일반상품 등록</a>
	                        </li>
	                    	<li class="nav-item">
	                            <a class="nav-link" href="<c:url value="/main/signonForm.do"/>">경매상품 등록</a>
	                        </li>
	                        
						</c:if>
						<c:if test="${!empty userSession.account}">
	                        
	                        <li class="nav-item">
	                            <a class="nav-link" href="<c:url value="/shop/newProductForm.do"/>">일반상품 등록</a>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" href="<c:url value="/shop/newAuctionForm.do"/>">경매상품 등록</a>
	                        </li>
                        </c:if>
                        <li class="nav-item">
                            <a class="nav-link" href="<c:url value="/shop/viewProductList.do"/>">상품 목록</a>
                        </li>
                    </ul>
                </div>
				<div class="navbar align-self-center d-flex">
					<div
						class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
						<div class="input-group">
							<input type="text" class="form-control" id="inputMobileSearch"
								placeholder="검색어를 입력해주세요 ...">
							<div class="input-group-text">
								<i class="fa fa-search"></i>
							</div>
						</div>
					</div>
					<a class="nav-icon d-none d-lg-inline" href="#"
						data-bs-toggle="modal" data-bs-target="#templatemo_search"> <i
						class="fa fa-search text-dark mr-2"></i>
					</a>
					<c:if test="${empty userSession.account}">
						<a class="nav-icon position-relative text-decoration-none"
							href="<c:url value="/main/signonForm.do"/>">
							로그인</i>
						</a>
					</c:if>
					<c:if test="${!empty userSession.account}">
						<a class="nav-icon position-relative text-decoration-none"
							href="<c:url value="/main/signoff.do"/>"> 로그아웃
						</a>
						<a class="nav-icon position-relative text-decoration-none"
							href="<c:url value="/user/viewAccount.do"/>"> <i class="fa fa-fw fa-user text-dark mr-3"></i>
						</a>
					</c:if>
				</div>
			</div>

		</div>
	</nav>
	<!-- Close Header -->

	<!-- Modal -->
	<div class="modal fade bg-white" id="templatemo_search" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="w-100 pt-1 mb-5 text-right">
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<form action="<c:url value="/shop/searchProducts.do"/>" method="post"
				class="modal-content modal-body border-0 p-0" id="myForm">
				<div class="input-group mb-2">
					<input type="hidden" name="search" value="true" />
					<select name="type" form="myForm">
					    <option value="product">일반 상품</option>
					    <option value="auction">경매 상품</option>
					</select>
					<p>&nbsp;</p>
					<input type="text" class="form-control" id="inputModalSearch"
						name="keyword" placeholder="검색어를 입력해주세요 ...">
					<button type="submit"
						class="input-group-text bg-success text-light">
						<i class="fa fa-search text-white"></i>
					</button>
				</div>
			</form>
		</div>
	</div>
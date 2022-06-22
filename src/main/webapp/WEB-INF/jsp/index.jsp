<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ include file="IncludeHeader.jsp"%>

<!-- Start Banner Hero -->
<div id="template-mo-zay-hero-carousel" class="carousel slide"
	data-bs-ride="carousel">
	<ol class="carousel-indicators">
		<li data-bs-target="#template-mo-zay-hero-carousel"
			data-bs-slide-to="0" class="active"></li>
		<li data-bs-target="#template-mo-zay-hero-carousel"
			data-bs-slide-to="1"></li>
	</ol>
	<div class="carousel-inner">
		<div class="carousel-item active">
			<div class="container">
				<div class="row p-5">
					<div class="mx-auto col-md-8 col-lg-6 order-lg-last">
						<img class="img-fluid" src="../img/goods_img_02.jpg" alt="">
					</div>
					<div class="col-lg-6 mb-0 d-flex align-items-center">
						<div class="text-align-left align-self-center">
							<h1 class="h1 text-success">
								<b>소소마켓</b>
							</h1>
							<h3 class="h2">안전한 상품 거래 플랫폼</h3>
							<p>
								소소마켓은 안전한 상품 거래를 지원합니다. 소소한 상품들을 등록해 거래해보세요. 아주 귀여운 것들이 많습니다.
								상품 가격이 고민된다면 경매 상품으로 등록해보세요. 마지막 입찰가로 낙찰됩니다.
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="carousel-item">
			<div class="container">
				<div class="row p-5">
					<div class="mx-auto col-md-8 col-lg-6 order-lg-last">
						<img class="img-fluid" src="../img/goods_img_01.jpg" alt="">
					</div>
					<div class="col-lg-6 mb-0 d-flex align-items-center">
						<div class="text-align-left">
							<h1 class="h1"><b>팀 노에러</b></h1>
							<h3 class="h2">동덕여대 소프트웨어시스템개발</h3>
							<p>
								팀 노에러는 김경원, 고지수, 오윤아, 이지윤으로 이루어진 팀입니다.
								이 웹페이지를 만든 사람들입니다. 아주 그냥 열심히 했습니다요. 오류가 난다고요? 그럴 리가 없는데...
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<a class="carousel-control-prev text-decoration-none w-auto ps-3"
		href="#template-mo-zay-hero-carousel" role="button"
		data-bs-slide="prev"> <i class="fa fa-chevron-left"></i>
	</a> <a class="carousel-control-next text-decoration-none w-auto pe-3"
		href="#template-mo-zay-hero-carousel" role="button"
		data-bs-slide="next"> <i class="fa fa-chevron-right"></i>
	</a>
</div>
<!-- End Banner Hero -->


<!-- Start Categories of The Month -->
<section class="container py-5">
	<div class="row text-center pt-3">
		<div class="col-lg-6 m-auto">
			<h1 class="h1">상품 타입</h1>
			<p>소소마켓은 경매 상품과 일반 상품으로 나뉘어져 있습니다.</p>
		</div>
	</div>
	<div class="row justify-content-md-center">
		<div class="col-12 col-md-4 p-5 mt-3">
			<a href="<c:url value="/shop/viewAuctionList.do"/>"><img
				src="../img/category_auction.jpg"
				class="rounded-circle img-fluid border"></a>
			<h5 class="text-center mt-3 mb-3">경매 상품</h5>
			<p class="text-center">
				<a href="<c:url value="/shop/viewAuctionList.do"/>" class="btn btn-success">확인하기</a>
			</p>
		</div>
		<div class="col-12 col-md-4 p-5 mt-3">
			<a href="<c:url value="/shop/viewProductList.do"/>"><img
				src="../img/category_product.jpg"
				class="rounded-circle img-fluid border"></a>
			<h2 class="h5 text-center mt-3 mb-3">일반 상품</h2>
			<p class="text-center">
				<a href="<c:url value="/shop/viewProductList.do"/>" class="btn btn-success">확인하기</a>
			</p>
		</div>
	</div>
</section>
<!-- End Categories of The Month -->


<%@ include file="IncludeFooter.jsp"%>

<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>


<!-- Start Footer -->
<footer class="bg-dark" id="tempaltemo_footer">
	<div class="container">
		<div class="row">

			<div class="col-md-4 pt-5">
				<h2 class="h2 text-success border-bottom pb-3 border-light logo">소소마켓</h2>
				<ul class="list-unstyled text-light footer-link-list">
					<li><i class="fa fa-phone fa-fw"></i> <a
						class="text-decoration-none">02-940-4000</a>
					</li>
					<li><i class="fa fa-envelope fa-fw"></i> <a
						class="text-decoration-none" >20190978@dongduk.ac.kr</a>
					</li>
				</ul>
			</div>

			<div class="col-md-4 pt-5">
				<h2 class="h2 text-light border-bottom pb-3 border-light">상품</h2>
				<ul class="list-unstyled text-light footer-link-list">
					<li><a href="<c:url value="/shop/viewProductList.do"/>" class="text-decoration-none">일반상품</a></li>
					<li><a class="text-decoration-none"
						href="<c:url value="/shop/viewAuctionList.do"/>">경매상품</a></li>
				</ul>
			</div>

			<div class="col-md-4 pt-5">
				<h2 class="h2 text-light border-bottom pb-3 border-light">상품 등록
				</h2>
				<ul class="list-unstyled text-light footer-link-list">
				<c:if test="${empty userSession.account}">
					<li><a class="text-decoration-none"
						href="<c:url value="/main/signonForm.do"/>">일반상품 등록</a></li>
					<li><a class="text-decoration-none"
						href="<c:url value="/main/signonForm.do"/>">경매상품 등록</a></li>
				</c:if>
				<c:if test="${!empty userSession.account}">
					<li><a class="text-decoration-none"
						href="<c:url value="/shop/newProductForm.do"/>">일반상품 등록</a></li>
					<li><a class="text-decoration-none"
						href="<c:url value="/shop/newAuctionForm.do"/>">경매상품 등록</a></li>
				</c:if>
				</ul>
			</div>


		</div>

		<div class="row text-light mb-4">
			<div class="col-12 mb-3">
				<div class="w-100 my-3 border-top border-light"></div>
			</div>
			<div class="col-auto me-auto"></div>
			<div class="col-auto">
				<ul class="list-inline text-left footer-icons">
					<li class="list-inline-item border border-light rounded-circle text-center">
						<a class="text-light text-decoration-none" target="_blank"
							href="https://www.dongduk.ac.kr/kor/main.do"><i class="fa fa-map-marker fa-lg fa-fw"></i></a>
					</li>
					<li class="list-inline-item border border-light rounded-circle text-center">
						
						<a class="text-light text-decoration-none" target="_blank"
						href="https://github.com/20190942/SoSoMarket"><i class="fa fa-github fa-lg fa-fw"></i></a>
					</li>
				
				</ul>
			</div>
		</div>
	</div>

	<div class="w-100 bg-black py-3">
		<div class="container">
			<div class="row pt-2">
				<div class="col-12">
					<p class="text-left text-light">
						Copyright &copy; Team NoError | Designed by <a
							rel="sponsored" href="https://templatemo.com" target="_blank">TemplateMo</a>
					</p>
				</div>
			</div>
		</div>
	</div>

</footer>
<!-- End Footer -->

<!-- Start Script -->
<script src="../js/jquery-1.11.0.min.js"></script>
<script src="../js/jquery-migrate-1.2.1.min.js"></script>
<script src="../js/bootstrap.bundle.min.js"></script>
<script src="../js/templatemo.js"></script>
<!-- End Script -->
</body>

</html>
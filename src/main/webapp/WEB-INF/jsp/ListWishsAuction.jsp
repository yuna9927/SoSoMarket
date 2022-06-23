<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ include file="IncludeMypageHeader.jsp"%>
<div class="content">
	<div class="py-4 px-3 px-md-4">
		<div class="card mb-3 mb-md-4">

			<div class="card-body">
				<!-- Breadcrumb -->
				<nav class="d-none d-md-block" aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">계정</a></li>
						<li class="breadcrumb-item"><a href="<c:url value="/user/viewWishList.do"/>">위시리스트</a></li>
						<li class="breadcrumb-item active" aria-current="page">경매상품</li>
					</ol>
				</nav>
				<!-- End Breadcrumb -->

				<div class="mb-3 mb-md-4 d-flex justify-content-between">
					<div class="h3 mb-0">경매상품 위시리스트</div>
				</div>
				<p style="font-size: small;">경매상품의 ♡를 클릭 시 위시리스트에 저장됩니다.</p>


				<!-- Wish List -->
				<div class="table-responsive-xl">
					<table class="table text-nowrap mb-0">
						<thead>
							<tr>
								<th class="font-weight-semi-bold border-top-0 py-2">상품 이름</th>
								<th class="font-weight-semi-bold border-top-0 py-2">상품상태</th>
								<th class="font-weight-semi-bold border-top-0 py-2">삭제</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="wish" items="${wishList.pageList}">
								<tr>
									<td class="align-middle py-3">
										<div class="d-flex align-items-center">
											<a href='<c:url value="/shop/viewAuction.do">
             						 		<c:param name="productId" value="${wish.productId}"/></c:url>'>
												<c:out value="${wish.product.title}" />
											</a>
										</div>
									</td>
									<td class="py-3">
										<c:if test="${wish.product.productStatus eq 'sale'}">
											<span class="badge badge-pill badge-success">판매중</span>
										</c:if> <c:if test="${wish.product.productStatus eq 'done'}">
											<span class="badge badge-pill badge-secondary">판매완료</span>
										</c:if></td>
									<td class="py-3">
										<div class="position-relative">
											<a class="link-dark d-inline-block" href='<c:url value="/user/deleteWish.do">
             						 		<c:param name="wishId" value="${wish.wishId}"/></c:url>'>
											<i class="gd-trash icon-text"></i>
											</a>
										</div>
									</td>
								</tr>

							</c:forEach>
						</tbody>
					</table>
					<div
						class="card-footer d-block d-md-flex align-items-center d-print-none">
						<nav class="d-flex ml-md-auto d-print-none"
							aria-label="Pagination">
							<ul
								class="pagination justify-content-end font-weight-semi-bold mb-0">
								<c:if test="${!wishList.firstPage}">
									<li class="page-item">
									<a id="datatablePaginationPrev"
										class="page-link" href='<c:url value="/user/viewAuctionWishList2.do">
            <c:param name="page" value="previous"/></c:url>' aria-label="Previous"><i
											class="gd-angle-left icon-text icon-text-xs d-inline-block"></i></a>
									</li>
								</c:if>
								<c:if test="${!wishList.lastPage}">
									<li class="page-item"><a id="datatablePaginationNext"
										class="page-link" href='<c:url value="/user/viewAuctionWishList2.do">
            <c:param name="page" value="next"/></c:url>' aria-label="Next"><i
											class="gd-angle-right icon-text icon-text-xs d-inline-block"></i></a>
									</li>
								</c:if>
							</ul>
						</nav>
					</div>
				</div>
				<!-- End Biddings -->
			</div>
		</div>


	</div>
	<%@ include file="IncludeMypageFooter.jsp"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ include file="IncludeMypageHeader.jsp"%>
<div class="content">
	<div class="py-4 px-3 px-md-4">
		<div class="card mb-3 mb-md-4">

			<div class="card-body">
				<!-- Breadcrumb -->
				<nav class="d-none d-md-block" aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">구매</a></li>
						<li class="breadcrumb-item active" aria-current="page">입찰 목록</li>
					</ol>
				</nav>
				<!-- End Breadcrumb -->

				<div class="mb-3 mb-md-4 d-flex justify-content-between">
					<div class="h3 mb-0">입찰 목록</div>
				</div>
				<p style="font-size:small;">'주문하기' 버튼은 입찰한 상품 중 자신에게 낙찰된 상품일 때만 나타납니다.
					버튼 클릭 시 주문 폼으로 넘어갑니다. </p>


				<!-- Bidding List -->
				<div class="table-responsive-xl">
					<table class="table text-nowrap mb-0">
						<thead>
							<tr>
								<th class="font-weight-semi-bold border-top-0 py-2">상품 이름</th>
								<th class="font-weight-semi-bold border-top-0 py-2">날짜</th>
								<th class="font-weight-semi-bold border-top-0 py-2">입찰가</th>
								<th class="font-weight-semi-bold border-top-0 py-2">상품상태</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="bidding" items="${biddingList.pageList}">
								<tr>
									<td class="align-middle py-3">
										<div class="d-flex align-items-center">
											<a href='<c:url value="/shop/viewAuction.do">
             						 		<c:param name="productId" value="${bidding.productId}"/></c:url>'>
             						 		<c:out value="${bidding.product.title}" />
											</a>
										</div>
									</td>
									<td class="py-3"><fmt:formatDate value="${bidding.updateDate}"
            								pattern="yyyy/MM/dd hh:mm:ss" /></td>
									<td class="py-3"><fmt:formatNumber value="${bidding.biddingPrice}"
            								pattern="$#,##0.00" /></td>
									<td class="py-3">
									<c:if test="${bidding.product.productStatus eq 'sale'}">
										<span class="badge badge-pill badge-success">판매중</span>
									</c:if>
									<c:if test="${bidding.product.productStatus eq 'done'}">
										<span class="badge badge-pill badge-secondary">판매완료</span>
									</c:if>
									</td>
								</tr>
								
							</c:forEach>
						</tbody>
					</table>
					<div class="card-footer d-block d-md-flex align-items-center d-print-none">
						<nav class="d-flex ml-md-auto d-print-none"
							aria-label="Pagination">				        
							<ul class="pagination justify-content-end font-weight-semi-bold mb-0">
								<c:if test="${!biddingList.firstPage}">
									<li class="page-item"><a id="datatablePaginationPrev"
										class="page-link" href='<c:url value="/shop/viewMyBiddingList2.do">
            						<c:param name="page" value="previous"/></c:url>' aria-label="Previous"><i
											class="gd-angle-left icon-text icon-text-xs d-inline-block"></i></a>
									</li>
								</c:if>
								<c:if test="${!biddingList.lastPage}">
									<li class="page-item"><a id="datatablePaginationNext"
										class="page-link" href='<c:url value="/shop/viewMyBiddingList2.do">
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
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
						<li class="breadcrumb-item active" aria-current="page">주문 목록</li>
					</ol>
				</nav>
				<!-- End Breadcrumb -->

				<div class="mb-3 mb-md-4 d-flex justify-content-between">
					<div class="h3 mb-0">주문 목록</div>
				</div>
				<p style="font-size: small;">주문한 상품 목록이 경매 상품, 일반 상품에 상관없이
					출력됩니다.</p>


				<!-- Order List -->
				<div class="table-responsive-xl">
					<table class="table text-nowrap mb-0">
						<thead>
							<tr>
								<th class="font-weight-semi-bold border-top-0 py-2">상품 이름</th>
								<th class="font-weight-semi-bold border-top-0 py-2">날짜</th>
								<th class="font-weight-semi-bold border-top-0 py-2">주문 상태</th>
								<th class="font-weight-semi-bold border-top-0 py-2">종류</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="order" items="${buyOrderList.pageList}">
								<tr>
									<td class="align-middle py-3">
										<div class="d-flex align-items-center">
											<a
												href='<c:url value="/user/viewBuyerOrder.do">
             						 		<c:param name="orderId" value="${order.orderId}"/></c:url>'>
												<c:out value="${order.product.title}" />
											</a>
										</div>
									</td>
									<td class="py-3"><fmt:formatDate
											value="${order.orderDate}" pattern="yyyy/MM/dd hh:mm:ss" /></td>
									<td class="py-3"><c:if
											test="${order.orderStatus eq 'waiting'}">
											<span class="badge badge-pill badge-danger">주문확인중</span>
										</c:if> <c:if test="${order.orderStatus eq 'check'}">
											<span class="badge badge-pill badge-warning">배송준비중</span>
										</c:if> <c:if test="${order.orderStatus eq 'start'}">
											<span class="badge badge-pill badge-success">배송중</span>
										</c:if></td>
									<td class="py-3">
										<div class="d-flex align-items-center">
											<c:if test="${order.product.productType eq 'product'}">
											일반상품
										</c:if>
											<c:if test="${order.product.productType eq 'auction'}">
											경매상품
										</c:if>
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
							<ul class="pagination justify-content-end font-weight-semi-bold mb-0">
							
								<c:if test="${!buyOrderList.firstPage}">
									<li class="page-item">				
									<a href='<c:url value="/user/viewBuyerOrderList2.do">
            						<c:param name="page" value="previous"/></c:url>' id="datatablePaginationPrev"
										class="page-link"><i class="gd-angle-left icon-text icon-text-xs d-inline-block"></i></a>
									</li>
								</c:if>
								<c:if test="${!buyOrderList.lastPage}">
									<li class="page-item">
									<a href='<c:url value="/user/viewBuyerOrderList2.do"> <c:param name="page" value="next"/></c:url>'
									id="datatablePaginationNext" class="page-link">
										<i class="gd-angle-right icon-text icon-text-xs d-inline-block"></i></a>
										</li>
								</c:if>
							</ul>
						</nav>
					</div>
				</div>
				<!-- End Orders -->
			</div>
		</div>


	</div>
	<%@ include file="IncludeMypageFooter.jsp"%>